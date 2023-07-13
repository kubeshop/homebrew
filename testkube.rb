# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.13.2"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.13.2/testkube_1.13.2_Darwin_arm64.tar.gz"
      sha256 "dd400970570ed9fd29bb1484da98c3d84306b3c15cdb5626f3f7df5d6ae1619b"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.13.2/testkube_1.13.2_Darwin_x86_64.tar.gz"
      sha256 "15bd9d834305cc120e380fe7b693a8cda89e04095b86bff0e044faf416ad3468"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.13.2/testkube_1.13.2_Linux_x86_64.tar.gz"
      sha256 "85321139b7376a4158058b17757c9ad7a255feb42e021cab7b7c895b354160dd"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.13.2/testkube_1.13.2_Linux_arm64.tar.gz"
      sha256 "22c05e83b182f182dfba6ad371709a2d568a11d6c9932b5ee274eb7f6b5d88f1"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
