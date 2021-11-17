# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "0.6.11-beta003"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v0.6.11-beta003/testkube_0.6.11-beta003_macOS_arm64.tar.gz"
      sha256 "6ea45003e22f8ce4ebb2735b02eb14a6cc67fd7c3f1551298fbb66c294e4f37f"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.6.11-beta003/testkube_0.6.11-beta003_macOS_x86_64.tar.gz"
      sha256 "4f229a9892eb3d7b48a29fb9fbe1dc6aa8e11c1170847d28bc0c129062f1c473"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.6.11-beta003/testkube_0.6.11-beta003_Linux_x86_64.tar.gz"
      sha256 "a97db0cf3e959b5393b20e477beddcd445604bc1138b184edbcdd9287c05a55a"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v0.6.11-beta003/testkube_0.6.11-beta003_Linux_arm64.tar.gz"
      sha256 "2def8708e69fc18cfd9426caa67ad589e81442ea251dbb164cdaaa3907c21257"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end
end
