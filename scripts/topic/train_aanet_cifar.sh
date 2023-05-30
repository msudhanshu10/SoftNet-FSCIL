export PYTHONPATH=$HOME/workspaces/F2M-few
export PYTHONIOENCODING=utf-8
export CUDA_VISIBLE_DEVICES="$1"

if [ $2 == 'train' ]; then
    python train_topic_aanet.py -opt options/train/cifar/topic/FSIL_train_res18_cifar_CFRPModel_signet_SGD.yml

elif [ $2 == 'test' ]; then
    python incremental_topic_aanet_procedure.py -opt options/train/cifar/topic/incremental_res18_cifar_aanet_5shots_SGD.yml

fi

