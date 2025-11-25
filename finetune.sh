SEED=927
# SEED=42
REPLACE_RATE=0.1

CUDA_VISIBLE_DEVICES=3 python -m MCCWS.script.finetune \
    --batch_size 32 \
    --dropout 0.1 \
    --lr 2e-5 \
    --smooth_factor 0.1 \
    --replace_rate $REPLACE_RATE \
    --epoch 10 \
    --seed $SEED \
    --model_name ./bert-base-chinese \
    --exp_name testing_ALL \
    --trainset_token "[ALL]" \
    --accumulation_step 2 \
    --start_log 280000 \
    --save_step 1000 \
    --gpu 0
