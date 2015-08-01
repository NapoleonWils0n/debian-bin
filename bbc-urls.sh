#!/bin/bash

# get bbc radio urls for mpd
#===========================

set -e
playlist=/home/djwilcox/Music/bbc-radio/bbc-radio-url
rm -f $playlist
  
declare -A radios
radios["1"]="http://open.live.bbc.co.uk/mediaselector/5/select/mediaset/http-icy-aac-lc-a/vpid/bbc_radio_one/format/pls.pls"
radios["1x"]="http://open.live.bbc.co.uk/mediaselector/5/select/mediaset/http-icy-aac-lc-a/vpid/bbc_1xtra/format/pls.pls"
radios["2"]="http://open.live.bbc.co.uk/mediaselector/5/select/mediaset/http-icy-aac-lc-a/vpid/bbc_radio_two/format/pls.pls"
radios["3"]="http://open.live.bbc.co.uk/mediaselector/5/select/mediaset/http-icy-aac-lc-a/vpid/bbc_radio_three/format/pls.pls"
radios["4"]="http://open.live.bbc.co.uk/mediaselector/5/select/mediaset/http-icy-aac-lc-a/vpid/bbc_radio_fourfm/format/pls.pls"
radios["4x"]="http://open.live.bbc.co.uk/mediaselector/5/select/mediaset/http-icy-aac-lc-a/vpid/bbc_radio_four_extra/format/pls.pls"
radios["5l"]="http://open.live.bbc.co.uk/mediaselector/5/select/mediaset/http-icy-aac-lc-a/vpid/bbc_radio_five_live/format/pls.pls"
radios["5lx"]="http://open.live.bbc.co.uk/mediaselector/5/select/mediaset/http-icy-aac-lc-a/vpid/bbc_radio_five_live_sports_extra/format/pls.pls"
radios["6"]="http://open.live.bbc.co.uk/mediaselector/5/select/mediaset/http-icy-aac-lc-a/vpid/bbc_6music/format/pls.pls"
  
for k in "${!radios[@]}"
do
    pls=${radios[$k]}
    curl -s $pls | grep File1 | sed "s/File1=/$k, /" >> "$playlist"
done
