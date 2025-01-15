# syntax=docker/dockerfile:1.2

FROM archlinux:base-devel

# Install packages
RUN --mount=type=cache,sharing=locked,target=/var/cache/pacman \
    pacman -Syu --noconfirm --needed cuda

# Configure nvidia container runtime
# https://github.com/NVIDIA/nvidia-container-toolkit/tree/main/cmd/nvidia-container-runtime#environment-variables-oci-spec
ENV NVIDIA_VISIBLE_DEVICES=all
ENV NVIDIA_DRIVER_CAPABILITIES=compute,utility
