# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.6.19"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.6.19/testkube_1.6.19_macOS_x86_64.tar.gz"
      sha256 "eef681e9e9f9b43499e32abad50eebb333178890eafb60e70f52203792732b79"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.6.19/testkube_1.6.19_macOS_arm64.tar.gz"
      sha256 "a91df4e717a45d684b159996d59fda710e716c55e563d24b87775c2471697445"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.6.19/testkube_1.6.19_Linux_arm64.tar.gz"
      sha256 "1c40ce6932d2cd0924d1126ade620feb91c28ac6de5f53d35f5a78a9e4abda32"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.6.19/testkube_1.6.19_Linux_x86_64.tar.gz"
      sha256 "4cc3474ed310b5d8131975fed3dcb04ebdce1ba444fa6a79938d845d7b98ea43"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
