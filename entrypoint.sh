#!/bin/sh

# Check if  HEX_API_KEY has been set
if [[ -z "${HEX_API_KEY}" ]]; then
	echo "HEX_API_KEY is not set" && exit 1
fi

echo "------- Install hex -------"

mix local.hex --force
mix local.rebar --force
 
echo "------- Install deps and compile -------"

mix do deps.get, deps.compile

echo "------- Build hex package -------"

mix hex.build

echo "------- Publishing hex package -------"

mix hex.publish --yes