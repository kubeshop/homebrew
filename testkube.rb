# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.6.4"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.6.4/testkube_1.6.4_macOS_x86_64.tar.gz"
      sha256 "bd420a18e384d6442a6f6e24c3b99d4ce2da5d6ca9ffdb28a35dd722a4eeffd9"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.6.4/testkube_1.6.4_macOS_arm64.tar.gz"
      sha256 "a7370196623f2593bc2f9256e2a7bc37c022027727e1bd05e273acd1b30f9327"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.6.4/testkube_1.6.4_Linux_arm64.tar.gz"
      sha256 "1e3d6c81d39ce2e00626ea2b784637bb24414c54f52be347d7478469a9be020f"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.6.4/testkube_1.6.4_Linux_x86_64.tar.gz"
      sha256 "90c758be07f8b1fcbdcc3c4b04ef07cd350f2c35111dbfc36df8f17945c467ea"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
