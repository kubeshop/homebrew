# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.2.2/testkube_1.2.2_macOS_x86_64.tar.gz"
      sha256 "61f0a61f95dce288a1e73d01376245e89d9c15fcbbcaf14f8207bcfb7681a741"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.2.2/testkube_1.2.2_macOS_arm64.tar.gz"
      sha256 "de89164909bd7772a28fbd555c57588e4dd44a85850d736432448a230a5fb915"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.2.2/testkube_1.2.2_Linux_x86_64.tar.gz"
      sha256 "ee6239b6aa3e77880020512e4afd48488461e8cf21c0ec196b9047b76ceec271"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.2.2/testkube_1.2.2_Linux_arm64.tar.gz"
      sha256 "fba749b6962c750eeb4d535b2c4dfab7f4e4f1d83eaf459ddab24ea28f29e278"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end
end
