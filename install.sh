#!/bin/bash

texdir=~/texmf/tex/latex/
dossiercibleinst=~/texmf/tex/latex/nrepport
echo $dossiercibleinst
if test -d $dossiercibleinst
then
	echo "Le dossier existe déjà"
	read -p "Voulez vous le suprimer ? (o/n) " repsuprdoss

	if test $repsuprdoss == "o"
	then
		rm -R $dossiercibleinst
	else
		exit 1
	fi
fi

mkdir $dossiercibleinst
if cp nrepport.cls $dossiercibleinst/
then
	echo "Instalation terminée."
fi
