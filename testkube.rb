# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.7.14"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.7.14/testkube_1.7.14_macOS_arm64.tar.gz"
      sha256 "4b19978a1383ad348856fb1e0ccb6a02ea0af5809b7eba9667dccf4798233df5"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.7.14/testkube_1.7.14_macOS_x86_64.tar.gz"
      sha256 "77852df967a0610ab2f4bfc016be5f7f4868f5168e184eeef7896788f27ec17e"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.7.14/testkube_1.7.14_Linux_arm64.tar.gz"
      sha256 "dee9943d6d51233687f591bb8b9ef252f884a26291d83691592e799ba3cba966"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.7.14/testkube_1.7.14_Linux_x86_64.tar.gz"
      sha256 "607e968133f113dcce39728f4ea350c850f535998d5be9003412ada39daca8ea"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
