# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.17.54"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    on_intel do
      url "https://github.com/kubeshop/testkube/releases/download/v1.17.54/testkube_1.17.54_Darwin_x86_64.tar.gz"
      sha256 "9e808f2e223e7af9b046d93e6300287a5c2485ff7cd053772b483e7c44d8efef"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    on_arm do
      url "https://github.com/kubeshop/testkube/releases/download/v1.17.54/testkube_1.17.54_Darwin_arm64.tar.gz"
      sha256 "464760362badc4d25f32f7a498250b1da58dc9735da105e2c5e1c045d1dce199"

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
        url "https://github.com/kubeshop/testkube/releases/download/v1.17.54/testkube_1.17.54_Linux_x86_64.tar.gz"
        sha256 "c22e275347139d486ea6d90d200b9b820bd6a82b8acc3c2597c682181aedf641"

        def install
          bin.install "kubectl-testkube"
          ln_s bin/"kubectl-testkube", bin/"tk"
          ln_s bin/"kubectl-testkube", bin/"testkube"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kubeshop/testkube/releases/download/v1.17.54/testkube_1.17.54_Linux_arm64.tar.gz"
        sha256 "caa6d4f77bf8222752456bfee413cc7c119f7f10f8d1d65ff68160c65eb12eef"

        def install
          bin.install "kubectl-testkube"
          ln_s bin/"kubectl-testkube", bin/"tk"
          ln_s bin/"kubectl-testkube", bin/"testkube"
        end
      end
    end
  end
end
