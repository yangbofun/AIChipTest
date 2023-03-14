
function slurm_run(){
    PART=$PART  # set your partition of slurm
    NGPUS=(1 2 4 8 16)
    WORK_DIR=models_perf
    for MODEL in ${MODELS[@]};do
        for NGPU in ${NGPUS[@]};do
            NGPU_PER_NODE=$(($NGPU<8?$NGPU:8))
            let NNODE=(NGPU+7)/8
            srun --mpi=pmi2 -n$NGPUS -p $PART --cpus-per-task 16 --gres=gpu:$NGPU_PER_NODE--ntasks-per-node=$NNODE --exclusive python -u tools/train.py configs/$MODEL--launcher slurm --work-dir=$WORK_DIR/${MODEL}/${NGPUS}-gpus
            sleep 5  
        done
    done
}