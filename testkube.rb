# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.11.31"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.11.31/testkube_1.11.31_macOS_arm64.tar.gz"
      sha256 "754cc10423bb2909e0926b06e83e82af431965d7f946874076439308d1e07365"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.11.31/testkube_1.11.31_macOS_x86_64.tar.gz"
      sha256 "c1afabdf19e6f91c1081310e94b390a63a9c1d909d726a0e208c4dc80732991d"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.11.31/testkube_1.11.31_Linux_arm64.tar.gz"
      sha256 "8f943e2ed266cabff2847f3c8144a8733a2342fb485cc58db500edb036d91a3e"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.11.31/testkube_1.11.31_Linux_x86_64.tar.gz"
      sha256 "1e3acb2eca3ae5fb9921b4cb234925065df15501cb491a333ffdb9a5619bd696"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
