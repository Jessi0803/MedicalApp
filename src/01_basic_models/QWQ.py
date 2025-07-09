from transformers import AutoTokenizer, pipeline

tokenizer = AutoTokenizer.from_pretrained("kz919/QwQ-0.5B-Distilled")
pipe = pipeline("text-generation", model="kz919/QwQ-0.5B-Distilled", tokenizer=tokenizer)

messages = [
    {"role": "system", "content": "You are a helpful assistant."},
    {"role": "user", "content": "How to solve headache?"}
]
prompt = tokenizer.apply_chat_template(messages, tokenize=False, add_generation_prompt=True)
result = pipe(prompt, max_new_tokens=128)
print(result[0]['generated_text'])
