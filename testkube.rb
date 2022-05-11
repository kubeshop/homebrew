# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "0.0.0-alpha008"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.0.0-alpha008/testkube_0.0.0-alpha008_macOS_x86_64.tar.gz"
      sha256 "6ef53f36d4ce820d5335aef292bce143c682f88b67755d1a083d1fec9ba4bfda"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v0.0.0-alpha008/testkube_0.0.0-alpha008_macOS_arm64.tar.gz"
      sha256 "7e17e788b944761ac240258bd9b2728079f301c818d22ab6a960c71736630df7"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v0.0.0-alpha008/testkube_0.0.0-alpha008_Linux_arm64.tar.gz"
      sha256 "27af45b29663cbcd0219a07a53488d7a65fd61da7701288b34224af650a405ad"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.0.0-alpha008/testkube_0.0.0-alpha008_Linux_x86_64.tar.gz"
      sha256 "2944aa330eb2f8d4d56dbabc4e04ca26f6801949eecd3f36167985a1f2bf1b93"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end
end
