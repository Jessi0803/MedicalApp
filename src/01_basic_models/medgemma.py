from transformers import pipeline
import torch

prompt = "What are the common symptoms of heart failure?"

pipe = pipeline(
    "text-generation",
    model="unsloth/medgemma-27b-text-it-bnb-4bit",
    device_map="auto",
    trust_remote_code=True,
    torch_dtype=torch.bfloat16,
)
result = pipe(prompt, max_new_tokens=128)
print(result[0]['generated_text'])
