# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.11.18"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.11.18/testkube_1.11.18_macOS_x86_64.tar.gz"
      sha256 "ff250eb7053569213ba5cec0f745e194bff25e14fb3cb03680114b99f72de727"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.11.18/testkube_1.11.18_macOS_arm64.tar.gz"
      sha256 "e47b269c4ca34243ff00a208178bf0014387fc2e6d7cfdeee0303c5c0b9d06a0"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.11.18/testkube_1.11.18_Linux_x86_64.tar.gz"
      sha256 "97ed0da2146917248f36c436a09b1fc44f0c9f225f50f7a6eb45b9869e1a281d"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.11.18/testkube_1.11.18_Linux_arm64.tar.gz"
      sha256 "8112f122b447a0ab72c598ecb234fe9f7715c2018325408120022f16aae6eb86"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
