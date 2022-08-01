# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.3.53"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.3.53/testkube_1.3.53_macOS_arm64.tar.gz"
      sha256 "178573a13aeb6a872df33027e6394d563fb3cd311468dbfea9a6158a36b7402e"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.3.53/testkube_1.3.53_macOS_x86_64.tar.gz"
      sha256 "0d510f38eff4548d7de889568e79dc8e5e68575e770f14ea1a6ee0ad90618299"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.3.53/testkube_1.3.53_Linux_arm64.tar.gz"
      sha256 "10e06b7641b2af3a9944c3556063efe768dcee6198b2a276e3dc8128d6e6693f"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.3.53/testkube_1.3.53_Linux_x86_64.tar.gz"
      sha256 "3c93e569ac7a684d128c3dc9f7cdb919fe0491bdd2f5141052b87c753092f778"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
