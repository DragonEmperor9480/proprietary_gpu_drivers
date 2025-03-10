#!/bin/bash

# Install necessary packages
sudo dnf install -y nvidia-driver nvidia-settings nvidia-vaapi-driver xorg-x11-drv-nvidia-cuda

# Export environment variables to enable NVIDIA GPU usage
echo 'export __NV_PRIME_RENDER_OFFLOAD=1' >> ~/.bashrc
echo 'export __GLX_VENDOR_LIBRARY_NAME=nvidia' >> ~/.bashrc
echo 'export __VK_LAYER_NV_optimus=NVIDIA_only' >> ~/.bashrc

# Apply changes
source ~/.bashrc

echo "NVIDIA drivers installed and environment variables set. Please reboot for changes to take effect."
