#!/bin/bash
#Script para criar o mapeamento

#Cria o diretorio /home/tux/mapeamento
mkdir /home/tux/mapeamento

##
## Colhendo informacoes do sistema
##

cp /etc/os-release /home/tux/mapeamento/ #distribuicao Sistema operacional.
free -h > /home/tux/mapeamento/memoria #Memoria RAM
df -h > /home/tux/mapeamento/disco #Espaco em disco livre.
ss -nltpu > /home/tux/mapeamento/portas #Portas/Servicos sendo executatos.

#Compactar todo o conteudo do diretorio mapeamento
tar -czf /home/tux/mapeamento.tar.gz /home/tux/mapeamento

#Removendo o diretorio de Origem
rm -rf /home/tux/mapeamento

#Trocando o dono do arquivo
chown tux /home/tux/mapeamento.tar.gz

