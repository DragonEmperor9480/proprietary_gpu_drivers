# NVIDIA Driver Installation Script

This script automates the installation of proprietary NVIDIA GPU drivers on systems using the `dnf` package manager.

## Installation
Run the script to install the necessary packages and configure the system:
```bash
./install_gpu_drivers_dnf.sh
```

## What This Script Does
- Installs required NVIDIA drivers and utilities.
- Sets environment variables in `~/.bashrc` to enable NVIDIA GPU rendering.
- Applies changes immediately, though a reboot is recommended.

## Disabling NVIDIA GPU
To disable the NVIDIA GPU and switch back to the integrated Intel GPU, simply comment out the exported lines in `~/.bashrc`. Open the file with:
```bash
nano ~/.bashrc
```
And comment out the following lines by adding `#` at the beginning:
```bash
# export __NV_PRIME_RENDER_OFFLOAD=1
# export __GLX_VENDOR_LIBRARY_NAME=nvidia
# export __VK_LAYER_NV_optimus=NVIDIA_only
```
Then, apply the changes with:
```bash
source ~/.bashrc
```
A reboot may be required for complete switching.

## Notes
- This script is designed for Fedora-based systems using `dnf`.
- Ensure your system is up-to-date before running the script.
- If you encounter issues, check the logs and driver compatibility with your GPU model.

## License
This script is open-source and free to use or modify.

