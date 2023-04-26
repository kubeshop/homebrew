# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.11.9"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.11.9/testkube_1.11.9_macOS_arm64.tar.gz"
      sha256 "4b2407ac1721fec6d8de8fe07de4fa861092cb52a22fe9060d4c6b256f930997"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.11.9/testkube_1.11.9_macOS_x86_64.tar.gz"
      sha256 "e4e7be1905a951cf0d48dfbd103690b9e30fb183654bae3e39949fb40bb6a40e"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.11.9/testkube_1.11.9_Linux_x86_64.tar.gz"
      sha256 "4b8808c7b5abc6b96ee6145302a9ba6a6878a5ce47294c09fad79fe6e653e48d"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.11.9/testkube_1.11.9_Linux_arm64.tar.gz"
      sha256 "41494e1f3f5b178421d234be1f39db6b3f40acf6a114487df76bc9a5ea0b8c33"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
