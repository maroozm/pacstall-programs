name="brave-browser-beta-deb"
gives="brave-browser-beta"
version="1.45.100"
breaks="${gives}-bin ${gives}-git ${gives}-app"
replace="${gives}"
url="https://github.com/brave/brave-browser/releases/download/v${version}/${gives}_${version}_amd64.deb"
description="Testing version of world's most unique, privacy friendly web browser"
hash="f9a28398f7c37e0c565e5cc2ee01f612251b4aa16d3b4453fbcab1fdcef404e3"
repology=("project: brave" "visiblename: brave-beta-bin")
maintainer="WRM-42 <y8bsbahy@anonaddy.me>"
