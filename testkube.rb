# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.4.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.4.24/testkube_1.4.24_macOS_x86_64.tar.gz"
      sha256 "6863bc2211295800176a73329cbd1736f099278a278974ad786a443296ecf948"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.4.24/testkube_1.4.24_macOS_arm64.tar.gz"
      sha256 "6cc76faa1af290fc147f62554e1f9e076a3538cfd7dcc16bf6d0080d58fbc0f2"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.4.24/testkube_1.4.24_Linux_arm64.tar.gz"
      sha256 "9a25cf8549bef43edc672f98b4bd4ba8c234a7e6eb0a47d548ccb550864b0700"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.4.24/testkube_1.4.24_Linux_x86_64.tar.gz"
      sha256 "7eb9352106613ba631d4c06b2a445b01d340cd9833d0f31122826dfda784d1e4"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
