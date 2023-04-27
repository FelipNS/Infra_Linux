#!/bin/bash

userdel -rf carlos
userdel -rf maria
userdel -rf joao
userdel -rf debora
userdel -rf sebastiana
userdel -rf roberto
userdel -rf josefina
userdel -rf amanda
userdel -rf rogerio

rm -r ./publico
rm -r ./ven
rm -r ./sec
rm -r ./adm

groupdel GRP_VEN
groupdel GRP_SEC
groupdel GRP_ADM
