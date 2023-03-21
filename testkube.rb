# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.10.5"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.10.5/testkube_1.10.5_macOS_arm64.tar.gz"
      sha256 "e2767373940dabbb2b8c142bc46c76e833401990ad3d2e7acb8d92849df5296b"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.10.5/testkube_1.10.5_macOS_x86_64.tar.gz"
      sha256 "d86d110fcdfc8a76915cb160c2b9da76e90c933c90df6a147a9748d12dd31ded"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.10.5/testkube_1.10.5_Linux_x86_64.tar.gz"
      sha256 "258706cf49c7547470b7484ad185cfbcf3a9878d5027a29c14db75e38962ca0d"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.10.5/testkube_1.10.5_Linux_arm64.tar.gz"
      sha256 "73a63e9f680426d9a7787e52b8cba48b79dba52b10d164d11d39dfca4c03a58a"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
