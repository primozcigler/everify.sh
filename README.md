everify.sh
==========

Verify Envato Purchase codes like a boss - in a terminal.

![screenshot of everify.sh](https://raw.githubusercontent.com/primozcigler/everify.sh/master/everify.png)

### Setup

1. Download the file `everify.sh` to your computer.
1. Open it in your favorite text editor (vim?) and update the constants `USERNAME` and `APIKEY` to match your Envato username and API keys generated in dashboard.
1. Run `$ chmod +x everify.sh`
1. Run it in the terminal using `$ sh everify.sh`.

If you want you can move it to the `/usr/local/bin/` so you can run it from anywhere in the filesystem.

### Use

```sh
$ everify.sh # will prompt for the purchase code
```

or

```sh
$ everify.sh e4e91153-faf0-4483-8273-882ee0686787 # first argument is the purchase code
```

### Dependencies

* curl
* python (just for pretty json format, which can be disabled)

Tested on Ubuntu 13.10 and OS X Yosemite.  If you have a problem using this, please open up an issue in this repo.

### Created by

[Primoz Cigler](https://twitter.com/primozcigler) from [ProteusThemes](http://www.proteusthemes.com/).
