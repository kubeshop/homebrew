# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.9.4"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.9.4/testkube_1.9.4_macOS_arm64.tar.gz"
      sha256 "f1d2f021e00d15ae183c086fdf9e1de1b563e00a7af9241ce4b67975fff55bbc"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.9.4/testkube_1.9.4_macOS_x86_64.tar.gz"
      sha256 "097f47dce14584ffd63e52ae2b44aa1b5f4acbd8f7074211399189155b6d1097"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.9.4/testkube_1.9.4_Linux_arm64.tar.gz"
      sha256 "45c507b0cf85581534cf9ed799923594d56822c0db163d7e07aa00c7d38f95e9"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.9.4/testkube_1.9.4_Linux_x86_64.tar.gz"
      sha256 "43f07acb416da6709eec602dbce806c2ca5a31113bb028723505e25db916a511"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
