# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "0.6.25"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.6.25/testkube_0.6.25_macOS_x86_64.tar.gz"
      sha256 "a4083eb812b32b72cf962bb1f8181cbeb6dd809692f2cbdd2142e5d36fdd5bc7"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v0.6.25/testkube_0.6.25_macOS_arm64.tar.gz"
      sha256 "2c4b1935369be5ecc5abe4edbb4ad10373bed23343aeafb83f19bc4b0822d075"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v0.6.25/testkube_0.6.25_Linux_arm64.tar.gz"
      sha256 "1caa32784e53de3e584cebff93e7137eb7f761a91a9217563528e64cc5c920c0"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.6.25/testkube_0.6.25_Linux_x86_64.tar.gz"
      sha256 "ec8d96a754ac38f16248d8964eb040b23a057bc5ec9e5421e0ed1dd7bd3cf299"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end
end
