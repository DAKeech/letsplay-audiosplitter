@echo off

set InputVid=%1%
set DeskOut=%InputVid%-Desktop.aac
set VocalOut=%InputVid%-Vocal.aac


..\ffmpeg -i %InputVid% -map 0:a:0 -codec copy %DeskOut% -map 0:a:1 -codec copy %VocalOut%
