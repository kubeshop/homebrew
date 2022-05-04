# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.0.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.0.16/testkube_1.0.16_macOS_arm64.tar.gz"
      sha256 "1935cca5cb611c250fe5b0a2937536b108d9446443175a7298c7688d780c1aef"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.0.16/testkube_1.0.16_macOS_x86_64.tar.gz"
      sha256 "09dcada482b78508c0f61fb37c12dfc6f2cabe1d50eb06b6a1f7916ff35eb22c"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.0.16/testkube_1.0.16_Linux_arm64.tar.gz"
      sha256 "3d80e88ebed793f00f6bd8ef26512c14ee54bb39fbd71e8d45e5d23c0890e4c0"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.0.16/testkube_1.0.16_Linux_x86_64.tar.gz"
      sha256 "8262a04846c7b0625b849bf4c9b1a64fa337e62802d298f1a58a58d808d59c71"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end
end
