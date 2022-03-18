# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "0.10.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v0.10.6/testkube_0.10.6_macOS_arm64.tar.gz"
      sha256 "a6bab3d5f24a805c9a10d7c03dd25a6a11bda37ef905e34d865f9894edf1305a"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.10.6/testkube_0.10.6_macOS_x86_64.tar.gz"
      sha256 "b564fcf29a187e35753482ba7facac785f305d03add0f9a348ba7fa61bfc3e88"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.10.6/testkube_0.10.6_Linux_x86_64.tar.gz"
      sha256 "a40759c7adcbe24364690ad523bb7001b4525003b138db8e47844243d6381d20"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v0.10.6/testkube_0.10.6_Linux_arm64.tar.gz"
      sha256 "9e52f65bb06afe2bba99936e5cf724d3ac9edccaa700c95602822a358d22df6d"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end
end
