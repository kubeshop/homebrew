# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.10.31"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.10.31/testkube_1.10.31_macOS_x86_64.tar.gz"
      sha256 "2ab5b547250e0a6f68912d46cfe6fff328b31242d0d3266b0b880ec9bc42f308"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.10.31/testkube_1.10.31_macOS_arm64.tar.gz"
      sha256 "7676869cfebe8bcd2559a7fb2e100d84e3d941144dae2933a6a1afb7028a506e"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.10.31/testkube_1.10.31_Linux_x86_64.tar.gz"
      sha256 "5bba141fdefd849b595009ed1d77da52720815ecb16ab2b42a34376f45525d61"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.10.31/testkube_1.10.31_Linux_arm64.tar.gz"
      sha256 "a507fa42393e635c62888d5e594879cf8434e77a7c6b1517231bb72553ffa572"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
