# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.5.22"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.5.22/testkube_1.5.22_macOS_x86_64.tar.gz"
      sha256 "f9346a96231d6668804c4b98ac2e3f2f01aace6f6e9e4ca6f133b273e1d2b0f8"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.5.22/testkube_1.5.22_macOS_arm64.tar.gz"
      sha256 "8b7a285ab270950448ceb2fdc7def9d4024b140de0ccbd09324548f19242ad0a"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.5.22/testkube_1.5.22_Linux_arm64.tar.gz"
      sha256 "28c5d0616ba31b52114b1eca986a234439d789811b2ebe14f755dd171b55b8ec"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.5.22/testkube_1.5.22_Linux_x86_64.tar.gz"
      sha256 "55c95025aaae4272c6f20b7884f3bb47e4c0240daf9c0fde9de16a12f6a7c972"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
