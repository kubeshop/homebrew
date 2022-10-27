# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.6.28"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.6.28/testkube_1.6.28_macOS_x86_64.tar.gz"
      sha256 "ffa19ec5c1d7d0847e3aed1185e9bb305724bbcc60e60be91b8435f6d5ba14f4"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.6.28/testkube_1.6.28_macOS_arm64.tar.gz"
      sha256 "1945f9bdfe129899defc2cce54090c4254ef02d92cc0685b7e83da49c08b801d"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.6.28/testkube_1.6.28_Linux_x86_64.tar.gz"
      sha256 "75dc331254124c5a780297a06e22b956f970522467b388ff99113c54ed11322f"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.6.28/testkube_1.6.28_Linux_arm64.tar.gz"
      sha256 "8bff64ea453613e45b3f409a9cbf7c92889effbbcaea58cdfaae850344a00d9c"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
