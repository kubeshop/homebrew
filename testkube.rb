# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "0.8.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v0.8.8/testkube_0.8.8_macOS_arm64.tar.gz"
      sha256 "8a2610277612e9db25735a605f48d9ffa93128044ee4b5f2f501184278187d3b"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.8.8/testkube_0.8.8_macOS_x86_64.tar.gz"
      sha256 "9b6396613b672038bd8cb40166a6f441ce68dc35d6ef72fa8e541df303152fa8"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v0.8.8/testkube_0.8.8_Linux_arm64.tar.gz"
      sha256 "aec53a2c7e9036fb419eac4e7d7b26473baa1af7d663c05c5363e3629cb38dc4"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.8.8/testkube_0.8.8_Linux_x86_64.tar.gz"
      sha256 "d1ef3bdff3ad4235c46f533a0cfa97d5d6d79d85566b262508b71c6cb1f97da3"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end
end
