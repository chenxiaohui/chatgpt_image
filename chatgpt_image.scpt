-- -*- coding: utf-8 -*-
-- AppleScript with UTF-8 support
-- License: MIT (or your preferred open source license)

use framework "Foundation" -- For advanced Unicode handling
use scripting additions

on run argv
    set imagePath to item 1 of argv
    
    tell application "ChatGPT"
        activate
        delay 1
    end tell
    
    tell application "System Events"
        -- Copy the image to clipboard first
        do shell script "osascript -e 'set the clipboard to (read (POSIX file \"" & imagePath & "\") as JPEG picture)'"
        delay 1
        
        -- Paste in ChatGPT
        keystroke "v" using command down
        delay 2
        
        -- Type the prompt
        keystroke "Please convert this image to looks like a picture in Castle in the Sky"
        delay 0.5
        keystroke return
        
        -- Display notification that the request was sent
        do shell script "osascript -e 'display notification \"Image conversion request sent\" with title \"ChatGPT\"'"
        
        -- Return immediately without waiting
        return "Image conversion request sent to ChatGPT"
    end tell
end run
