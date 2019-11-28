export TRAIN_FILE=gpt_train.txt
export TEST_FILE=gpt_dev.txt

python run_lm_finetuning.py \
            --output_dir=output_gpt_100ep_re \
            --model_type=openai-gpt \
            --model_name_or_path=openai-gpt \
            --do_train \
            --evaluate_during_training \
            --train_data_file=$TRAIN_FILE \
            --do_eval \
            --eval_data_file=$TEST_FILE \
            --save_steps=610 \
            --save_total_limit=1 \
            --per_gpu_train_batch_size=2 \
            --gradient_accumulation_steps=16 \
            --per_gpu_eval_batch_size=1 \
            --warmup_steps=600 \
            --num_train_epochs=103 \
            --block_size=128
