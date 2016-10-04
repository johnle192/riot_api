# This is my Riot API

This is a Sinatra app that requests player data from the [Riot Games API](https://developer.riotgames.com/).

### Clone this repo

```Bash
git clone git@github.com/johnle192/riot_api
```

### Install gems

```Bash
bundle install
```

### Run the app

You can run the app by running the following:
```Bash
puma -p 4567
```

To reload the app after changes, you can use the gem, [rerun](https://github.com/alexch/rerun):
```Bash
rerun 'puma -p 4567'
```
