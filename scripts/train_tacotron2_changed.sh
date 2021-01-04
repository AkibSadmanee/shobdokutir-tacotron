mkdir -p output
CUDA_VISIBLE_DEVICES=$1  python   -m multiproc train.py -m Tacotron2 -o ./output/ -lr 1e-3 --epochs 16 -bs 8 --epochs-per-checkpoint 5  --weight-decay 1e-6 --grad-clip-thresh 1.0 --cudnn-enabled --log-file nvlog.json --anneal-steps 500 1000 1500 --anneal-factor 0.1
