# homebrew-confluent-platform

[![Build Status](https://travis-ci.org/sgerrand/homebrew-confluent-platform.svg?branch=master)](https://travis-ci.org/sgerrand/homebrew-confluent-platform)

This formula installs the [open source edition of the Confluent
Platform](https://www.confluent.io/product/confluent-open-source/).

## Installation

Just `brew tap sgerrand/confluent-platform` and then `brew install
confluent-oss`.

If you have already installed the `kafka` formula, then you'll either need to
remove that formula or overwrite the links using `brew link --overwrite
confluent-oss`.

You can also install this package via URL:

    brew install https://raw.githubusercontent.com/sgerrand/homebrew-confluent-platform/master/confluent-oss.rb
