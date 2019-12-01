export TRAIN_FILE=train.jsonl
export TEST_FILE=valid.jsonl

python run_lm_finetuning.py \
            --output_dir=gpt_16ep_convai_small_batch_regularization_lowercase \
            --model_type=openai-gpt \
            --model_name_or_path=openai-gpt \
            --do_train \
            --evaluate_during_training \
            --train_data_file=$TRAIN_FILE \
            --do_eval \
            --eval_data_file=$TEST_FILE \
            --eval_all_checkpoints \
            --per_gpu_train_batch_size=2 \
            --gradient_accumulation_steps=4 \
            --per_gpu_eval_batch_size=2 \
            --warmup_steps=600 \
            --num_train_epochs=25 \
            --block_size=128 \
	    --do_lower_case \
