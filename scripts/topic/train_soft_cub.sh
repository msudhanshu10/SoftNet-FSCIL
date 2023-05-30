export PYTHONPATH=$HOME/workspaces/F2M-few
export PYTHONIOENCODING=utf-8
export CUDA_VISIBLE_DEVICES="$1"

if [ $2 == 'train' ]; then
    python train_topic_signet.py -opt options/train/cub/topic/FSIL_res18_CUB_softnet_SGD.yml

elif [ $2 == 'test' ]; then
    python incremental_topic_signet_procedure.py -opt options/train/cub/topic/incremental_res18_cub_softnet_SGD.yml

fi

