## -*- coding: utf-8 -*-
<%inherit file="base.tmpl" />
<%namespace name="of" file="of_helpers.tmpl"/>
<%!
import re
NIGHTLY_URL = "https://github.com/openframeworks/openFrameworks/releases/tag/nightly"

def new_package_names(version):
    return tuple(int(x) for x in re.findall(r"\d+", version)[:3]) >= (0, 12, 2)
%>

<%def name="package_link(label, variant, extension='zip', legacy=None)">
% if new_package_names(currentVersion):
<p><a href="https://github.com/openframeworks/openFrameworks/releases/download/${currentVersion}/of_v${currentVersion}_${variant}_release.${extension}">${label}</a></p>
% elif legacy:
<p><a href="https://github.com/openframeworks/openFrameworks/releases/download/${currentVersion}/of_v${currentVersion}_${legacy}_release.${extension}">${label}</a></p>
% else:
<p><a href="${NIGHTLY_URL}" data-nightly-variant="${variant}_release.${extension}">${label} (nightly)</a></p>
% endif
</%def>

<%block name="extra_head">
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.cycle/3.03/jquery.cycle.all.min.js"></script>
<script type="text/javascript" src="/assets/js/donations_popup.js"></script>
<script src="/assets/js/nightly_downloads.js" defer></script>
<script type="text/javascript">
$(document).ready(function(){
    $('#myslides').cycle({speed: 1100, timeout: 2000});
    setupDonationsPopup();
});
</script>
</%block>

