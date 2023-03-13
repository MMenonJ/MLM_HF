# MLM_HF


sudo docker run -v /home/mamejose/Roberta:/workspace/Roberta --rm --gpus '"device=0,1,2,3,4,5,6,7"' -it mlm_transformers:1.0 python Roberta/src/run_mlm.py  
	--max_steps=1000000   
	--warmup_steps=20000 
	--dataloader_num_workers=4 
	--gradient_accumulation_steps=4 
	--save_steps=50000 --eval_steps=50000 
	--model_name_or_path=roberta-base 
	--train_file /workspace/Roberta/data/02_splits/train.txt 
	--validation_file=/workspace/Roberta/data/02_splits/dev.txt 
	--per_device_train_batch_size 30     
	--per_device_eval_batch_size 60     
	--do_train     --do_eval     
	--output_dir /workspace/Roberta/data/models/1mil_epochs/  
	--overwrite_output_dir
