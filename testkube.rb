# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.12.10"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.12.10/testkube_1.12.10_macOS_x86_64.tar.gz"
      sha256 "de0e49a0757ddec34354d960e7be84dce0f1fb01661fb8e63c068b1bde785666"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.12.10/testkube_1.12.10_macOS_arm64.tar.gz"
      sha256 "54f97a559d0394232f6bf2edd3364b308cff9c864c302eb828c15a7ab9c58a3d"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.12.10/testkube_1.12.10_Linux_arm64.tar.gz"
      sha256 "ccf81dfe6e6014312b37ab36f7222c14fd464edb9b60fcf03360cf505bed4f22"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.12.10/testkube_1.12.10_Linux_x86_64.tar.gz"
      sha256 "5c73dd5e94aee45040cf7c06010a04e839992f4081fd8ccd95eb6605f6867c6c"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
