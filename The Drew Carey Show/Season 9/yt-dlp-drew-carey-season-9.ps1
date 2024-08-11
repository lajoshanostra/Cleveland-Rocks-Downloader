# Plex Token can be found using the instructions at https://support.plex.tv/articles/204059436-finding-an-authentication-token-x-plex-token/
$plexToken = "enter-your-token-here" 

# List of URLs
$urls = @(
# There are 26 Episodes in Season 9
"https://vod.provider.plex.tv/library/parts/66b233584849cdfbf4544172-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b233824849cdfbf45d6ec6-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b233b74849cdfbf469ea45-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b5ec5e4849cdfbf43603fd-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b233454849cdfbf45060c5-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b233904849cdfbf460bf31-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b234884849cdfbf499e6cf-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b234074849cdfbf47c4b71-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b231be4849cdfbf4f8231a-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b5ec8f4849cdfbf43e3727-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b231b94849cdfbf4f71221-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b231dd4849cdfbf4ffa267-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b2312e4849cdfbf4d71f06-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b232454849cdfbf4173d74-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b232d24849cdfbf436d2fb-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b232414849cdfbf4164af0-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b232d44849cdfbf4373958-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b232df4849cdfbf4394c2c-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b232da4849cdfbf438438e-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b233104849cdfbf4448306-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b234344849cdfbf4873b64-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b233104849cdfbf4449494-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b233334849cdfbf44c7af9-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b234644849cdfbf49220d4-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b2346b4849cdfbf493c0fd-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b234384849cdfbf4884041-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
)

# Starting episode number
$episodeNumber = 1

# Loop over URLs and download each one with yt-dlp
foreach ($url in $urls) {
    $outputFileName = "The Drew Carey Show - S09E$([String]::Format("{0:D2}", $episodeNumber)).mp4"
    yt-dlp -f bestvideo+bestaudio "$url" -o "$outputFileName"
    
    # Increment episode number
    $episodeNumber++
}