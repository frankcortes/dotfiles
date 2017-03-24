#!/usr/bin/env bash

# Inspired by ~/.osx — http://mths.be/osx

OSX=$(test "`uname`" == "Darwin" && echo "x")

if [[ OSX ]]; then
  # Ask for the administrator password upfront
  sudo -v

  # Keep-alive: update existing `sudo` time stamp until `.osx` has finished
  while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

  # Set language and text formats
  # Note: if you’re in the US, you may replace `EUR` with `USD`, `Centimeters`
  # with `Inches`, `en_GB` with `en_US`, and `true` with `false`.
  defaults write NSGlobalDomain AppleLanguages -array "en"
  defaults write NSGlobalDomain AppleLocale -string "en_US@currency=EUR"
  defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"
  defaults write NSGlobalDomain AppleMetricUnits -bool true
  echo "English i18n with metrical system [DONE]"

  # Save screenshots to ~/screenshots
  defaults write com.apple.screencapture location -string "${HOME}/screenshots"
  echo "screenshots will be redirected [DONE]"
else
    echo "Skipping ~/.osx evaluation..."
fi
