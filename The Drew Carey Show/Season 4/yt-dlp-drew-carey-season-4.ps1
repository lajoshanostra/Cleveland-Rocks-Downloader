# Plex Token can be found using the instructions at https://support.plex.tv/articles/204059436-finding-an-authentication-token-x-plex-token/
$plexToken = "enter-your-token-here" 

# List of URLs
$urls = @(
# There are 26 Episodes in Season 4
# Episode 10 is not available
"https://vod.provider.plex.tv/library/parts/66b223184849cdfbf4a30fb6-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b223624849cdfbf4b47d4d-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b2238d4849cdfbf4bebb51-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b223814849cdfbf4bbd3ba-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b223de4849cdfbf4d0cbb3-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b224034849cdfbf4d8b1f8-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b224064849cdfbf4d973da-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b224324849cdfbf4e3a59d-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b224524849cdfbf4eaa8cb-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
# Episode 10 not available, so no url here
"https://vod.provider.plex.tv/library/parts/66b226674849cdfbf4613a60-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b226c74849cdfbf4766053-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b226fe4849cdfbf482bef8-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b226f94849cdfbf4817969-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b227394849cdfbf48fa30c-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b227134849cdfbf487393d-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b227454849cdfbf4922ed3-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b227674849cdfbf49a0d8f-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b2277a4849cdfbf49e6d22-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b227b84849cdfbf4abea9a-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b227e24849cdfbf4b5993d-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b228394849cdfbf4c9159c-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken" 
"https://vod.provider.plex.tv/library/parts/66b2286f4849cdfbf4d49639-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b228974849cdfbf4de2df8-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"
"https://vod.provider.plex.tv/library/parts/66b229974849cdfbf41731b7-hls.m3u8?includeAllStreams=1&X-Plex-Product=Plex+Mediaverse&X-Plex-Token=$plexToken"

)

# Starting episode number
$episodeNumber = 1

# Loop over URLs and download each one with yt-dlp
foreach ($url in $urls) {
    $outputFileName = "The Drew Carey Show - S04E$([String]::Format("{0:D2}", $episodeNumber)).mp4"
    yt-dlp -f bestvideo+bestaudio "$url" -o "$outputFileName"
    
    # Increment episode number
    if ($episodeNumber -eq 9) {
        $episodeNumber += 2 # Skip Episode 10
    } else {
        $episodeNumber++
    }
}