export PYTHONPATH=$HOME/workspaces/F2M-few
export PYTHONIOENCODING=utf-8
export CUDA_VISIBLE_DEVICES="$1"

if [ $2 == 'train' ]; then
    python train_topic.py -opt options/train/cifar/topic/FSIL_train_res18_cifar_CFRPModel_baseline_SGD.yml

elif [ $2 == 'test' ]; then
    python incremental_topic_procedure.py -opt options/train/cifar/topic/incremental_res18_cifar_baseline_5shots_SGD.yml

fi

