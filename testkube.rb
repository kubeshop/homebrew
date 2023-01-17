# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.8.28"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.8.28/testkube_1.8.28_macOS_x86_64.tar.gz"
      sha256 "afd6b57569aa90327aadb723cd82ebafbfc134d5e727aa8b75a0da6f45b32bf5"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.8.28/testkube_1.8.28_macOS_arm64.tar.gz"
      sha256 "e0f4f924820bb9b395a95097b3d7cd3d08a58f36cec780dc2903745886d94a76"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.8.28/testkube_1.8.28_Linux_arm64.tar.gz"
      sha256 "9eb88104bc8904593c816c5d1745acd30a10aeffea05f2d7ddd210f68f8ba560"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.8.28/testkube_1.8.28_Linux_x86_64.tar.gz"
      sha256 "d3c0eeeee6cb202133f9f4c5a1dff93af1ba5e43b751e13283124fd32b5c2f14"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
