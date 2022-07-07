# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.3.2/testkube_1.3.2_macOS_x86_64.tar.gz"
      sha256 "f4b69b00194cde2456f337984cd4af2ece1d0af0f81a1fd46655d4f872394451"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.3.2/testkube_1.3.2_macOS_arm64.tar.gz"
      sha256 "d0220afbb3c3c55263428654b5b57cdb6df08bb1b998be8ddd2c82c2dcc4aaf6"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.3.2/testkube_1.3.2_Linux_x86_64.tar.gz"
      sha256 "ed85c1e8be80f33d5875f55247d7b796efbf2a4e7eb80ce629f4bab14ae7df9d"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.3.2/testkube_1.3.2_Linux_arm64.tar.gz"
      sha256 "26f826826935d46b05c67c87e402c5e5e9eeead87d0ef9d876ec62b795672c4e"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end
end
