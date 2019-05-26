#!/usr/bin/env bash
python ../run_squad_capsule.py \
	  --bert_model ../../pretrained_models/uncased_L-24_H-1024_A-16 \
          --do_train\
          --do_predict \
          --do_lower_case \
	  --train_file ../../data/train-v2.0.json \
          --predict_file ../../data/dev-v2.0.json\
          --train_batch_size 12 \
          --learning_rate 3e-5 \
	  --num_train_epochs 3 \
          --max_seq_length 384 \
          --doc_stride 128 \
          --version_2_with_negative \
 	  --output_dir ../../output/log_eval \
          --gradient_accumulation_steps 12\
          --log_every_step 100 \
          --eveluate_every_step 3000\
	  --save_model_every_step 6000\
