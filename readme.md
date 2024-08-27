### This is a modified version of TopicGPT to generate sentence-level tags

Use the following command to assign a sentence-level tag to an article

If you want to use llama3-8b, first run the following command to start vllmserver
```
python -m vllm.entrypoints.openai.api_server  --model NousResearch/Meta-Llama-3-8B-Instruct --dtype auto --api-key token-abc123
```

If you want to use the gpt api, set open_api_key as a system environment variable.

### assignment:

```
python script/assignment_sentence.py --deployment_name llama-3-8b \
                        --max_tokens 300 --temperature 0.0 --top_p 0.01 \
                        --data data/input/artical_data_facebook_sample.jsonl \
                        --prompt_file my_prompt2/assignment.txt \
                        --topic_file my_prompt2/lable_file.md \
                        --out_file data/output/fuck_sample.jsonl \
                        --verbose True
```
### generation_sentence:
Use the following command to generate text sentence-level structure tags
```
python3 script/generation_1_sentence.py --deployment_name gpt-4 \
                        --max_tokens 300 --temperature 0.0 --top_p 0.01 \
                        --data data/input/sample.jsonl \
                        --prompt_file my_prompt2/generation_1.txt \
                        --seed_file my_prompt2/seed_1.md \
                        --out_file data/output/generation_1_sample.jsonl \
                        --topic_file data/output/generation_1_sample.md \
                        --verbose True
```


