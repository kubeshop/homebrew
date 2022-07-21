# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.3.26"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.3.26/testkube_1.3.26_macOS_x86_64.tar.gz"
      sha256 "5a4e9c165bae2919016e18ff95d443eea431e4fc3b55b2b6def6ec4c9134aaf3"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.3.26/testkube_1.3.26_macOS_arm64.tar.gz"
      sha256 "41f1834534d1e31fde74ff69317aa7089bf39d80b49d95fc14624def18fbe4b3"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.3.26/testkube_1.3.26_Linux_x86_64.tar.gz"
      sha256 "3deeaa216ca541acb992fe387fdefbd1fb1d8ba81eee50d239e15b755e6f9b7c"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.3.26/testkube_1.3.26_Linux_arm64.tar.gz"
      sha256 "35843ea97203aad8be76b3adca954c9bbf473202618f4a719f15ad007f32a217"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  def post_install
    bin.install_symlink "tk"
  end
end
