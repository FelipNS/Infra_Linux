#!/bin/zsh

mkdir /publico /adm /ven /sec

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

useradd carlos -c "Carlos" -m -s /bin/bash -p $(openssl passwd -6 123456)
useradd maria -c "Maria" -m -s /bin/bash -p $(openssl passwd -6 123456)
useradd joao -c "João" -m -s /bin/bash -p $(openssl passwd -6 123456)

useradd debora -c "Debora" -m -s /bin/bash -p $(openssl passwd -6 123456)
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(openssl passwd -6 123456)
useradd roberto -c "Roberto" -m -s /bin/bash -p $(openssl passwd -6 123456)

useradd josefina -c "Josefina" -m -s /bin/bash -p $(openssl passwd -6 123456)
useradd amanda -c "Amanda" -m -s /bin/bash -p $(openssl passwd -6 123456)
useradd rogerio -c "Rogerio" -m -s /bin/bash -p $(openssl passwd -6 123456)

groupmod -a -U carlos,maria,joao GRP_ADM
groupmod -a -U debora,sebastiana,roberto GRP_VEN
groupmod -a -U josefina,amanda,rogerio GRP_SEC

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

chgrp GRP_ADM /adm
chgrp GRP_VEN /ven
chgrp GRP_SEC /sec




