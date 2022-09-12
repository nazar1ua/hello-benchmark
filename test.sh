#!/bin/bash

start=$(date +%s%3N)
zig run 1.zig
end=$(date +%s%3N)
echo "Zig elapsed time: $(($end-$start)) miliseconds"

start=$(date +%s%3N)
go run 2.go
end=$(date +%s%3N)
echo "Go elapsed time: $(($end-$start)) miliseconds"

zig build-exe 1.zig
start=$(date +%s%3N)
./1
end=$(date +%s%3N)
echo "Zig compiled elapsed time: $(($end-$start)) miliseconds"

go build 2.go
start=$(date +%s%3N)
./2
end=$(date +%s%3N)
echo "Go compiled elapsed time: $(($end-$start)) miliseconds"

start=$(date +%s%3N)
echo "Hello, world!"
end=$(date +%s%3N)
echo "Bash elapsed time: $(($end-$start)) miliseconds"

start=$(date +%s%3N)
node 3.js
end=$(date +%s%3N)
echo "Node elapsed time: $(($end-$start)) miliseconds"

start=$(date +%s%3N)
python3 4.py
end=$(date +%s%3N)
echo "Python elapsed time: $(($end-$start)) miliseconds"

start=$(date +%s%3N)
php 5.php
end=$(date +%s%3N)
echo "PHP elapsed time: $(($end-$start)) miliseconds"

start=$(date +%s%3N)
ruby 6.rb
end=$(date +%s%3N)
echo "Ruby elapsed time: $(($end-$start)) miliseconds"
