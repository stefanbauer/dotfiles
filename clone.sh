#!/bin/sh

# Create a Sites directory
mkdir $HOME/Sites

echo "Cloning repositories..."

SITES=$HOME/Sites
PERSONAL=$SITES/personal

git clone git@github.com:stefanbauer/bauer-lohnunternehmen.de.git $PERSONAL/bauer-lohnunternehmen
git clone git@github.com:stefanbauer/biohof-drexler.de.git $PERSONAL/biohof-drexler
git clone git@github.com:stefanbauer/ffw-berglern.de.git $PERSONAL/ffw-berglern
git clone git@github.com:stefanbauer/ffw-berglern.de.git $PERSONAL/ffw-berglern
git clone git@github.com:stefanbauer/landlord-extended.git $PERSONAL/landlord-extended
git clone git@github.com:stefanbauer/landtamic.git $PERSONAL/landtamic
git clone git@github.com:stefanbauer/laravel-favicon-extractor.git $PERSONAL/laravel-favicon-extractor
git clone git@github.com:laravelsecrets/laravelsecrets-book.git $PERSONAL/laravelsecrets-book
git clone git@github.com:laravelsecrets/laravelsecrets.com.git $PERSONAL/laravelsecrets
git clone git@github.com:pingping-io/pingping.git $PERSONAL/pingping
git clone git@github.com:artisanshq/pingping.io.git $PERSONAL/pingping-legacy
git clone git@github.com:artisanshq/stefanbauer.com.git $PERSONAL/stefanbauer
git clone git@github.com:artisanshq/stefanbauer.me.git $PERSONAL/stefanbauer-legacy
git clone git@github.com:artisanshq/zimmerei-ernstl-landtamic.git $PERSONAL/zimmerei-ernstl-landtamic
git clone git@github.com:artisanshq/zimmerei-ernstl.de.git $PERSONAL/zimmerei-ernstl
