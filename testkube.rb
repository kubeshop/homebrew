# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.9.1"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.9.1/testkube_1.9.1_macOS_x86_64.tar.gz"
      sha256 "4b0edab900e09e56628a3d5c2feaa53baaa6e6df2cff461eba7f27142dfe587e"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.9.1/testkube_1.9.1_macOS_arm64.tar.gz"
      sha256 "a4a0ec7283f1cbb6795e405a97e574dcaf56cb7e2d4681f1302c79e5d662580b"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.9.1/testkube_1.9.1_Linux_arm64.tar.gz"
      sha256 "1ae9b41b726eb7eeac311345beda04d100c4724ddb874edb2a365b4ab9ab1691"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.9.1/testkube_1.9.1_Linux_x86_64.tar.gz"
      sha256 "85bda1084b86865f2aabf87d9a8158e285620221fda9fa6c0965469cb29dd0b2"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
