FROM bluenviron/mediamtx:1.15.1-ffmpeg

# Install GStreamer runtime and common plugins on Alpine-based images
# Note: requires base image to support apk (Alpine or compatible)
RUN apk add --no-cache \
	gstreamer \
	gstreamer-tools \
	gst-plugins-base \
	gst-plugins-good \
	gst-plugins-bad \
	gst-plugins-ugly \
	gst-libav \
	gst-rtsp-server \
	fontconfig \
	ttf-dejavu

COPY ./mediamtx.yml .