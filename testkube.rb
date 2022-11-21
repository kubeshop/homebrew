# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.7.6"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.7.6/testkube_1.7.6_macOS_arm64.tar.gz"
      sha256 "1ff50d4ca5653cae1ee8f59e4530bff7c02a06e5981aca3861ab7d9742404d3b"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.7.6/testkube_1.7.6_macOS_x86_64.tar.gz"
      sha256 "6f75bcee48a4ff7eb5bd4a78ac9db5e14dbda236437f394188b99108f3b42075"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.7.6/testkube_1.7.6_Linux_arm64.tar.gz"
      sha256 "a6a44dd499de1aeeb39de2016b0c373f95095df3c8e2459b0b22eda4aa8fc97e"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.7.6/testkube_1.7.6_Linux_x86_64.tar.gz"
      sha256 "5b228a429dc3442e407300663f34035c606e06809d033e3a0ada99fba992caeb"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
