#!/usr/bin/env python3
"""Reject loopback URLs in generated API reference links and search entries."""
from html.parser import HTMLParser
from pathlib import Path
import re
import sys
from urllib.parse import urlsplit


def is_loopback(url):
    return urlsplit(url.replace("\\/", "/")).hostname in {
        "localhost", "127.0.0.1", "0.0.0.0", "::1"
    }


class ReferenceLinks(HTMLParser):
    def __init__(self):
        super().__init__()
        self.invalid = []

    def handle_starttag(self, tag, attrs):
        for name, value in attrs:
            if name == "href" and value and is_loopback(value):
                self.invalid.append((self.getpos()[0], value))


def main():
    root = Path(sys.argv[1] if len(sys.argv) > 1 else "output")
    files = [p for p in root.rglob("*.html") if "documentation" in p.relative_to(root).parts]
    if not files:
        sys.exit("No generated API documentation found in " + str(root))
    errors = []
    for path in files:
        parser = ReferenceLinks()
        parser.feed(path.read_text(encoding="utf-8"))
        errors.extend("{}:{}: {}".format(path, line, url) for line, url in parser.invalid)
    search_files = list(root.rglob("tipuesearch_content.js"))
    for path in search_files:
        text = path.read_text(encoding="utf-8")
        for match in re.finditer(r'"url"\s*:\s*"((?:\\.|[^"\\])*)"', text):
            if is_loopback(match.group(1)):
                errors.append("{}: {}".format(path, match.group(1)))
    if errors:
        sys.exit("Loopback documentation URLs:\n" + "\n".join(errors))
    print("Checked {} API pages and {} search indexes: no loopback URLs".format(len(files), len(search_files)))


if __name__ == "__main__":
    main()
