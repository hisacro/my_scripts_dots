#!/bin/bash

sed '1,28d' ~/.mozilla/firefox/gpyo9vku.default/chrome/userChrome.css > tmp && cat  ~/.cache/wal/colors.css tmp > ~/.mozilla/firefox/gpyo9vku.default/chrome/userChrome.css && rm tmp && sed '1,28d' ~/.mozilla/firefox/gpyo9vku.default/chrome/userContent.css > tmp && cat  ~/.cache/wal/colors.css tmp > ~/.mozilla/firefox/gpyo9vku.default/chrome/userContent.css && rm tmp