<%block name="content">
<div id="body-wrap">
<div class="page-left-verywide">
    <hr/>
    <div id="download-latest-header">
        <h2>${currentVersion}</h2>
        % if breaking:
        <h3>${of.msg("breaking", locals())} ${of.msg("please_see", locals())}</h3>
        % else:
        <h3>${of.msg("non_breaking", locals())} ${of.msg("please_see", locals())}</h3>
        % endif
        <p>${of.msg("intro", locals())}</p>
        <p class="download-nightly">${of.msg("nightly_downloads", locals())}</p>
        <p><a href="../download/older/">All releases, including 0.12.2-RC1 (BETA)</a> · <a href="../setup/cmake/">CMake setup guides</a></p>
    </div>

    <section class="download-platform-group" id="windows">
        <h2>Windows</h2>
        <div class="download-platform-grid">
            <div class="download-platform">
                <h3>Visual Studio 2026 (default)</h3>
                ${package_link("Visual Studio 64bit", "vs_2026_64")}
                ${package_link("Visual Studio x64 / ARM64 / ARM64EC", "vs_2026_64_arm64_arm64ec")}
                <p><a href="../setup/vs/">Visual Studio setup</a></p>
            </div>
            <div class="download-platform">
                <h3>Visual Studio 2022</h3>
                ${package_link("Visual Studio 64bit", "vs_2022_64", legacy="vs_64")}
                ${package_link("Visual Studio x64 / ARM64 / ARM64EC", "vs_2022_64_arm64_arm64ec")}
                <p><a href="../setup/vs/">Visual Studio setup</a></p>
            </div>
            <div class="download-platform">
                <h3>Visual Studio 2019</h3>
                ${package_link("Visual Studio 64bit (v142)", "vs_2019_64")}
                <p><a href="../setup/vs/">Visual Studio setup</a></p>
            </div>
            <div class="download-platform">
                <h3>MSYS2</h3>
                ${package_link("UCRT64", "msys2_ucrt64", legacy="msys2_ucrt64")}
                ${package_link("CLANG64", "msys2_clang64", legacy="msys2_clang64")}
                ${package_link("CLANGARM64", "msys2_clangarm64")}
                % if not new_package_names(currentVersion):
                ${package_link("MINGW64 (0.12.1)", "msys2_mingw64", legacy="msys2_mingw64")}
                % endif
                <p><a href="../setup/msys2/">MSYS2 setup</a></p>
            </div>
        </div>
        <p class="download-target-note">0.12.1's Visual Studio package uses VS 2022. VS 2026, VS 2019 and Windows-on-Arm variants are available in current nightly builds and the 0.12.2 package layout.</p>
    </section>

    <section class="download-platform-group" id="apple">
        <h2>Apple platforms</h2>
        <div class="download-platform-grid">
            <div class="download-platform">
                <h3>macOS (osx)</h3>
                ${package_link("macOS / Xcode", "osx", "tar.gz", "osx")}
                <p><a href="../setup/xcode/">Xcode setup</a></p>
                <p><a href="../setup/cmake/#macos">CMake</a></p>
            </div>
            <div class="download-platform">
                <h3>iOS</h3>
                ${package_link("iOS / Xcode", "ios", "tar.gz", "ios")}
                <p><a href="../setup/iphone/">iOS setup</a></p>
            </div>
            <div class="download-platform">
                <h3>tvOS</h3>
                <p><a href="../setup/iphone/#project-generator-cmake">tvOS source setup</a></p>
                <p><a href="../setup/cmake/#apple-mobile-platforms">tvOS / CMake</a></p>
            </div>
            <div class="download-platform">
                <h3>Mac Catalyst (catOS)</h3>
                <p><a href="../setup/iphone/#mac-catalyst">Mac Catalyst source setup</a></p>
            </div>
        </div>
        <p class="download-target-note">The published archives are macOS (osx) and iOS. tvOS and Mac Catalyst link to source setup; no separate archive is currently published for those targets.</p>
    </section>

    <section class="download-platform-group" id="linux">
        <h2>Linux</h2>
        <div class="download-platform-grid download-platform-grid-2">
            <div class="download-platform">
                <h3>Linux 64bit</h3>
                ${package_link("Intel / AMD x64", "linux_64_gcc10", "tar.gz", "linux64_gcc6")}
            </div>
            <div class="download-platform">
                <h3>Linux ARM64</h3>
                ${package_link("Desktop ARM64", "linux_arm64_gcc10", "tar.gz")}
            </div>
        </div>
        <p><a href="../setup/linux-install/">Linux install</a> · <a href="../setup/cmake/#linux-and-raspberry-pi">CMake</a> · <a href="../setup/vscode/">VS Code</a></p>
    </section>

    <section class="download-platform-group" id="raspberry-pi">
        <h2>Linux Raspberry Pi</h2>
        <div class="download-platform-grid download-platform-grid-3">
            <div class="download-platform">
                <h3>ARMv7 (32bit)</h3>
                ${package_link("Raspberry Pi ARMv7", "linux_armv7l_rpi_gcc10", "tar.gz")}
            </div>
            <div class="download-platform">
                <h3>ARMv6 (32bit)</h3>
                ${package_link("Raspberry Pi ARMv6", "linux_armv6l_rpi_gcc10", "tar.gz", "linuxarmv6l")}
            </div>
            <div class="download-platform">
                <h3>aarch64 (64bit)</h3>
                ${package_link("Raspberry Pi aarch64", "linux_aarch64_rpi_gcc10", "tar.gz", "linuxaarch64")}
            </div>
        </div>
        <p><a href="../setup/raspberrypi/">Raspberry Pi setup</a> · <a href="../setup/cmake/#linux-and-raspberry-pi">CMake</a></p>
    </section>

    <section class="download-platform-group" id="android">
        <h2>Android</h2>
        ${package_link("Android package (Windows host)", "android_windows", legacy="android_windows")}
        <p><a href="../setup/android-studio/">Android Studio setup / NDK 29</a> · <a href="https://developer.android.com/studio">Latest Android Studio</a></p>
        <p class="download-target-note">For another host, use a matching source checkout and download the Android libraries as described in the setup guide.</p>
    </section>

    <p>Browse the <a href="https://github.com/openframeworks/openFrameworks/releases/tag/${currentVersion}">${currentVersion} release files</a>, <a href="${NIGHTLY_URL}">nightly builds</a>, or <a href="../download/older/">older releases and beta releases</a>.</p>
    ${of.msg("instructions", locals())}
    <br/><br/>
    <div id="myslides">
        <img src="/download/0071_0.png" />
        <img src="/download/0071_1.png" />
        <img src="/download/0071_2.png" />
        <img src="/download/0071_3.png" />
    </div>
    <hr/>
    ${of.msg("other_releases", locals())}
</div>
</div>
</%block>
