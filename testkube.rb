# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.16.38"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.16.38/testkube_1.16.38_Darwin_arm64.tar.gz"
      sha256 "ebbf1e87ece9b0df4cfd47dcfee06437c8b5f6db84d87d96cd567e1026bebb86"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.16.38/testkube_1.16.38_Darwin_x86_64.tar.gz"
      sha256 "f977d5a97a794d1c0dd65976d44b6c4818f65aca642a9e33de3962cbc351c4cd"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.16.38/testkube_1.16.38_Linux_arm64.tar.gz"
      sha256 "51d4427caec81cf8cee41ed61b231cc9239e4cd855069ca6cd887572f2d0d9da"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.16.38/testkube_1.16.38_Linux_x86_64.tar.gz"
      sha256 "707be8b2cc38b3afd48a9eba9b77d2dc2199ab1edf2564d4e5db0f28b4b78121"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
