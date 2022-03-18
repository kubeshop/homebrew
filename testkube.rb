# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "0.10.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v0.10.5/testkube_0.10.5_macOS_arm64.tar.gz"
      sha256 "57d70b0ef555fdc10260c58626f06c6ef7769a682392695e882c27f2442d5794"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.10.5/testkube_0.10.5_macOS_x86_64.tar.gz"
      sha256 "eeae00dd9b9f085e9092c2e8e7ebf910ebdec615d42003d3fd8349409d061d18"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.10.5/testkube_0.10.5_Linux_x86_64.tar.gz"
      sha256 "2da818ef7cfa7ba6e084e67a24e70c78747d5800d03f488313e7940f514ad7a0"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v0.10.5/testkube_0.10.5_Linux_arm64.tar.gz"
      sha256 "58151ecc30c24c262cd4eef684dadff20537d6872bdef62c39f474300d104b14"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end
end
