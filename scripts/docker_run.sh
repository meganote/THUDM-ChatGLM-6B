set -e
set -x
set -o pipefail

MP_SIZE=8
DATA_TYPE=int4
CUDA_LAUNCH_BLOCKING=1
NVIDIA_VISIBLE_DEVICES=all

# Run
docker run -d -it --restart=always --shm-size=10g -p 7860:7860 \
  --name chatglm-6b \
  -e NVIDIA_VISIBLE_DEVICES=${NVIDIA_VISIBLE_DEVICES} -e CUDA_LAUNCH_BLOCKING=${CUDA_LAUNCH_BLOCKING} \
  -v /var/cache/fscache/glm-6b:/workspace/THUDM/chatglm-6b:ro \
  -v /var/cache/fscache/glm-6b/ice_text.model:/root/.icetk_models/ice_text.model \
  jt-llm/chatglm-6b:v1.0.0
