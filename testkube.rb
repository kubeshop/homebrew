# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "0.9.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v0.9.11/testkube_0.9.11_macOS_arm64.tar.gz"
      sha256 "c6477510b676e25627471e5006e6d6593a1e12c277791471b2b358d6988a5b9d"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.9.11/testkube_0.9.11_macOS_x86_64.tar.gz"
      sha256 "7bc5a6ca0ec207b358823e098f423f61ea4a242a785538f2da465022c4702432"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v0.9.11/testkube_0.9.11_Linux_arm64.tar.gz"
      sha256 "5dea6d130f56384936fb16dc3c44856014ba176e0ff71bf72d6dbefd599a2c28"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.9.11/testkube_0.9.11_Linux_x86_64.tar.gz"
      sha256 "6ba6d031075c31127f6b9968fd496d4b1e89a5afc448a54e43be5e6d7022ff57"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end
end
