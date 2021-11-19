# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "0.6.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.6.18/testkube_0.6.18_macOS_x86_64.tar.gz"
      sha256 "7c153325d1e6b10a448e8f01534dc130beab6307ee1c593c5e347fd691a733f8"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v0.6.18/testkube_0.6.18_macOS_arm64.tar.gz"
      sha256 "52855a8ea774b90b20cf1c9ab09232ec182f14d8fe851c421dbf4cc628dab0c4"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v0.6.18/testkube_0.6.18_Linux_arm64.tar.gz"
      sha256 "cbd07a3bddb613322d3a6e7aae07250eca0a87675d1f41e4736c7025a6baca4b"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.6.18/testkube_0.6.18_Linux_x86_64.tar.gz"
      sha256 "d8b518842933cee4613b2ee411694c5d1f2fd2ebe14d59ec5ea70ad06cd75466"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end
end
