ARG BASE_IMAGE=nvcr.io/nvidia/pytorch:22.12-py3

FROM ${BASE_IMAGE}

ENV MP_SIZE 8
ENV DATA_TYPE int4
ENV CHECKPOINT_PATH /workspace/THUDM/chatglm-6b

# requirments
RUN pip install --no-cache-dir \
    protobuf \
    transformers==4.27.1 \
    cpm_kernels \
    gradio \
    mdtex2html \
    sentencepiece

ADD . /workspace/THUDM/ChatGLM-6B

CMD ["python3", "/workspace/THUDM/ChatGLM-6B/web_demo.py"]
EXPOSE 7860
