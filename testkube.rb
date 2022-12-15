# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.8.2"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.8.2/testkube_1.8.2_macOS_arm64.tar.gz"
      sha256 "0810e1f0759ad75b2b8715ccab955e2933478f8ae13e1135344b646e078af946"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.8.2/testkube_1.8.2_macOS_x86_64.tar.gz"
      sha256 "1a5ed420a072890731710292ef6e0623c15af859cb97d560bf958c1fbab6aa61"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.8.2/testkube_1.8.2_Linux_arm64.tar.gz"
      sha256 "f317d65c483df7450bc11ba73bf00c239a9f6cbf8b2f0b1e5c6149594b8f54be"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.8.2/testkube_1.8.2_Linux_x86_64.tar.gz"
      sha256 "3cc5c22691c5c3cdc37c2b9c0de36d9d08c53fcc30d6ee76758dc699bd7ec688"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
