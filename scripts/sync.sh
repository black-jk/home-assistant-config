#!/bin/bash


  cd '/cygdrive/d/Downloads/Home Assistant/config-git' || exit 1

  cp '//BlackJK-NAS1/Container/container-station-data/lib/docker/volumes/homeassistant-1_config/_data/'*.yaml ./

  for dir in blueprints custom_components packages
  do
    rsync -av --delete "//BlackJK-NAS1/Container/container-station-data/lib/docker/volumes/homeassistant-1_config/_data/${dir}/" "./${dir}/"
  done
