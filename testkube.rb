# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.11.6"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.11.6/testkube_1.11.6_macOS_x86_64.tar.gz"
      sha256 "a13412ba0778d85ba0f64ef424cb958215d7cc9586d1c9c6cd2a46f736b09feb"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.11.6/testkube_1.11.6_macOS_arm64.tar.gz"
      sha256 "25d65832140279234352a1d0b3d6468fc44ea5d8d4aa3c90c231e1dc4d4dbf57"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.11.6/testkube_1.11.6_Linux_arm64.tar.gz"
      sha256 "9875469335c18069595a0c06d55f7753c345048cca3ca7cd925600792bb79be6"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.11.6/testkube_1.11.6_Linux_x86_64.tar.gz"
      sha256 "db8513880e21d5c432cc14327bd689a09d9d8a75ca00d5e687c5b18f197e815d"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
