#!/bin/bash

sudo apt-get update -qq -y
sudo apt-get install lcov -y

flutter config --no-analytics
flutter pub global activate melos