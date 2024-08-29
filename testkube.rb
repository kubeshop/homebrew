# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "2.1.4"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    on_intel do
      url "https://github.com/kubeshop/testkube/releases/download/v2.1.4/testkube_2.1.4_Darwin_x86_64.tar.gz"
      sha256 "dbd9a52f1eefd1909ba6b1b431d7409fd4e6eea6d9cfce8ad87eb1d669ca7650"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    on_arm do
      url "https://github.com/kubeshop/testkube/releases/download/v2.1.4/testkube_2.1.4_Darwin_arm64.tar.gz"
      sha256 "257a2c8f0a549d24c6b53cbbbf75dc5472beb461170ab1cf8b649f4ddc1cdf74"

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
        url "https://github.com/kubeshop/testkube/releases/download/v2.1.4/testkube_2.1.4_Linux_x86_64.tar.gz"
        sha256 "4d10e12b520b43d0decd6487bb184e00d9582119345d4f146ac6ca20c24f023c"

        def install
          bin.install "kubectl-testkube"
          ln_s bin/"kubectl-testkube", bin/"tk"
          ln_s bin/"kubectl-testkube", bin/"testkube"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kubeshop/testkube/releases/download/v2.1.4/testkube_2.1.4_Linux_arm64.tar.gz"
        sha256 "cd939d3667038d293b484cb9a0166ed28200355fecd5cbe31e6fdabd6d37853b"

        def install
          bin.install "kubectl-testkube"
          ln_s bin/"kubectl-testkube", bin/"tk"
          ln_s bin/"kubectl-testkube", bin/"testkube"
        end
      end
    end
  end
end
