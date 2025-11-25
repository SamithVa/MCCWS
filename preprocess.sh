# Our preprocess includes change a sequence of numbers to "0" and a sequence of alphabets to "a" while we are training.
# So we also need to do these preprocess for the test set.

# original_gold_path is the path of the test/train gold file.
# new_path is the path were you want to store the preprocessed file.

# cityu, msr, pku, as are four datasets in icwb2.
# AS dataset
echo "Preprocessing AS dataset..."
python3 -m MCCWS.script.preprocess \
    --original_gold_path ./icwb2-data/gold/as_testing_gold.utf8 \
    --new_path ./data/testset/as_test.txt

python3 -m MCCWS.script.preprocess \
    --original_gold_path ./icwb2-data/training/as_training.utf8 \
    --new_path ./data/trainset/as_train.txt

python3 -m MCCWS.script.train_valid_split \
    --split_dataset ./data/trainset/as_train.txt \
    --new_train_file_path ./data/trainset/as_train.txt \
    --new_valid_file_path ./data/trainset/as_valid.txt

# CITYU dataset
echo "Preprocessing CITYU dataset..."
python3 -m MCCWS.script.preprocess \
    --original_gold_path ./icwb2-data/gold/cityu_test_gold.utf8 \
    --new_path ./data/testset/cityu_test.txt

python3 -m MCCWS.script.preprocess \
    --original_gold_path ./icwb2-data/training/cityu_training.utf8 \
    --new_path ./data/trainset/cityu_train.txt

python3 -m MCCWS.script.train_valid_split \
    --split_dataset ./data/trainset/cityu_train.txt \
    --new_train_file_path ./data/trainset/cityu_train.txt \
    --new_valid_file_path ./data/trainset/cityu_valid.txt

# MSR dataset
echo "Preprocessing MSR dataset..."
python3 -m MCCWS.script.preprocess \
    --original_gold_path ./icwb2-data/gold/msr_test_gold.utf8 \
    --new_path ./data/testset/msr_test.txt

python3 -m MCCWS.script.preprocess \
    --original_gold_path ./icwb2-data/training/msr_training.utf8 \
    --new_path ./data/trainset/msr_train.txt

python3 -m MCCWS.script.train_valid_split \
    --split_dataset ./data/trainset/msr_train.txt \
    --new_train_file_path ./data/trainset/msr_train.txt \
    --new_valid_file_path ./data/trainset/msr_valid.txt

# PKU dataset
echo "Preprocessing PKU dataset..."
python3 -m MCCWS.script.preprocess \
    --original_gold_path ./icwb2-data/gold/pku_test_gold.utf8 \
    --new_path ./data/testset/pku_test.txt

python3 -m MCCWS.script.preprocess \
    --original_gold_path ./icwb2-data/training/pku_training.utf8 \
    --new_path ./data/trainset/pku_train.txt

python3 -m MCCWS.script.train_valid_split \
    --split_dataset ./data/trainset/pku_train.txt \
    --new_train_file_path ./data/trainset/pku_train.txt \
    --new_valid_file_path ./data/trainset/pku_valid.txt

# CNC, CTB6, SXU, UD, WTB, ZX datasets
echo "Preprocessing CNC dataset..."
python3 -m MCCWS.script.preprocess \
    --original_gold_path ./multi-criteria-cws/data/other/cnc/test.txt \
    --new_path ./data/testset/cnc_test.txt

python3 -m MCCWS.script.preprocess \
    --original_gold_path ./multi-criteria-cws/data/other/cnc/train.txt \
    --new_path ./data/trainset/cnc_train.txt

python3 -m MCCWS.script.train_valid_split \
    --split_dataset ./data/trainset/cnc_train.txt \
    --new_train_file_path ./data/trainset/cnc_train.txt \
    --new_valid_file_path ./data/trainset/cnc_valid.txt

echo "Preprocessing CTB6 dataset..."
python3 -m MCCWS.script.preprocess \
    --original_gold_path ./multi-criteria-cws/data/other/ctb/ctb6.test.seg \
    --new_path ./data/testset/ctb6_test.txt

python3 -m MCCWS.script.preprocess \
    --original_gold_path ./multi-criteria-cws/data/other/ctb/ctb6.train.seg \
    --new_path ./data/trainset/ctb6_train.txt

python3 -m MCCWS.script.train_valid_split \
    --split_dataset ./data/trainset/ctb6_train.txt \
    --new_train_file_path ./data/trainset/ctb6_train.txt \
    --new_valid_file_path ./data/trainset/ctb6_valid.txt

echo "Preprocessing SXU dataset..."
python3 -m MCCWS.script.preprocess \
    --original_gold_path ./multi-criteria-cws/data/other/sxu/test.txt \
    --new_path ./data/testset/sxu_test.txt

python3 -m MCCWS.script.preprocess \
    --original_gold_path ./multi-criteria-cws/data/other/sxu/train.txt \
    --new_path ./data/trainset/sxu_train.txt

python3 -m MCCWS.script.train_valid_split \
    --split_dataset ./data/trainset/sxu_train.txt \
    --new_train_file_path ./data/trainset/sxu_train.txt \
    --new_valid_file_path ./data/trainset/sxu_valid.txt

echo "Preprocessing UD dataset..."
python3 -m MCCWS.script.preprocess \
    --original_gold_path ./multi-criteria-cws/data/other/udc/test.conll \
    --new_path ./data/testset/ud_test.txt

python3 -m MCCWS.script.preprocess \
    --original_gold_path ./multi-criteria-cws/data/other/udc/train.conll \
    --new_path ./data/trainset/ud_train.txt

python3 -m MCCWS.script.train_valid_split \
    --split_dataset ./data/trainset/ud_train.txt \
    --new_train_file_path ./data/trainset/ud_train.txt \
    --new_valid_file_path ./data/trainset/ud_valid.txt

echo "Preprocessing WTB dataset..."
python3 -m MCCWS.script.preprocess \
    --original_gold_path ./multi-criteria-cws/data/other/wtb/test.conll \
    --new_path ./data/testset/wtb_test.txt

python3 -m MCCWS.script.preprocess \
    --original_gold_path ./multi-criteria-cws/data/other/wtb/train.conll \
    --new_path ./data/trainset/wtb_train.txt

python3 -m MCCWS.script.train_valid_split \
    --split_dataset ./data/trainset/wtb_train.txt \
    --new_train_file_path ./data/trainset/wtb_train.txt \
    --new_valid_file_path ./data/trainset/wtb_valid.txt

echo "Preprocessing ZX dataset..."
python3 -m MCCWS.script.preprocess \
    --original_gold_path ./multi-criteria-cws/data/other/zx/test.zhuxian.wordpos \
    --new_path ./data/testset/zx_test.txt

python3 -m MCCWS.script.preprocess \
    --original_gold_path ./multi-criteria-cws/data/other/zx/train.zhuxian.wordpos \
    --new_path ./data/trainset/zx_train.txt

python3 -m MCCWS.script.train_valid_split \
    --split_dataset ./data/trainset/zx_train.txt \
    --new_train_file_path ./data/trainset/zx_train.txt \
    --new_valid_file_path ./data/trainset/zx_valid.txt
