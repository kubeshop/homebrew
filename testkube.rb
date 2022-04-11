# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.0.2/testkube_1.0.2_macOS_arm64.tar.gz"
      sha256 "ea675ec2e21cb18a7d85eb55a8da3e0bc233b5a81bf690f5ad5ff5a0b7a54c95"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.0.2/testkube_1.0.2_macOS_x86_64.tar.gz"
      sha256 "5065b7b994884323a2b63c1af903982f9c07b2121ef5c0f13ec664750081fdb2"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.0.2/testkube_1.0.2_Linux_x86_64.tar.gz"
      sha256 "a17b9f2e26bad747c9b755b1158b42e2ee44f5aae358be65402eb12a5384dcee"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.0.2/testkube_1.0.2_Linux_arm64.tar.gz"
      sha256 "a6bfdf721a4ae0e6a8e50dd1d5b29f2725ba3b49571b37feb8002b919dd0b5cd"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end
end
