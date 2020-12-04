# Plex Chromecast fix

Some MKV files, when played on a Chromecast, enable a mode "Surround sound enabled. To adjust volume, please us TV's remote control". This repo fixes this problem, based on [this post on Plex's forum](https://forums.plex.tv/t/volume-control-via-android-device-when-casting-to-chromecast/163839/52).

## Running on Linux

```sh
patch /usr/lib/plexmediaserver/Resources/Profiles/Chromecast.xml Chromecast.patch
```

## Running on other platforms

* Stop the Plex server.
* Find the Plex Media Server root path. Edit the `Resources/Profiles/Chromecast.xml` file as described in the previous forum thread.
* Restart the Plex server.


## Docker

Here is a `Dockerfile` based on `linuxserver/plex` image that changes the file appropriately. You can change your docker-compose `image: ghcr.io/linuxserver/plex` field to `build: plex` and create a `plex` directory containing the aforementioned `Dockerfile`.

### Updating plex

Run the following to update the plex base image:

``` shell
docker-compose build --pull
docker-compose up -d
```
