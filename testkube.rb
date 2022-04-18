# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.0.4/testkube_1.0.4_macOS_arm64.tar.gz"
      sha256 "b0415058bf00d7d364b81dc42b691c65fc00644b9dab693869e2cfaf994ebbba"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.0.4/testkube_1.0.4_macOS_x86_64.tar.gz"
      sha256 "c48fa448bc2075ccf6222fb9dcb65951d17e4933a145c2357245634e3c351464"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.0.4/testkube_1.0.4_Linux_x86_64.tar.gz"
      sha256 "0d05a4774916b200f65490b2290a556cdde898b6280bdd6e276fa00d628217ab"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.0.4/testkube_1.0.4_Linux_arm64.tar.gz"
      sha256 "90573c972f32c34e24fd7b4363f6f0656771e0b2c22ff9bc7826eeee1ca602eb"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end
end
