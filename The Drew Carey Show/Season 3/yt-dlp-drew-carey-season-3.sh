#!/bin/bash

# Plex Token can be found using the instructions at https://support.plex.tv/articles/204059436-finding-an-authentication-token-x-plex-token/
plexToken="enter-your-token-here"

# List of URLs
urls=(
# There are 28 Episodes in Season 3
"https://vod.provider.plex.tv/library/parts/66b21f2f4849cdfbf4b95ea1-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b21f6f4849cdfbf4c8907b-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b21f7d4849cdfbf4cc1163-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b21f9f4849cdfbf4d3a6c0-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b21fc34849cdfbf4dc7232-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b21fec4849cdfbf4e6c324-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b220094849cdfbf4edcea7-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b2202e4849cdfbf4f670bf-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b2205d4849cdfbf402177a-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b220764849cdfbf4080f1a-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b220cf4849cdfbf41ce842-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b220bd4849cdfbf418c3ac-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b220fc4849cdfbf427463d-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b2211d4849cdfbf42eec8c-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b2213f4849cdfbf436f6d8-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b221974849cdfbf44b2708-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b221a44849cdfbf44e4949-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b221bc4849cdfbf45389fc-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b221e34849cdfbf45c8651-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b222064849cdfbf4646f09-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b2220d4849cdfbf46654af-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b222254849cdfbf46becdf-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b222784849cdfbf47ed0e4-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b222794849cdfbf47f104d-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b222af4849cdfbf48b9892-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b222c44849cdfbf490982f-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b222e44849cdfbf497ce2a-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b223024849cdfbf49e56ff-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
)

# Starting episode number
episodeNumber=1

# Loop over URLs and download each one with yt-dlp
for url in "${urls[@]}"; do
    outputFileName=$(printf "The Drew Carey Show - S03E%02d.mp4" "$episodeNumber")
    yt-dlp -f bestvideo+bestaudio "$url" -o "$outputFileName"
    
    # Increment episode number
    ((episodeNumber++))
done

exit 0
