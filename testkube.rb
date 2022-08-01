# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.3.48"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.3.48/testkube_1.3.48_macOS_arm64.tar.gz"
      sha256 "31545e95c26d281960687575604f69add428e21721d4350b65111b18bfa25481"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.3.48/testkube_1.3.48_macOS_x86_64.tar.gz"
      sha256 "7a83e501798e458697234c2b63cfa5cbd6164f30dc6b025c040a19e0207178c9"

      def install
        bin.install "kubectl-testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.3.48/testkube_1.3.48_Linux_x86_64.tar.gz"
      sha256 "9fb81a08941a8663326eff9ae35ed51286f19f58e0f57a3dd5327087ef70bf2e"

      def install
        bin.install "kubectl-testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.3.48/testkube_1.3.48_Linux_arm64.tar.gz"
      sha256 "ca8894b2f4c360a6bbccfc719b3c431f9db44896178042b7bdfb609f07063877"

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
