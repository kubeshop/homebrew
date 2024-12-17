# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "2.1.79"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    on_intel do
      url "https://github.com/kubeshop/testkube/releases/download/v2.1.79/testkube_2.1.79_Darwin_x86_64.tar.gz"
      sha256 "fa55c00c5f1667bfff31d6747fa604043ce9e067d90ecc3a3922aaa2699a98f7"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    on_arm do
      url "https://github.com/kubeshop/testkube/releases/download/v2.1.79/testkube_2.1.79_Darwin_arm64.tar.gz"
      sha256 "d0cadc839e4201a0289434b55b9274a45dcd5a8a978fb94c17f8e937c69caddd"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kubeshop/testkube/releases/download/v2.1.79/testkube_2.1.79_Linux_x86_64.tar.gz"
        sha256 "1f1b0814fb7e15f91fbc62613e6020d1f0e93d38e07a8edabe16ee7007a36dbd"

        def install
          bin.install "kubectl-testkube"
          ln_s bin/"kubectl-testkube", bin/"tk"
          ln_s bin/"kubectl-testkube", bin/"testkube"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kubeshop/testkube/releases/download/v2.1.79/testkube_2.1.79_Linux_arm64.tar.gz"
        sha256 "69a5ace0202dc2adc3e01d5f6b61c192d1a7d9aa8ff9f9bdd9d59bf9c500796e"

        def install
          bin.install "kubectl-testkube"
          ln_s bin/"kubectl-testkube", bin/"tk"
          ln_s bin/"kubectl-testkube", bin/"testkube"
        end
      end
    end
  end
end
