FROM ghcr.io/huggingface/text-generation-inference:latest

RUN sed '817s/word_embeddings/transformer.word_embeddings/' /usr/src/server/text_generation_server/models/custom_modeling.py | tee /usr/src/server/text_generation_server/models/custom_modeling.py