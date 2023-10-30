# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.15.9"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.15.9/testkube_1.15.9_Darwin_x86_64.tar.gz"
      sha256 "687f6b27e7f464466a7cb7f79bb1bf73a5725feb73125f0ed425895282cef2ac"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.15.9/testkube_1.15.9_Darwin_arm64.tar.gz"
      sha256 "9e6fdfc2ca434c31d3a78f3ea58ef830fa1da7409a63287cb67bf82d5effbe1d"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.15.9/testkube_1.15.9_Linux_arm64.tar.gz"
      sha256 "5dcf8627855869237697ed4eb6e1a4daa0629e6643e4620e2af93fca5758f7e4"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.15.9/testkube_1.15.9_Linux_x86_64.tar.gz"
      sha256 "346bc1033e9050db8c56795368cc3a7f0facd18840567b311654e5cc43aa5ffa"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
