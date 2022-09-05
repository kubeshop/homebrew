# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.5.12"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.5.12/testkube_1.5.12_macOS_x86_64.tar.gz"
      sha256 "cad69aba2059d03aa2f9c027a3ae5e1191751cadd9c569a7ebb4096d9adfc63c"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.5.12/testkube_1.5.12_macOS_arm64.tar.gz"
      sha256 "931288d1b5da1bd6662c1e0ac6830bf2435e7130377b83d2f101f8688d368d8a"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.5.12/testkube_1.5.12_Linux_arm64.tar.gz"
      sha256 "a65c6afd8bcecb5134543ec3b62df941bcf93798c78c4fddc6ced9e4c13bebd6"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.5.12/testkube_1.5.12_Linux_x86_64.tar.gz"
      sha256 "cc12387169e3c1d964dd4a143f4a19eb9805c6045544dbc4899a8502b729e494"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
