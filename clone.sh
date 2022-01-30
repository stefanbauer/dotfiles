#!/bin/sh

echo "Cloning repositories..."

SITES=$HOME/Sites
DAYJOB=$SITES/frischepost

# Personal
git clone git@github.com:stefanbauer/stefanbauer.me.git $SITES/stefanbauer.me
git clone git@github.com:stefanbauer/laravel-favicon-extractor.git $SITES/laravel-favicon-extractor
git clone git@github.com:stefanbauer/landlord-extended.git $SITES/landlord-extended

git clone git@github.com:artisanshq/pingping.git $SITES/pingping
git clone git@github.com:artisanshq/pingping.io.git $SITES/pingping.io

git clone git@github.com:laravelsecrets/laravelsecrets.com.git $SITES/laravelsecrets.com
git clone git@github.com:laravelsecrets/laravelsecrets-book.git $SITES/laravelsecrets-book

# Frischepost
declare -a REPOSITORIES=(
    "activity-log"
    "api-connector"
    "auth"
    "berlin-landingpage"
    "backupper"
    "deposit"
    "dispatch"
    "dispatch-connector"
    "dto"
    "faker-provider"
    "fridge"
    "frischefy"
    "frischepost-connector"
    "hq-landingpage"
    "koeln-landingpage"
    "muenchen-landingpage"
    "pim"
    "pim-connector"
    "reporting"
    "shop"
    "shopware-connector"
    "sync-management"
    "warehouse-connector"
    "warehousing"
)

for REPOSITORY in "${REPOSITORIES[@]}"
do
    git clone git@gitlab.frischepost.dev:frischepost/${REPOSITORY}.git $DAYJOB/${REPOSITORY}
done
