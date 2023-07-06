FROM ghcr.io/huggingface/text-generation-inference:0.8.2

# COPY llmzoo-patched causal lm and bloom file instead of original files
COPY bloom.py /opt/conda/lib/python3.9/site-packages/text_generation_server/models/bloom.py
COPY causal_lm.py /opt/conda/lib/python3.9/site-packages/text_generation_server/models/causal_lm.py