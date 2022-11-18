# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.7.2"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.7.2/testkube_1.7.2_macOS_x86_64.tar.gz"
      sha256 "b98f485f20933a3a88eb60f21302ce3029fee49e38a9438095f1095c99bc9e50"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.7.2/testkube_1.7.2_macOS_arm64.tar.gz"
      sha256 "b99425f4926f412be7d588e4cd0d62eff84369e8f58beca17cad42fdb22a54a0"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.7.2/testkube_1.7.2_Linux_x86_64.tar.gz"
      sha256 "c4f76f9d74c53e131f616b6abd83dfa04b69c46a1a221144698367e50b84c773"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.7.2/testkube_1.7.2_Linux_arm64.tar.gz"
      sha256 "08c1760b2c74b02475fa5fa1d8d2f68cbe4d20fc9fa36e7bd217fa48efa02484"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
