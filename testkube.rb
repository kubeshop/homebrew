# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.11.4"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.11.4/testkube_1.11.4_macOS_arm64.tar.gz"
      sha256 "f4707548ca342f4062fe84c2f8f85a066d6337ed9808d073e2817b3f671ebd43"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.11.4/testkube_1.11.4_macOS_x86_64.tar.gz"
      sha256 "504b9d169ec58d6ac2756d8b5c7cd74e5cc9b3e9f91b6153e5dc44aa54226ce7"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.11.4/testkube_1.11.4_Linux_x86_64.tar.gz"
      sha256 "5dbbc9c747aaa920a9f969668bb8c05fda4551eda73b60c71520e247199094cd"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.11.4/testkube_1.11.4_Linux_arm64.tar.gz"
      sha256 "1849baaa86198a0a9a5b6d2ea48714a29dba25301abfa414dc1be80cba9372cd"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
