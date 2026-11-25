#!/bin/sh

echo "Get id:12"

curl \
http://localhost:5257/tareas/12
echo
echo

echo "Get all"

curl \
http://localhost:5257/tareas
echo
echo
