#!/bin/bash
# Steven Golovkine - MSc BigData Ensai 2017

# This script download, extract gas data from https://www.prix-carburants.gouv.fr/
# Then it load these database into the Hortonworks sandbox

# Download all the annual archives and put it into the ~/data folder

mkdir ~/data

wget https://donnees.roulez-eco.fr/opendata/annee/2007 -O ~/data/2007
wget https://donnees.roulez-eco.fr/opendata/annee/2008 -O ~/data/2008
wget https://donnees.roulez-eco.fr/opendata/annee/2009 -O ~/data/2009
wget https://donnees.roulez-eco.fr/opendata/annee/2010 -O ~/data/2010
wget https://donnees.roulez-eco.fr/opendata/annee/2011 -O ~/data/2011
wget https://donnees.roulez-eco.fr/opendata/annee/2012 -O ~/data/2012
wget https://donnees.roulez-eco.fr/opendata/annee/2013 -O ~/data/2013
wget https://donnees.roulez-eco.fr/opendata/annee/2014 -O ~/data/2014
wget https://donnees.roulez-eco.fr/opendata/annee/2015 -O ~/data/2015
wget https://donnees.roulez-eco.fr/opendata/annee/2016 -O ~/data/2016
wget https://donnees.roulez-eco.fr/opendata/annee -O ~/data/2017

ls ~/data/* | xargs -i unzip {} -d ~/data/ && rm ~/data/20*

chmod 777 ~/data/*

# Send the data between the localmachine and the sandbox
scp -P 2222 ~/data/* root@localhost:/

rm ~/data/*
rm -rf ~/data/