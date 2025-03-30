scripts# nano iacl.sh
#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd oscar -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd luisa -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd mateus -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM 

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -GRP_VEN
useradd guilherme -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd carolina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd elenice -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd mariana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd patricia -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Espcificando permissões dos diretórios..."
	
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim....."
