### Description
These scripts use [yt-dlp](https://github.com/yt-dlp/yt-dlp) to download the recently released Drew Carey show episodes in order from Plex.tv. Each episode has their unique identifier, along with requirement of your Plex token, to download. 

Each script has an array with the links to each episode in order. Scripts are separated as 9 separate .ps1's so that legibility with the season link arrays are kept, alongside bandwidth concerns, error mitigation etc.

The script will then run in a for loop the command to download the episodes in best quality availble and output each file name incrementally as an .mp4. Some episodes are not available:
  - Season 4 - Episode 10
  - Season 7 - Episodes 1-3
  - Season 8 - Episode 17

The script will skip over these episodes accordingly.

### Pre-requisites

 - [yt-dlp](https://github.com/yt-dlp/yt-dlp) installed and set appropriately in your system PATH
 - Your Plex token. You can retrieve it using the following instructions: [Finding your Plex Authentication Token](https://support.plex.tv/articles/204059436-finding-an-authentication-token-x-plex-token/)
 - Once your Plex token is retrieve, please enter it in the `$plexToken` variable at the top of each script.

 ### Usage
 I have created a directory structure with how Plex would need for the show. Within each season sub-directory there is each season's download script. When the script is ran, episodes will be placed in that season's directory. 

 For example:

 ```
   - The Drew Carey Show
    - Season 1
      - yt-dlp-drew-carey-season-1.ps1
    - Season 2
      - yt-dlp-drew-carey-season-2.ps1
    - Season 3
      ...
 ```

 Once you have adjusted each script's token, open powershell, `cd` to that season's directory, and run the appropriate command to run the file. e.g. for Season 1:

 ``` powershell
 cd "your\path\to\The Drew Carey Show\Season 1"
 ./yt-dlp-drew-carey-season-1.ps1
 ```
