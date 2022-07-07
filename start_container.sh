#!/bin/bash

echo What is your UUID?

read UUID

userID=$(whoami) uuid=$UUID docker-compose up -d