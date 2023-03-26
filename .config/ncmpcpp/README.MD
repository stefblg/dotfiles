# ncmpcpp configuration
---
## tcp acess

mpd_host = "192.168.0.26"

mpd_port = "6600"

mpd_music_dir = "/home/stefblg/Music/mpdmedia/music/"

mpd_connection_timeout = "15"



visualizer_fifo_path = "/tmp/mpd.fifo"
visualizer_output_name = "my_fifo"
visualizer_in_stereo = "yes"

>    visualizer_type - spectrum/ellipse/wave_filled/wave
```
visualizer_type = "wave" (spectrum/wave)
visualizer_look = "+|"
```

execute_on_song_change = notify-send "$(mpc --format '%title% \n%artist% - %album%' current)" "Now Playing" 