python run_lm_finetuning.py \
            --output_dir=gpt2_cose_multi_options \
            --model_type=gpt2 \
            --model_name_or_path=gpt2 \
            --do_train \
            --evaluate_during_training \
            --train_data_file=$1 \
            --do_eval \
            --eval_data_file=$2 \
            --per_gpu_train_batch_size=2 \
            --gradient_accumulation_steps=4 \
            --per_gpu_eval_batch_size=1 \
            --warmup_steps=600 \
            --num_train_epochs=4 \
            --block_size=192 \
	    --do_lower_case \
            --overwrite_cache
