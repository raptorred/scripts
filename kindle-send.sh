#!/bin/bash
cd /home/raptorred/Downloads/Books
ebook-convert $(ls -c /home/raptorred/Downloads/Books/ | head -n 1) /tmp/send.mobi
calibredb add /tmp/send.mobi
calibre-smtp --attachment /tmp/send.mobi --relay smtp.gmail.com --port 587 --username raptorred.richard --password "Flanker27" --encryption-method TLS raptorred.richard@gmail.com raptorred.richard@kindle.com ""
rm /tmp/send.mobi
