#!/bin/bash

# Plex Token can be found using the instructions at https://support.plex.tv/articles/204059436-finding-an-authentication-token-x-plex-token/
plexToken="enter-your-token-here"

# List of URLs
urls=(
# There are 25 Episodes in Season 8
# Episode 17 doesn't appear to be available "Gang takes part in a karaoke contest"
"https://vod.provider.plex.tv/library/parts/66b2171b4849cdfbf4f360d4-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b217324849cdfbf4f80351-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b217304849cdfbf4f776fb-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b2176b4849cdfbf402f6b5-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b217844849cdfbf407e19d-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b217994849cdfbf40c1eca-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b217cd4849cdfbf415cb3c-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b217b74849cdfbf411eac6-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b218274849cdfbf427af64-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b218c84849cdfbf44845d4-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b22fae4849cdfbf480ba2d-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b22fc84849cdfbf486a16d-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b22fae4849cdfbf480ba2f-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b22f8f4849cdfbf479bf3e-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b22f9f4849cdfbf47d789c-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b22fb24849cdfbf481aa4d-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
# Episode 17 is not available, so no url here.
"https://vod.provider.plex.tv/library/parts/66b22ffd4849cdfbf4928e1f-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b22fe44849cdfbf48d0a9d-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b22fc04849cdfbf484e29c-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b2302e4849cdfbf49daa37-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b230414849cdfbf4a20ed9-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b230434849cdfbf4a24f04-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b230554849cdfbf4a6604e-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b230914849cdfbf4b3fd65-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
)

# Starting episode number
episodeNumber=1

# Loop over URLs and download each one with yt-dlp
for url in "${urls[@]}"; do
    outputFileName=$(printf "The Drew Carey Show - S08E%02d.mp4" "$episodeNumber")
    yt-dlp -f bestvideo+bestaudio "$url" -o "$outputFileName"
    
    # Increment episode number with condition to skip Episode 10
    if [ "$episodeNumber" -eq 16 ]; then
        episodeNumber=$((episodeNumber + 2))
    else
        episodeNumber=$((episodeNumber + 1))
    fi
done

exit 0
