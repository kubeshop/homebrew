# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "0.8.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v0.8.7/testkube_0.8.7_macOS_arm64.tar.gz"
      sha256 "db0ebc70abe313efe649ed881b4db316fe92da2beaf1f4d908f13daa1ee09a05"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.8.7/testkube_0.8.7_macOS_x86_64.tar.gz"
      sha256 "65f47c542a779475accfa71655b06727e74c33e7fe89482c0b3d8c5cc9cf198c"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v0.8.7/testkube_0.8.7_Linux_arm64.tar.gz"
      sha256 "4192d1a0ad4c2e19144e7ec9c7b9fcd1b0dfee1f41f1fca21c052c322d890180"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v0.8.7/testkube_0.8.7_Linux_x86_64.tar.gz"
      sha256 "6571b9ae1746bdcc51ec6d113f44aa95da82ab7a629ba301fba00427320db59c"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end
end
