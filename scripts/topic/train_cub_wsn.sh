export PYTHONPATH=$HOME/workspaces/F2M-few
export PYTHONIOENCODING=utf-8
export CUDA_VISIBLE_DEVICES="$1"

if [ $2 == 'train' ]; then
    python train_cub_signet.py -opt options/train/cub/SoftNet/FSIL_train_res18_CUB_CFRPModel_WSN_baseline_split_SGD.yml

elif [ $2 == 'test' ]; then
    python incremental_subnet_procedure_cub.py -opt options/train/cub/SoftNet/incremental_res18_cub_WSN_Fusion_5shots_SGD_split.yml --epoch 7 --tau_idx 2 --met_w 0.7

fi

