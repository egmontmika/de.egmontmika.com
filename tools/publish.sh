#!/bin/bash
if [ ! -d "public/.git" ]; then
	git clone --depth 1 --single-branch https://github.com/egmontmika/de.egmontmika.com -b gh-pages public
fi
rm -rf public/*
hugo
pushd public
git add -A
git commit -m "$1"
git push -f
popd
