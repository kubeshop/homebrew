# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.3.43"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.3.43/testkube_1.3.43_macOS_arm64.tar.gz"
      sha256 "2691ea31bf9eb366182a5b67abbfd903717073b2390383b8cd6067593d1c004e"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.3.43/testkube_1.3.43_macOS_x86_64.tar.gz"
      sha256 "0e2414cbf518fee790912262353fbec652c5ffa16ca97df4da63d4fe780c77b9"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.3.43/testkube_1.3.43_Linux_arm64.tar.gz"
      sha256 "9ec5c524385acf9b9b01345964b0c0795ca949f1fe34112d45016473eb3171a3"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.3.43/testkube_1.3.43_Linux_x86_64.tar.gz"
      sha256 "1fcd061e9208f08712d658b534f05ce9143cf1eadbb269d6e31e6a679cff07fa"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  def post_install
    bin.install_symlink "tk"
    bin.install_symlink "testkube"
  end
end
