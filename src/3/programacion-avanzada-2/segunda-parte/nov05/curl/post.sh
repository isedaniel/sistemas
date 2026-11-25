#!/bin/sh

echo "Post 1"

curl -X POST \
-H "Content-Type: application/json" \
-d "{ \"titulo\":\"Pasear la tortuga\", \"descripcion\":\"Se escapo.\" }" \
http://localhost:5257/tareas

echo
echo "Post 2"

curl -X POST \
-H "Content-Type: application/json" \
-d "{ \"titulo\":\"Pasear\", \"descripcion\":\"Pero al rrope.\" }" \
http://localhost:5257/tareas

echo
echo "Post 3"

curl -X POST \
-H "Content-Type: application/json" \
-d "{ \"titulo\":\"Pasear\", \"descripcion\":\"Al toga.\" }" \
http://localhost:5257/tareas

echo
