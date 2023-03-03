# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.9.24"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.9.24/testkube_1.9.24_macOS_x86_64.tar.gz"
      sha256 "4d5f5e4bef182574f64da9ce3951e432017e4c82f483cb0fb9de2f3751f118a0"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.9.24/testkube_1.9.24_macOS_arm64.tar.gz"
      sha256 "df2fbca58223715c5c4aef16f43999d9b5c51ba3e2584a1e379779fea8f4c0dd"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.9.24/testkube_1.9.24_Linux_x86_64.tar.gz"
      sha256 "f371f577df920af654f475516c5ed2b26f40ba4248973963026d0fde873490f9"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.9.24/testkube_1.9.24_Linux_arm64.tar.gz"
      sha256 "6f282cd98ba13d2ff4d52c9f44f6766694e6a5e35ba25a097b09ccd7c094d292"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
