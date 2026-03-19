#!/bin/bash
set -e

echo "=== Wan 2.2 Animate — установка моделей (Boris Edition) ==="

echo "=== Создание папок (только если их нет) ==="

mkdir -p /workspace/ComfyUI/models/diffusion_models/wan22animate
mkdir -p /workspace/ComfyUI/models/loras
mkdir -p /workspace/ComfyUI/models/clip_vision
mkdir -p /workspace/ComfyUI/models/text_encoders
mkdir -p /workspace/ComfyUI/models/vae/wanvideo
mkdir -p /workspace/ComfyUI/models/detection

echo "=== Загрузка основной модели Wan 2.2 Animate ==="

wget -O /workspace/ComfyUI/models/diffusion_models/wan22animate/Wan2_2-Animate-14B_fp8_e4m3fn_scaled_KJ.safetensors \
"https://huggingface.co/Kijai/WanVideo_comfy_fp8_scaled/resolve/main/Wan22Animate/Wan2_2-Animate-14B_fp8_e4m3fn_scaled_KJ.safetensors?download=true"

echo "=== Загрузка LoRA моделей ==="

wget -O /workspace/ComfyUI/models/loras/lightx2v_I2V_14B_480p_cfg_step_distill_rank64_bf16.safetensors \
"https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/Lightx2v/lightx2v_I2V_14B_480p_cfg_step_distill_rank64_bf16.safetensors?download=true"

wget -O /workspace/ComfyUI/models/loras/WanAnimate_relight_lora_fp16.safetensors \
"https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/LoRAs/Wan22_relight/WanAnimate_relight_lora_fp16.safetensors?download=true"

echo "=== Загрузка Clip Vision ==="

wget -O /workspace/ComfyUI/models/clip_vision/clip_vision_h.safetensors \
"https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/clip_vision/clip_vision_h.safetensors?download=true"

echo "=== Загрузка Text Encoder ==="

wget -O /workspace/ComfyUI/models/text_encoders/umt5-xxl-enc-bf16.safetensors \
"https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/umt5-xxl-enc-bf16.safetensors?download=true"

echo "=== Загрузка VAE (в папку wanvideo, как в шаблоне) ==="

wget -O /workspace/ComfyUI/models/vae/wanvideo/wan_2.1_vae.safetensors \
"https://huggingface.co/Comfy-Org/Wan_2.2_ComfyUI_Repackaged/resolve/main/split_files/vae/wan_2.1_vae.safetensors?download=true"

echo "=== Загрузка detection моделей ==="

wget -O /workspace/ComfyUI/models/detection/yolov10m.onnx \
"https://huggingface.co/Wan-AI/Wan2.2-Animate-14B/resolve/main/process_checkpoint/det/yolov10m.onnx?download=true"

wget -O /workspace/ComfyUI/models/detection/vitpose-l-wholebody.onnx \
"https://huggingface.co/JunkyByte/easy_ViTPose/resolve/main/onnx/wholebody/vitpose-l-wholebody.onnx?download=true"

echo "=== Все модели Wan 2.2 Animate успешно загружены! ==="
