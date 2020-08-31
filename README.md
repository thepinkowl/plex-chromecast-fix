# Plex Chromecast fix

Some MKV files, when played on a Chromecast, enable a mode "Surround sound enabled. To adjust volume, please us TV's remote control". This repo fixes this problem, based on [this post on Plex's forum](https://forums.plex.tv/t/volume-control-via-android-device-when-casting-to-chromecast/163839/52).

## Running on Linux

```sh
./fixChromecast.sh
```

## Running on other platforms

* Stop the Plex server.
* Find the Plex Media Server root path. Edit the `Resources/Profiles/Chromecast.xml` file as described in the previous forum thread.
* Restart the Plex server.
