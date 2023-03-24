# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.10.15"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.10.15/testkube_1.10.15_macOS_arm64.tar.gz"
      sha256 "414105c270a4425171df74d02052d5c6b1cdae0ae3f6d1657635c57507063a57"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.10.15/testkube_1.10.15_macOS_x86_64.tar.gz"
      sha256 "129b1c5886284194204ecfb95702a00c2a4398b1c0a493d2805455b839b283cc"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.10.15/testkube_1.10.15_Linux_arm64.tar.gz"
      sha256 "1dede3e417df0e52f3debfd94336ccb608de2b200a970e6f5d626adc0f5d8b63"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.10.15/testkube_1.10.15_Linux_x86_64.tar.gz"
      sha256 "a28a058374412a80ba595c83efe4dd6a45c765a6efeaff67cde8451cc4f728b6"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
