#!/bin/bash
#SBATCH -N 1
#SBATCH -n 1
#SBATCH --time=40:00:00
#SBATCH --gres=gpu:4
#SBATCH --cpus-per-gpu=10
#SBATCH --mem=100G
#SBATCH --partition=isi

#module load python/3.11
#pip install -r requirements.txt
#python -m vllm.entrypoints.openai.api_server --model NousResearch/Meta-Llama-3-70B-Instruct --dtype auto --api-key token-abc123
#python script/setup.py --num_samples 5
# generation
#python3 script/generation_1_sentence.py --deployment_name gpt-4 \
#                        --max_tokens 300 --temperature 0.0 --top_p 0.01 \
#                        --data data/input/sample.jsonl \
#                        --prompt_file my_prompt2/generation_1_sentence.txt \
#                        --seed_file my_prompt2/seed_1.md \
#                        --out_file data/output/generation_1_sample.jsonl \
#                        --topic_file data/output/generation_1_sample.md \
#                        --verbose True

python script/assignment_sentence.py --deployment_name gpt-4 \
                        --max_tokens 300 --temperature 0.0 --top_p 0.01 \
                        --data data/input/artical_data_facebook_sample.jsonl \
                        --prompt_file my_prompt2/assignment.txt \
                        --topic_file my_prompt2/lable_file.md \
                        --out_file data/output/test_sample.jsonl \
                        --verbose True
#python logistic_regression.py