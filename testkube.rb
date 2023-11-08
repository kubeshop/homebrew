# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.15.14"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.15.14/testkube_1.15.14_Darwin_arm64.tar.gz"
      sha256 "06e041d98f847f7219f91ffd312e82b608c78709d5a89d97178d1a87d07dd4d8"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.15.14/testkube_1.15.14_Darwin_x86_64.tar.gz"
      sha256 "e66ed8de5f732e117fc17487c7f0d9fc084c697dd2d99937cc0e8326abf24a3e"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.15.14/testkube_1.15.14_Linux_arm64.tar.gz"
      sha256 "75718e26d8ba5998075c85fabdb8385aa0e4f213004997890efe890736c626b4"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.15.14/testkube_1.15.14_Linux_x86_64.tar.gz"
      sha256 "75071de52030e6b209c657f9201f761270144a3f609197e8999c7c00b78804ed"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
