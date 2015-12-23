DESCRIPTION = "Audio features for freenivi."
LICENSE = " "

inherit packagegroup

PROVIDES = "${PACKAGES}"
PACKAGES = " \
	packagegroup-freenivi-audio-base \
	packagegroup-freenivi-alsa \
	packagegroup-freenivi-jack \
"

SUMMARY_packagegroup-freenivi-audio-base = ""
RDEPENDS_packagegroup-freenivi-audio-base = " \
	libcdaudio \
	audiofile \
	mpd \
	portaudio-v19 \
	speex \
	lame \
	taglib \
"

SUMMARY_packagegroup-freenivi-alsa = "Advance Linux Sound Architecture"
RDEPENDS_packagegroup-freenivi-alsa = " \
	alsa-utils \
	alsa-utils-scripts \
	alsa-state \
	alsa-plugins \
	alsa-lib \
"

SUMMARY_packagegroup-freenivi-jack = ""
RDEPENDS_packagegroup-freenivi-jack = " \
	jack-utils \
	jack-server \
"
