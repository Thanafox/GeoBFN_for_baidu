SHELL := /bin/bash

run:
	[[ -d dataset/custom ]] || (set -e; ([[ -e cus.tar.gz ]]|| ( gdown "https://drive.google.com/file/d/1n5HCY6WuAy-i8A3IGd3G4VnoL_E8bYND/view?usp=sharing" --fuzzy)); mkdir -p dataset; tar -xvf qm9.tar.gz -C dataset;)
	python geobfn_train.py --config_file configs/bfn4molgen.yaml --epochs 3000 --no_wandb
