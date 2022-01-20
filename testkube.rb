# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "0.7.27"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.7.27/testkube_0.7.27_macOS_x86_64.tar.gz"
      sha256 "baff50c95829c37810d871707b43ec5ce545be91b80cf74f43858d4479851678"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v0.7.27/testkube_0.7.27_macOS_arm64.tar.gz"
      sha256 "d22b7314968a91a7b4698a66734981a7ffb0b1bf1c3ca2eedc3d8c86e9e147e3"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.7.27/testkube_0.7.27_Linux_x86_64.tar.gz"
      sha256 "98a15db426ee8f7e52d24f060c3014234c586945c4232240e3fa24a520a6512c"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v0.7.27/testkube_0.7.27_Linux_arm64.tar.gz"
      sha256 "ad337293ebb1c82cadccd13cb4dbc2d12126f5b906a1e06ad50b091a0032bc8f"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end
end
