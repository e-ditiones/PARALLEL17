#!/bin/bash

source activate nmtpy

taskid="vfr:Text -> fr:Text"
#echo "TASKID: $taskid"
model="dec400-emb200-enc400-adam_4e-04-do_ctx_0.3-do_emb_0.3-do_out_0.3-rc8e2f.best.bleu.ckpt"
#echo "MODEL: $model"
src_voc="train_v2.vocab.vfr"
#echo "SRC_VOC: $src_voc"
trg_voc="train_v2.vocab.fr"
#echo "TRG_VOC: $trg_voc"
beam_size=10
#echo "BEAM_SIZE: $beam_size"


if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <source>"
    echo "$0 translates <source> file in vfr with task $taskid in model $model with beam size $beam_size and put the result in <source>_into_fr.test.beam$beam_size"
    exit
fi

source=$1
echo "SOURCE: $source"
output="${source}_into_fr"
echo "OUTPUT: $output"

echo "CMD: nmtpy translate -d cpu -tid \"$taskid\" -x \"vocabulary.vfr:$src_voc\" \"vocabulary.fr:$trg_voc\" -s \"test\" -S vfr:$source -k $beam_size -o $output $model"
nmtpy translate -d cpu -tid "$taskid" -x "vocabulary.vfr:$src_voc" "vocabulary.fr:$trg_voc" -s "test" -S "vfr:$source" -k $beam_size -o $output $model




