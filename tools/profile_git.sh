#!/bin/bash

if [ -f .env ]; then
	source .env
fi

if [ "$1" = "1" ]; then
	git config user.name "$NAME_42"
	git config user.email "$MAIL_42"
	echo "profile 42 setup"
fi

if [ "$1" = "2" ]; then
	git config user.name "$NAME_GITHUB"
	git config user.email "$MAIL_GITHUB"
	echo "profile github setup"
fi

if [ "$1" = "" ]; then
	echo "1 is for intra 42"
	echo "2 is for github"
fi
