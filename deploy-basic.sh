#!/bin/bash

echo "user hiện tại"
whoami

echo "hostname"
hostname

echo "di chuyển thư mục vào dự án"
cd /root/hung-compose-app/E-COMMERCEWEBSITE-main

echo "build lại hệ thống"
docker compose up -d --build

echo "chạy lại Docker compose"
docker compose up -d

echo "trạng thái container"
docker compose ps

echo "log của app"
docker compose logs --tail=40 app
