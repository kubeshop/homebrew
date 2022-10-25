# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.6.26"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.6.26/testkube_1.6.26_macOS_x86_64.tar.gz"
      sha256 "4a5851f9eb6334233ba83f77232325812f1dcb6f9cbcd9294ad9daab3086d643"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.6.26/testkube_1.6.26_macOS_arm64.tar.gz"
      sha256 "76bc03164e400a4bc9bdf2a8e6d14a0c6fb648395a95a68d8e4b5b9ae966be8c"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.6.26/testkube_1.6.26_Linux_x86_64.tar.gz"
      sha256 "f4ba6c59e19b07039b593c8f9c14d63c7d9201e136ecda681205280bde1efbc4"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.6.26/testkube_1.6.26_Linux_arm64.tar.gz"
      sha256 "742b8a42768ad424f7321baab8814c771ac15992416a43c0c05167faf55d5b43"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
