# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "2.1.54-beta007"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    on_intel do
      url "https://github.com/kubeshop/testkube/releases/download/v2.1.54-beta007/testkube_2.1.54-beta007_Darwin_x86_64.tar.gz"
      sha256 "6cfc29cf7cfd160a3c1e634561cb3261d2611c0bd5366c0709cac3e6dfb85a82"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    on_arm do
      url "https://github.com/kubeshop/testkube/releases/download/v2.1.54-beta007/testkube_2.1.54-beta007_Darwin_arm64.tar.gz"
      sha256 "ff47b05f78eee14fc62d007e64f4c8f98172f91ca8a32cafbd73b351c0d783c7"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kubeshop/testkube/releases/download/v2.1.54-beta007/testkube_2.1.54-beta007_Linux_x86_64.tar.gz"
        sha256 "fb854460772f22522c52ec5491257ad0c297daf76344ac2c3a10d29ce82d8590"

        def install
          bin.install "kubectl-testkube"
          ln_s bin/"kubectl-testkube", bin/"tk"
          ln_s bin/"kubectl-testkube", bin/"testkube"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kubeshop/testkube/releases/download/v2.1.54-beta007/testkube_2.1.54-beta007_Linux_arm64.tar.gz"
        sha256 "79967169be4c64ea6029e6f79d1472d119fd319f729922b648d1b7164b7b7d40"

        def install
          bin.install "kubectl-testkube"
          ln_s bin/"kubectl-testkube", bin/"tk"
          ln_s bin/"kubectl-testkube", bin/"testkube"
        end
      end
    end
  end
end
