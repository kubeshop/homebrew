# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.11.12"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.11.12/testkube_1.11.12_macOS_x86_64.tar.gz"
      sha256 "f6c00e1252fd1f90412dd3d9cbecd0fd7ae1243c5597a7d8f19ba75340a7f3b8"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.11.12/testkube_1.11.12_macOS_arm64.tar.gz"
      sha256 "4f419e04068f2a10b96942cbc1dccd4729d24be796583340d889a203f0b974dd"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.11.12/testkube_1.11.12_Linux_arm64.tar.gz"
      sha256 "ae1b3e7f6fa51976489bc2a5dffde623842c90d9374d68532fd12696f730e919"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.11.12/testkube_1.11.12_Linux_x86_64.tar.gz"
      sha256 "473ad6fe398f16abdaabd0afaaee7dff820c2cdc0d2a3f49ac0243ce902cdf41"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
