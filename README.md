# Fitocracy Scraper
A tool to grab data from fitocracy and dump it into a postgresql database.

## Setup
- Install Ruby (last tested against MRI 2.5.1)
- Install bundler `gem install bundler`
- Install chromedriver (on mac, with homebrew you can use `brew cask install chromedriver`)
- Then from the package, in the terminal type `bundle`
- If you want to run the script without prefacing with `ruby` then `chmod a+x fitocracy-scraper`


## Usage
Simply run: `[ruby |./]fitocracy-scraper -u username -p password`. Optionally you can provider `-d database_name` to override the default one of "fitocracy_dump". You can use --help for details.
