# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.17.21"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.17.21/testkube_1.17.21_Darwin_x86_64.tar.gz"
      sha256 "a7612ccac3a3759fb2d6dd33bb8b842fe349a09ce0bf5c2c5e6ac6db65b5c218"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.17.21/testkube_1.17.21_Darwin_arm64.tar.gz"
      sha256 "a801d87a9ebd46828b73701e46dd39c2d4cedff435301f0200be650d151093d7"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.17.21/testkube_1.17.21_Linux_x86_64.tar.gz"
      sha256 "406531db5f9f931e37d6f1afa2dafff21faedd54640faa8bf0c031489521f281"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.17.21/testkube_1.17.21_Linux_arm64.tar.gz"
      sha256 "188b95c4bd8fabeae362ae45b25ce787fe5aec6dc4d7fdc67581929683a39180"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
