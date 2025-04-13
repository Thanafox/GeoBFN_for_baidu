SHELL := /bin/bash

run:
	[[ -d dataset/custom ]] || (set -e; ([[ -e custom.tar.gz ]]|| ( gdown "https://drive.google.com/file/d/1eQFBmZFIRACtKkhy8gw9d1Kh-aMr_Lb6/view?usp=sharing" --fuzzy)); mkdir -p dataset; tar -xvf qm9.tar.gz -C dataset;)
	python geobfn_train.py --config_file configs/bfn4molgen.yaml --epochs 3000 --no_wandb
