# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.5.20"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.5.20/testkube_1.5.20_macOS_arm64.tar.gz"
      sha256 "5295372dca970b5c887212d0897a1df715f6ec1fb608a82ddede7a0bb04ea40e"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.5.20/testkube_1.5.20_macOS_x86_64.tar.gz"
      sha256 "b5818252ad750a4ce06d032c041afcfc20a0a01b8698c0939a23ec790e46b2e5"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.5.20/testkube_1.5.20_Linux_x86_64.tar.gz"
      sha256 "cf149306d6fe25b88195055b87ac698e2d79653ddc32308c0db3245cc973f41f"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.5.20/testkube_1.5.20_Linux_arm64.tar.gz"
      sha256 "0142f38b81eb82bef3ca1c07f6a8fa437ac594a7aa73b1c79804636b876918a0"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
