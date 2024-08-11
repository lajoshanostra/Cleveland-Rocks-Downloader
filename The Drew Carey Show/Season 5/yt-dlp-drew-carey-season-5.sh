#!/bin/bash

# Plex Token can be found using the instructions at https://support.plex.tv/articles/204059436-finding-an-authentication-token-x-plex-token/
plexToken="enter-your-token-here"

# List of URLs
urls=(
"https://vod.provider.plex.tv/library/parts/66b229ef4849cdfbf42aba65-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b229d74849cdfbf4256372-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b229e54849cdfbf4288d5e-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b229fb4849cdfbf42da21c-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b22a2e4849cdfbf438ff0d-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b229ff4849cdfbf42e92fe-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b22a474849cdfbf43eb212-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b22a424849cdfbf43d8b2f-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b22a814849cdfbf44bcc96-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b22a5a4849cdfbf4435753-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b22a664849cdfbf4461108-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b22a8c4849cdfbf44e6f0a-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b22a9f4849cdfbf4533273-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b22ade4849cdfbf462501c-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b22acd4849cdfbf45e57b4-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b22ad84849cdfbf4611c3d-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b22afe4849cdfbf46993ed-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b22b1f4849cdfbf470d56a-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b22b2d4849cdfbf4743d0c-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b22b504849cdfbf47c3683-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b22b664849cdfbf4816f29-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b22b854849cdfbf4892c9f-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b22bb84849cdfbf4950db5-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b22bd34849cdfbf49b4a6e-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b22bd94849cdfbf49c9f45-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"

)

# Starting episode number
episodeNumber=1

# Loop over URLs and download each one with yt-dlp
for url in "${urls[@]}"; do
    outputFileName=$(printf "The Drew Carey Show - S05E%02d.mp4" "$episodeNumber")
    yt-dlp -f bestvideo+bestaudio "$url" -o "$outputFileName"
    
    # Increment episode number
    ((episodeNumber++))
done

exit 0
