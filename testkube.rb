# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.9.12"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.9.12/testkube_1.9.12_macOS_x86_64.tar.gz"
      sha256 "4a7087b41d9d2659bfc5c85cc1ce9115675afa294c8510ec0eb9b4a4c004b918"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.9.12/testkube_1.9.12_macOS_arm64.tar.gz"
      sha256 "2519e75e61129b58b7e427c6e166cc1e9a7a0785e1d0978ad8197900c9336e23"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.9.12/testkube_1.9.12_Linux_arm64.tar.gz"
      sha256 "5f61a5bea32599619d41645aa8c18dabb01760bb966dbc89672010a3830f3747"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.9.12/testkube_1.9.12_Linux_x86_64.tar.gz"
      sha256 "1016541b92bd41fd8335d13938523c558f7a2c67df8adbd6b8da55361eccc903"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
