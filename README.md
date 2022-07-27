# My Video Converter

A simple cli tool written in shell to convert and trim video and audio files using ffmpeg.

## Table of Contents

<details>

<summary>Contents</summary>

- [Getting Started](#getting-started)
  - [Introduction](#introduction)
- [Usage](#usage)
  - [Convert Example](#convert-example)
  - [Trim Example](#trim-example)
- [Known Issues](#known-issues)

</details>

## Getting Started

### Prerequisites
1. Bash
2. FFmpeg must be installed

### Installation

1. Clone the repository to a local folder:

```sh
git clone https://github.com/SherpadNdabambi/my-video-converter.git
```

2. cd into the locally created folder:

```sh
cd my-video-converter
```

3. Run the installation script:

```sh
./install.sh
```

## Usage

My Video Converter currently supports two operations: convert and trim.

To convert from one format to another:

```sh
myVideoConverter convert [ source file ] [output file ]
```

To trim a file:

```sh
myVideoConverter trim [ source file ] [ start time ] [ stop time ]
```

### Convert Example

#### Example 1: Convert Video to Audio

The following command will convert an MP4 video to an mp3 file:

```sh
myVideoConverter convert my_video.mp4 my_audio.mp3
```

### Trim Examples

#### Example 2: Trim a song from a specific time to the end of the song

This command will cut a song from the 4 second mark to the end of the song (i.e. it will trim off the first 4 seconds of the song).

```sh
myVideoConverter trim my_song.mp3 4
```

The output will be saved as my_song-trimmed.mp3 in the same directory as the source file.

#### Example 3: Trim a video from the start to a specific time

```sh
myVideoConverter trim my_video.mp4  0 1:24:32
```

#### Example 4: Trim a video from a specific time to a specific time

```sh
myVideoConverter trim my_video.mp4 0:16:32 1:27:45
```

## Known Issues

1. My Video Converter currently supports only input files without spaces in their name. I'll look for a solution as soon as I have more time to work on the script. Anyone with a solution is welcome to make a pull request or suggest a solution.
