# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.10.34"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.10.34/testkube_1.10.34_macOS_x86_64.tar.gz"
      sha256 "614a22e5baf2bcb6b8889f3b0decca35accd5ac98353591b6ab57e4afb00a20e"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.10.34/testkube_1.10.34_macOS_arm64.tar.gz"
      sha256 "7b054289a6aecb6a665f3d38cd1b03108ea96e5eb188d14f41fa57b8b968cac1"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.10.34/testkube_1.10.34_Linux_arm64.tar.gz"
      sha256 "64791f96114035f11550ea718baaefb0331ffe8f27990dbb6d8ad69105250be3"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.10.34/testkube_1.10.34_Linux_x86_64.tar.gz"
      sha256 "a466fe639b35ab20ab1909ff1c580f1aafa76fec1c50f37de8ec77ee502b9e77"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
