#!/bin/sh


rm -f /usr/home/admin/anablock.py /usr/home/admin/anablock27.py

# Verificar a versão do sistema operacional
if uname -a | grep -q "13."; then
    /usr/local/bin/curl -s -k -LJo /usr/home/admin/anablock.py https://github.com/goulartz/anablock_technodns/raw/main/anablock.py | /usr/local/bin/python3.8 /usr/home/admin/anablock.py
else
   /usr/local/bin/curl -s -k -LJo /usr/home/admin/anablock27.py https://github.com/goulartz/anablock_technodns/raw/main/anablock27.py | /usr/local/bin/python2.7 /usr/home/admin/anablock27.py
fi

