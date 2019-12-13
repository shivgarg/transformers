python run_generation.py \
	 --model_type $1 \
	 --model_name_or_path $2 \
	 --ques_file $3 --output_file $4 --temperature 0 \
	 --stop_token "<eos>"

