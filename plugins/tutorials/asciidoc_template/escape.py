import cgi

config = {
    'name': "Escape",
    'description': "HTML escapes text.",
    'aliases': ['escape']
    }


def run(content):
    return cgi.escape(content)
