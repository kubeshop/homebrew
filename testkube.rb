# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.13.3"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.13.3/testkube_1.13.3_Darwin_arm64.tar.gz"
      sha256 "3ac533723d69516f0d85a19157ba77ec9bd0fe004f09c978dd060c5d42b96ea3"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.13.3/testkube_1.13.3_Darwin_x86_64.tar.gz"
      sha256 "ec3fc4c2045ffbd08d21395e1debe70a89bbe95a5d4c6d2e36026b0debb4febc"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.13.3/testkube_1.13.3_Linux_arm64.tar.gz"
      sha256 "2304e2b7984960a9dfc3541ce9381397484e3c162e6890af819d68df2983ff9d"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.13.3/testkube_1.13.3_Linux_x86_64.tar.gz"
      sha256 "8b44608d8d2618ee53b5b1cc8adf430315a5e44bb92d859544ddc62e4457d3ff"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
