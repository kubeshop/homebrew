# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.12.13"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.12.13/testkube_1.12.13_Darwin_x86_64.tar.gz"
      sha256 "f92260fd5b1b2066dd95bce1175341c14337d32ee42641e07e3e6a730a07411c"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.12.13/testkube_1.12.13_Darwin_arm64.tar.gz"
      sha256 "f334c270c6c61f033986514391f278613b76cd160f39679291b32f9ba365aa7f"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.12.13/testkube_1.12.13_Linux_arm64.tar.gz"
      sha256 "b8d5a7208b7e1aa57f37a3c8943b47bc5bc776a9584ead9e4b7583f75855fcd1"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.12.13/testkube_1.12.13_Linux_x86_64.tar.gz"
      sha256 "61f8725930cdbda6a32740600f000815e0664504d2a037cd22b61b0e31b7f370"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
