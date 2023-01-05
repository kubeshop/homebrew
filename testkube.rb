# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.8.16"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.8.16/testkube_1.8.16_macOS_x86_64.tar.gz"
      sha256 "4a45f7838ce88956fd279275ef897e9b6c47a35d9b295d4a601d0eaec25b1bd1"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.8.16/testkube_1.8.16_macOS_arm64.tar.gz"
      sha256 "b0ce3015e7d540ef202aee2702011faa02228c29e9097358f6f9dc73fd5aaaed"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.8.16/testkube_1.8.16_Linux_arm64.tar.gz"
      sha256 "a00ca6be659abbbf1bb912bfcd642a31ed9014a31be95863c6e0dd08d3e2903d"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.8.16/testkube_1.8.16_Linux_x86_64.tar.gz"
      sha256 "4af0e935d23c5c84453464d2a8d4400bd15009967ebcb915ef79af09dab60be3"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
