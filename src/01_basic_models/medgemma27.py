from transformers import pipeline

pipe = pipeline(
    "text-generation",
    model="unsloth/medgemma-27b-text-it",
    device_map="auto",
    torch_dtype="auto",
    trust_remote_code=True
)
prompt = "What are the symptoms of pneumonia?"
result = pipe(prompt, max_new_tokens=128)
print(result[0]['generated_text'])
