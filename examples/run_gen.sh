python run_generation.py \
	 --model_type openai-gpt \
	 --model_name_or_path $1 \
	 --ques_file $2 --output_file $3 --temperature 0 \
	 --stop_token "<eos>"
