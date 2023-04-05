# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.10.35"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.10.35/testkube_1.10.35_macOS_x86_64.tar.gz"
      sha256 "dfeaa036f0a548881b5ebb317f55b4a645be12a1835ad9c1173d979e545724b9"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.10.35/testkube_1.10.35_macOS_arm64.tar.gz"
      sha256 "797697502c43310ffe0e09d4f5679111bfb180e6dd5a98e1495bfb30751c38b0"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.10.35/testkube_1.10.35_Linux_arm64.tar.gz"
      sha256 "fb2d5aac85122710bee710605add01f3e59eeb31d6f61af1661332890adf776e"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.10.35/testkube_1.10.35_Linux_x86_64.tar.gz"
      sha256 "8f7b570efcd1b0a474cb518dd54335f2b3c33d2f876225340ea7da71df7c24a1"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
