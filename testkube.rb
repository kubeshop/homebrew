# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "0.7.32"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.7.32/testkube_0.7.32_macOS_x86_64.tar.gz"
      sha256 "1f41654906d5225465cc3cd9617debc322fd5cf022460c53c4d0e1de93a6a449"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v0.7.32/testkube_0.7.32_macOS_arm64.tar.gz"
      sha256 "b99544f98da786d57b7336f2bc7904cb63e91cd1ff1bd0e6aab02b0b2b1bebd3"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v0.7.32/testkube_0.7.32_Linux_arm64.tar.gz"
      sha256 "da2d214bc58bffce8b0b3dae5e25811234c79b85cf1554a9d12dbaa274be7e5a"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.7.32/testkube_0.7.32_Linux_x86_64.tar.gz"
      sha256 "0b5c9ff34041d9036b4a1d77adbd5530f3b39114766511cb036d5b0da6bcde5a"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end
end
