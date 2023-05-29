# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.11.27"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.11.27/testkube_1.11.27_macOS_arm64.tar.gz"
      sha256 "c5ffa1f58ab81f7b83015848eaa907246713b1f911638126ae1a07e1af6d82bf"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.11.27/testkube_1.11.27_macOS_x86_64.tar.gz"
      sha256 "c7d504d84bd82c138f418b08af2574720dd24ba0f3bf91875f3dd0b2ad5edf68"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.11.27/testkube_1.11.27_Linux_arm64.tar.gz"
      sha256 "07d6a920ddf9abb8581e223559c7a02e537c6b2221185a35530fe2abed084556"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.11.27/testkube_1.11.27_Linux_x86_64.tar.gz"
      sha256 "9b1f5bdbbb7dca7f787106bdd2f24ea06f8581df021a6052b20bc5c19b85a365"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
