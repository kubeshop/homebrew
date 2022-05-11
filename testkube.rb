# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "0.0.0-alpha006"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v0.0.0-alpha006/testkube_0.0.0-alpha006_macOS_arm64.tar.gz"
      sha256 "a4e8b91db9b769a86bc64ec3be2feba99b7e6df10a47a7bcfe9854e7defc3825"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.0.0-alpha006/testkube_0.0.0-alpha006_macOS_x86_64.tar.gz"
      sha256 "7ef6b437527f5caad29faefd1e8227768a5a18605a66ad0acdb96fdae03cf22e"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.0.0-alpha006/testkube_0.0.0-alpha006_Linux_x86_64.tar.gz"
      sha256 "36c5e4571ed75fc9b7ddc7bc3ddd32eaf65ebead8d853265f64e7fb7e6506d19"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v0.0.0-alpha006/testkube_0.0.0-alpha006_Linux_arm64.tar.gz"
      sha256 "cd7cd8dbc4521d4bc952f4e0e63bf134aa9abc512cc2d0866c604d57c417c504"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end
end
