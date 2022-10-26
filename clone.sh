#!/bin/sh

echo "Cloning repositories..."

SITES=$HOME/Sites
PERSONAL=$SITES/personal
DAYJOB=$SITES/hospitable

# Personal
git clone git@github.com:stefanbauer/stefanbauer.me.git $PERSONAL/stefanbauer.me
git clone git@github.com:stefanbauer/laravel-favicon-extractor.git $PERSONAL/laravel-favicon-extractor
git clone git@github.com:stefanbauer/landlord-extended.git $PERSONAL/landlord-extended

git clone git@github.com:pingping-io/pingping.git $PERSONAL/pingping
git clone git@github.com:artisanshq/pingping.io.git $PERSONAL/pingping-legacy

git clone git@github.com:laravelsecrets/laravelsecrets.com.git $PERSONAL/laravelsecrets.com
git clone git@github.com:laravelsecrets/laravelsecrets-book.git $PERSONAL/laravelsecrets-book

# Frischepost
declare -a REPOSITORIES=(
    "airbnb"
    "auth-service"
    "booking-service"
    "booking-serive-frontend"
    "calendar-service"
    "frontend"
    "helm-charts"
    "hospitabot"
    "infrastructure"
    "ios"
    "libretranslate-service"
    "messaging-service"
    "metrics"
    "site-service"
    "smartbnb"
    "smartlocks"
    "toolbox"
)

for REPOSITORY in "${REPOSITORIES[@]}"
do
    git clone git@gitlab.com:smartbnb/${REPOSITORY}.git $DAYJOB/${REPOSITORY}
done
