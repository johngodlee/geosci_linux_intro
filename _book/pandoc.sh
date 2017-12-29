#!/bin/bash

pandoc -f markdown -t html -i geosci_linux_intro.md --css=github.css -o geosci_linux_intro.html

