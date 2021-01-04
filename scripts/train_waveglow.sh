mkdir -p output
CUDA_VISIBLE_DEVICES=$1 python -m multiproc train.py -m WaveGlow -o ./output/ -lr 1e-4 --epochs 11 --epochs-per-checkpoint 2 -bs 2 --segment-length  8000 --weight-decay 0 --grad-clip-thresh 3.4028234663852886e+38 --cudnn-enabled --cudnn-benchmark --log-file nvlog.json
