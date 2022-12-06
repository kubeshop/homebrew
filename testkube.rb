# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.7.26"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.7.26/testkube_1.7.26_macOS_arm64.tar.gz"
      sha256 "839fd1be455cde78c56c7e02b51c2e60c54d3b8fcf0cce696f8093ef1acb20a9"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.7.26/testkube_1.7.26_macOS_x86_64.tar.gz"
      sha256 "ac2f8e888009a069caca8957c574324df8407ad8577464dae588b94ada1634ba"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.7.26/testkube_1.7.26_Linux_arm64.tar.gz"
      sha256 "e4aeb16158edf52df2fa5753602e8410920fbc5b6bc6e90fcd64c33b6445abc4"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.7.26/testkube_1.7.26_Linux_x86_64.tar.gz"
      sha256 "3db23821109289dcd30f5de71629328f0b27b322c7cb681e5d64dd38ad4b3520"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
