#!/bin/bash
# Steven Golovkine - MSc BigData Ensai 2017

# This script download, extract gas daily ata from https://www.prix-carburants.gouv.fr/
# Then it load these database into the Hortonworks sandbox

# Download all the daily archives and put it into the ~/data folder

mkdir ~/data

wget https://donnees.roulez-eco.fr/opendata/jour -O ~/data/daily

ls ~/data/* | xargs -i unzip {} -d ~/data/ && rm ~/data/daily

mv ~/data/PrixCarburants* ~/data/daily.xml

chmod 777 ~/data/*

# Send the data between the localmachine and the sandbox
scp -P 2222 ~/data/* root@localhost:/

rm ~/data/*
rm -rf ~/data
