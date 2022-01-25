# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "0.8.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.8.2/testkube_0.8.2_macOS_x86_64.tar.gz"
      sha256 "cca6bfe7c63afdd0d3da2f207919a1264685dfa7b06e216f5cb5c08dc4813b4b"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v0.8.2/testkube_0.8.2_macOS_arm64.tar.gz"
      sha256 "17af9b1461a7f2bda84209d492baab38d70245feedb7c009555ccf3f97e38710"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.8.2/testkube_0.8.2_Linux_x86_64.tar.gz"
      sha256 "42fcca647aff3b231b1ed42717bd118e6da54fbf030c528678d747f20a43aed0"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v0.8.2/testkube_0.8.2_Linux_arm64.tar.gz"
      sha256 "51dc1a9ef14fb82a9c6fa80b1251ad6359b66f7f8a191b10d2d92d495d975be0"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end
end
