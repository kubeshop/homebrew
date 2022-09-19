# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.5.27"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.5.27/testkube_1.5.27_macOS_x86_64.tar.gz"
      sha256 "040c96c9e4962f5c02b0ee493cec8cc232e80e72cb46b2fd84165e705001b3cc"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.5.27/testkube_1.5.27_macOS_arm64.tar.gz"
      sha256 "78b834b4ea74e7c92233230d9738633ab1ed98a5e9beb99ec94557ca35c7a4c0"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.5.27/testkube_1.5.27_Linux_arm64.tar.gz"
      sha256 "0c1eda7299f8e3075c76c94d2a03a330310bcdc8748a954995b7a62b54a0b088"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.5.27/testkube_1.5.27_Linux_x86_64.tar.gz"
      sha256 "b910ddad255ca57078076de0d4e211d3856285e61bf0ff98e697b006e2159b66"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
