# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.10.28"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.10.28/testkube_1.10.28_macOS_arm64.tar.gz"
      sha256 "36471ef91879e2f7048e9fb8dfeec3f780a14d76fd7c58a3926d3b3052b19223"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.10.28/testkube_1.10.28_macOS_x86_64.tar.gz"
      sha256 "7855f52afb00c65ea0c2a9fc47aa308a2bbaeb6b72e9028dec926b8d289cf41f"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.10.28/testkube_1.10.28_Linux_x86_64.tar.gz"
      sha256 "453475aa870569ba8ee725b85b55c8b507625f69159f9fdbc628143e7be120b2"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.10.28/testkube_1.10.28_Linux_arm64.tar.gz"
      sha256 "0a39ece055475c7f8e0632448debf632df82932ed4a51fee40a615f72c3f3585"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
