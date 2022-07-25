# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.3.39"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.3.39/testkube_1.3.39_macOS_x86_64.tar.gz"
      sha256 "816fbb16a0d6ab75aafbdab500754e826eeaee74700cc3eae90d79c8a7a005c8"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.3.39/testkube_1.3.39_macOS_arm64.tar.gz"
      sha256 "318ffbdc973e2e8396d0387fa61ce1d71f135e72ea8038ec4aa62978bdbf3e0e"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.3.39/testkube_1.3.39_Linux_arm64.tar.gz"
      sha256 "067769340758fc09fdce3ca31410df28f9b287e38556f6016f63d25ce80e301f"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.3.39/testkube_1.3.39_Linux_x86_64.tar.gz"
      sha256 "2d975351e290675d32931e1326525514e2fc91c01cb0bc0f771c7fa26c5191f7"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  def post_install
    bin.install_symlink "tk"
  end
end
