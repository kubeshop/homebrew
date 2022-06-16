# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.2.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.2.22/testkube_1.2.22_macOS_x86_64.tar.gz"
      sha256 "63f8b3601cebb8acb99916159c66f5cc6a25688e97e46a04990055fbfac8eac1"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.2.22/testkube_1.2.22_macOS_arm64.tar.gz"
      sha256 "789507e3d79e9d07237ed689a2142dd4962bc8d34269fa492d0444a7feb48ddd"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.2.22/testkube_1.2.22_Linux_x86_64.tar.gz"
      sha256 "3ba6e2db96002a9014d305bd0c90af2aa4d9434b874534de6f3a0dd42a62ba9c"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.2.22/testkube_1.2.22_Linux_arm64.tar.gz"
      sha256 "9a9bf3b8818bd11987ebd440cf7074d32d61fadb005fef18f5ee075a910891cc"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end
end
