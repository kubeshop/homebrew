# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.9.5"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.9.5/testkube_1.9.5_macOS_x86_64.tar.gz"
      sha256 "84b62c06c5540f1f4dccb83068595828f7cbbe9e20b97d88dc6676aa442d1a1e"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.9.5/testkube_1.9.5_macOS_arm64.tar.gz"
      sha256 "d4a836d1ebf472552bb48e3a62fe0f583fd86240c79117626c69f66ede8cb1fc"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.9.5/testkube_1.9.5_Linux_arm64.tar.gz"
      sha256 "ac40a4e28fd2dd092522e8df76ce3dd94c7d41fc53df9ebb853ddc6bfc885a22"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.9.5/testkube_1.9.5_Linux_x86_64.tar.gz"
      sha256 "0985de10037b815181eab8a23692a340f5e2a817be9f81aeee8180a44057a507"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
