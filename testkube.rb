# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.4.34"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.4.34/testkube_1.4.34_macOS_arm64.tar.gz"
      sha256 "1c0b3b892bf5c79f6f473bf649bed9a810c1f86418d36c37e0ec973295e5eab4"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.4.34/testkube_1.4.34_macOS_x86_64.tar.gz"
      sha256 "75a007e8eb1540c2e72ae1b1738e9f36b28dc539cf5aa6e889fd00e46f931930"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.4.34/testkube_1.4.34_Linux_arm64.tar.gz"
      sha256 "eb93e5c4165297cd96664d91d539bc09b7ef6749584bc822b3cfad0e2cf9156c"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.4.34/testkube_1.4.34_Linux_x86_64.tar.gz"
      sha256 "76f15f3b2ee0144091e6ce0e3e16bafd8ab46a47838fed2a486fb6e2cf98d2c6"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  depends_on "helm"
  depends_on "kubectl"
end
