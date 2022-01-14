# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "0.7.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.7.18/testkube_0.7.18_macOS_x86_64.tar.gz"
      sha256 "b621dab6e812c11c3313245c5fb22f84944013bca0223817a6694985f2322806"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v0.7.18/testkube_0.7.18_macOS_arm64.tar.gz"
      sha256 "5c03d5c10c10d417f868e8365c6b8ccc4d3f3947d794199bd39b6f2e68a827a7"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.7.18/testkube_0.7.18_Linux_x86_64.tar.gz"
      sha256 "17b6cb5bda8aacd197ae395e8628aa40a3e4ce382df179853d460d777aabb89a"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v0.7.18/testkube_0.7.18_Linux_arm64.tar.gz"
      sha256 "25caee6999007ec4a08a136715ba219049c59f22b1014a3cc57428ccedd38800"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end
end
