# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.8.0"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.8.0/testkube_1.8.0_macOS_x86_64.tar.gz"
      sha256 "575e0b47e04b79e2d3739363455e44c17fc214e605e2429c33bdcfdc572bc885"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.8.0/testkube_1.8.0_macOS_arm64.tar.gz"
      sha256 "77b367b698958dd6bc6de52ed6950e738fc3e398a76ded27788e2ac6adbcedae"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.8.0/testkube_1.8.0_Linux_x86_64.tar.gz"
      sha256 "8ca60b7ec364a858dfdfbfc0c18f71b6644d5c982fa9d66e4c396351d66e1632"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.8.0/testkube_1.8.0_Linux_arm64.tar.gz"
      sha256 "036dbef5a6da2e03244b0836e7cbb138642b3d5733edf6d4f5fb558627a0a666"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
