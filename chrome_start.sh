#!/bin/sh
#/ Usage: start.sh [desktop|android|iphone]
#/ Starts Google Chrome with different command line parameters
#  You can find a detailed documentation about command line switcher here
#/ http://peter.sh/experiments/chromium-command-line-switches/
set -e

test $# -eq 0 && {
    grep '^#/' <"$0" |
    cut -c4-
    exit 2
}

GOOGLE_CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"


case "$1" in
desktop)
  exec "$GOOGLE_CHROME" \
    --enable-udd-profiles \
    --user-data-dir="/Users/$USER/Library/Application Support/Google/Chrome/desktop" \
    --preload-instant-search \
    --show-fps-counter \
    --enable-accelerated-2d-canvas \
    --enable-smooth-scrolling
  ;;

android)
  exec "$GOOGLE_CHROME" \
    --enable-udd-profiles \
    --user-agent="Mozilla/5.0 (Linux; U; Android 2.2; en-us; Nexus One Build/FRF91) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1" \
    --user-data-dir="/Users/$USER/Library/Application Support/Google/Chrome/android_mobile"
  ;;

iphone)
  exec "$GOOGLE_CHROME" \
    --enable-udd-profiles \
    --user-agent="Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_1 like Mac OS X; en-us) AppleWebKit/532.9 (KHTML, like Gecko) Version/4.0.5 Mobile/8B117 Safari/6531.22.7" \
    --user-data-dir="/Users/$USER/Library/Application Support/Google/Chrome/iphone"
  ;;

ipad)
  exec "$GOOGLE_CHROME" \
    --enable-udd-profiles \
    --user-agent="Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B334b Safari/531.21.10" \
    --user-data-dir="/Users/$USER/Library/Application Support/Google/Chrome/ipad"
  ;;

ipad)
  exec "$GOOGLE_CHROME" \
    --enable-udd-profiles \
    --user-agent="Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B334b Safari/531.21.10" \
    --user-data-dir="/Users/$USER/Library/Application Support/Google/Chrome/ipad"
  ;;

ipod)
  exec "$GOOGLE_CHROME" \
    --enable-udd-profiles \
    --user-agent="Mozilla/5.0 (iPod; U; CPU iPhone OS 4_3_3 like Mac OS X; en-us) AppleWebKit/533.17.9 (KHTML, like Gecko) Version/5.0.2 Mobile/8J2 Safari/6533.18.5" \
    --user-data-dir="/Users/$USER/Library/Application Support/Google/Chrome/ipod"
  ;;

androidxoom)
  exec "$GOOGLE_CHROME" \
    --enable-udd-profiles \
    --user-agent="Mozilla/5.0 (Linux; U; Android 3.0; en-us; Xoom Build/HRI39) AppleWebKit/534.13 (KHTML, like Gecko) Version/4.0 Safari/534.13" \
    --user-data-dir="/Users/$USER/Library/Application Support/Google/Chrome/xoom"
  ;;

windowsphone)
  exec "$GOOGLE_CHROME" \
    --enable-udd-profiles \
    --user-agent="Mozilla/5.0 (compatible; MSIE 9.0; Windows Phone OS 7.5; Trident/5.0; IEMobile/9.0; DELL; Venue Pro)" \
    --user-data-dir="/Users/$USER/Library/Application Support/Google/Chrome/windowsphone"
  ;;

esac


