# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.0.15-test03"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.0.15-test03/testkube_1.0.15-test03_macOS_x86_64.tar.gz"
      sha256 "81f3358c58d22efd91edb73fd6a70a8d7fe2fc9029c68afd0d5222cf2fdf1fef"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.0.15-test03/testkube_1.0.15-test03_macOS_arm64.tar.gz"
      sha256 "c3b4979b6e70208624528d005e85be504327cc6b1480e225897384ac0c6353f8"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.0.15-test03/testkube_1.0.15-test03_Linux_x86_64.tar.gz"
      sha256 "b23728e1e31628339e7835eab29b63b97f679e578dd21c0c1e7acac5aa461236"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.0.15-test03/testkube_1.0.15-test03_Linux_arm64.tar.gz"
      sha256 "e8c5c1716aa91a1c7f14b3cd5b44903d32d0efadaa1c27b80761ffaf66522d3a"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end
end
