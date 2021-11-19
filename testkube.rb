# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "0.6.27"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.6.27/testkube_0.6.27_macOS_x86_64.tar.gz"
      sha256 "e456e7de6a4578abb55b20d1e45eb174be64af5f78841d6d964118f1538d968b"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v0.6.27/testkube_0.6.27_macOS_arm64.tar.gz"
      sha256 "f4fedfe8599095a9b49642e1c2a0ef9e622d2bb44d9b6519268ee365e9246ee4"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v0.6.27/testkube_0.6.27_Linux_arm64.tar.gz"
      sha256 "8fd2e8d467bb3ccc747dd028ec37954572d610041171a14b7da30edcf4bcb47d"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.6.27/testkube_0.6.27_Linux_x86_64.tar.gz"
      sha256 "0ef1646ab14859e63c8d325f40f06e0d2ca4ac83279a4cbc486a2b49c97b3466"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end
end
