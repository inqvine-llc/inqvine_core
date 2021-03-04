#!/bin/bash

sudo apt-get update -qq -y
sudo apt-get install lcov -y

flutter config --no-analytics
flutter pub global activate melos

echo "$HOME/.pub-cache/bin" >> $GITHUB_PATH
echo "/home/cirrus/sdks/flutter/bin/flutter/.pub-cache/bin" >> $GITHUB_PATH
echo "/home/cirrus/sdks/flutter/bin/flutter/bin/cache/dart-sdk/bin" >> $GITHUB_PATH