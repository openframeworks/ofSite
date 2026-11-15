(function () {
    var links = document.querySelectorAll("a[data-nightly-variant]");
    if (!links.length || !window.fetch) return;

    window.fetch("https://api.github.com/repos/openframeworks/openFrameworks/releases/tags/nightly")
        .then(function (response) {
            if (!response.ok) throw new Error("Nightly release unavailable");
            return response.json();
        })
        .then(function (release) {
            var assets = (release.assets || []).slice().sort(function (a, b) {
                return b.name.localeCompare(a.name);
            });
            Array.prototype.forEach.call(links, function (link) {
                var suffix = "_" + link.getAttribute("data-nightly-variant");
                var asset = assets.find(function (item) {
                    return /^of_v[0-9]{8}_/.test(item.name) && item.name.endsWith(suffix);
                });
                if (asset) link.href = asset.browser_download_url;
            });
        })
        .catch(function () {
            // Keep the nightly release page as the fallback.
        });
}());
