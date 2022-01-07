# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "0.7.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v0.7.9/testkube_0.7.9_macOS_arm64.tar.gz"
      sha256 "13c07c1081932ec1109549387ded0b69e1f925b4537f8ebd9a7a4353b3fc42ee"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.7.9/testkube_0.7.9_macOS_x86_64.tar.gz"
      sha256 "717da68d42516660dd46cf5a88694ff5c3e0177f8c479a755518c2bb8d47c0fe"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.7.9/testkube_0.7.9_Linux_x86_64.tar.gz"
      sha256 "7aa65ecf4d27d87aca48e8e3c5c3a53ac4930200228d9d9d5c87b13d99d0821e"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v0.7.9/testkube_0.7.9_Linux_arm64.tar.gz"
      sha256 "3439072fb135b5034f02c6329bca8c9ae64fee1fed166a018308c80f3612cb85"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end
end
