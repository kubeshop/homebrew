# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.16.35"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.16.35/testkube_1.16.35_Darwin_arm64.tar.gz"
      sha256 "a26991e0bc6503980b89ad8da3d185cc4c8d8bc1a45058d8936805b733acdd45"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.16.35/testkube_1.16.35_Darwin_x86_64.tar.gz"
      sha256 "df4c0fcfbd8cefc51fdbfb87a1a11fc564593ca51ab398d40e027eaeb10824c9"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.16.35/testkube_1.16.35_Linux_x86_64.tar.gz"
      sha256 "6f2b53a858e43d67a2a1bd9389fb8ed771a7f9bab6199d04c36779a2f881178b"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.16.35/testkube_1.16.35_Linux_arm64.tar.gz"
      sha256 "9ec5dcbc0c11d681d23bbfadd074ecf4c4f6801c6b305758bfb3b8e7aea9e484"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
