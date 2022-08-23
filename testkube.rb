# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.4.33"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.4.33/testkube_1.4.33_macOS_x86_64.tar.gz"
      sha256 "f8a5c2b2b30fcbc5d91fa255a7368d35e3162d57a98baa43090ecce0ab67e811"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.4.33/testkube_1.4.33_macOS_arm64.tar.gz"
      sha256 "8c89c0d7ba64ffd4b3d3e8a6a0bab76ba450e00e1a7ecfbf4c39125336615924"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.4.33/testkube_1.4.33_Linux_x86_64.tar.gz"
      sha256 "9865291394430a7c69b664d16d7d8f07c79a367586fe89056d45cd46f9448791"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.4.33/testkube_1.4.33_Linux_arm64.tar.gz"
      sha256 "1874c046cdcade245762fd0dfa80460b1d84be87db7ce0068831aeb69949fa02"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  depends_on "helm"
  depends_on "kubectl"
end
