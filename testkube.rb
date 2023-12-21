# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.16.20"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.16.20/testkube_1.16.20_Darwin_arm64.tar.gz"
      sha256 "a44df12d3f569c019604ca45c1f8b49d6d6bd98f46091808e2510f72706c47bc"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.16.20/testkube_1.16.20_Darwin_x86_64.tar.gz"
      sha256 "7c48eceffb0d5c5edb7b00b6fe4e1c8124433db1659dac1120fcef1055b66588"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.16.20/testkube_1.16.20_Linux_arm64.tar.gz"
      sha256 "017c2931527480dfc5fd85ca5a60fad444655f077c1b3f253ebf1fe7c5762ac4"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.16.20/testkube_1.16.20_Linux_x86_64.tar.gz"
      sha256 "89cea8eb0819294203da85be86b5ff31d5f21f855e837a5d84eb12f1ddb7d964"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
