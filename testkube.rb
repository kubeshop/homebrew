# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.13.4"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.13.4/testkube_1.13.4_Darwin_arm64.tar.gz"
      sha256 "fc5af5dcac3fda1138f6e7d1bafbb33dadbdbcfdea442097205a5fad5294a5fa"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.13.4/testkube_1.13.4_Darwin_x86_64.tar.gz"
      sha256 "815cc83a2c201c61284877f84ae627fbd681d1c6904739c75562a366281d522a"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.13.4/testkube_1.13.4_Linux_x86_64.tar.gz"
      sha256 "9eef89ede5e3652edaf286fc993c09c79cd2bec61405ae540a0fc81e7e1f77d7"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.13.4/testkube_1.13.4_Linux_arm64.tar.gz"
      sha256 "4c17319a3794259f2390832adc04a7eb6141dd612de34d8f82d5bd7f33b39aee"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
