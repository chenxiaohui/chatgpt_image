# ChatGPT Image Processor

A simple AppleScript utility that sends images to ChatGPT along with a preset prompt to analyze or transform images.

## Features

- Automatically opens ChatGPT application
- Copies image to clipboard and pastes it into ChatGPT
- Sends a predefined prompt for image conversion
- Works with JPEG format images

## Requirements

- macOS
- ChatGPT desktop application installed
- AppleScript support

## Usage

```bash
osascript chatgpt_image.scpt /path/to/your/image.jpg
```

The script will:
1. Open the ChatGPT application
2. Copy the specified image to clipboard
3. Paste the image into ChatGPT
4. Send a preset prompt asking to convert the image to look like a picture from "Castle in the Sky"
5. Display a notification when the request is sent

## Customization

Edit the script to change the preset prompt in line 26:

```applescript
keystroke "Please convert this image to looks like a picture in Castle in the Sky"
```

## License

MIT