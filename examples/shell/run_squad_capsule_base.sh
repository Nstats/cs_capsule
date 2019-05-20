#!/usr/bin/env bash
python ../run_squad_capsule.py \
	  --bert_model ../../pretrained_models/uncased_L-12_H-768_A-12 \
          --do_train\
          --do_predict \
          --do_lower_case \
	  --train_file ../../data/train-v2.0.json \
          --predict_file ../../data/dev-v2.0.json\
          --train_batch_size 24 \
          --learning_rate 0.05 \
	  --num_train_epochs 3 \
          --max_seq_length 300 \
          --doc_stride 128 \
          --version_2_with_negative \
 	  --output_dir ../../output/log_eval \
          --gradient_accumulation_steps 24\
          --log_every_step 100 \
          --eveluate_every_step 3000\
	  --save_model_every_step 6000\
	  --learning_rate 0.05

# nohup sh run_squad_capsule_base.sh > ../log/run_squad_capsule_base.log_cs 2>&1 &
# tail -f ../log/run_squad_capsule_base.log_cs