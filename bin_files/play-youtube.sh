#!/usr/bin/env bash

URL="$1"
MODE="${2:-video}"

if [[ -z "$URL" ]]; then
  echo "Usage: $0 <YouTube URL> [audio|video]"
  exit 1
fi

command -v yt-dlp >/dev/null || {
  echo "yt-dlp missing"
  exit 1
}
command -v mpv >/dev/null || {
  echo "mpv missing"
  exit 1
}

if [[ "$MODE" == "audio" ]]; then
  mpv --no-video "$URL"
  exit 0
fi

# For video: get BOTH stream URLs
mapfile -t STREAMS < <(yt-dlp -f "bestvideo+bestaudio/best" -g "$URL")

if [[ "${#STREAMS[@]}" -eq 1 ]]; then
  mpv "${STREAMS[0]}"
elif [[ "${#STREAMS[@]}" -ge 2 ]]; then
  mpv "${STREAMS[0]}" --audio-file="${STREAMS[1]}"
else
  echo "Failed to retrieve streams"
  exit 1
fi
