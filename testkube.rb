# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.14.4"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.14.4/testkube_1.14.4_Darwin_arm64.tar.gz"
      sha256 "f226a13584881efce521b1ea555dc2719be382a250dfe63ebd34b0901a130c58"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.14.4/testkube_1.14.4_Darwin_x86_64.tar.gz"
      sha256 "d8f7fb9a63eb2e29167745179171cf55cceabe9bbd026f781058bc4add0c7610"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.14.4/testkube_1.14.4_Linux_x86_64.tar.gz"
      sha256 "57e44eedf97b4034b802b186fe98a8b7296ecd9fe334dc3d1e3245ca5920ba1b"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.14.4/testkube_1.14.4_Linux_arm64.tar.gz"
      sha256 "6afb9f3cdf8f5976082b3ddf647adb0e6cd5571ddc36d56aa95d4b49fcfca20e"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
