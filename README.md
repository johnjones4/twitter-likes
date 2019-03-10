# twitter-likes

Download your twitter likes using https://gist.github.com/datagrok/74a71f572493e603919e

## prereqs

* Install python 3
* Update creds.py and run `make venv` to create the virtual env

## commands

`make fetch` downloads favs to favs.db and favs.ndjson  
`make dump` extract favs from favs.db to stdout
`make` to show all options

NB: because of the way the timestamps work, every now and then you'll probably want to re-download everything. See comments in [get_favs.py](get_favs.py)
