#!/bin/bash

PATH=$PATH:/.gem/ruby/2.1.0/bin

cd /app
rackup config.ru
