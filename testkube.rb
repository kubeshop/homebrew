# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "2.1.46"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    on_intel do
      url "https://github.com/kubeshop/testkube/releases/download/v2.1.46/testkube_2.1.46_Darwin_x86_64.tar.gz"
      sha256 "d190437a65e410be6173089d6660c244e77a0975819b403c704f7664d88fad1c"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    on_arm do
      url "https://github.com/kubeshop/testkube/releases/download/v2.1.46/testkube_2.1.46_Darwin_arm64.tar.gz"
      sha256 "c1b1d3cd3e62b83244e546b07f99613d527574f9d38f9700ae7c8de6b3b142d9"

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
        url "https://github.com/kubeshop/testkube/releases/download/v2.1.46/testkube_2.1.46_Linux_x86_64.tar.gz"
        sha256 "740084b8b0d0175d3ca27e264f6e448309e3e9f990e848868e6413c7d5b218bf"

        def install
          bin.install "kubectl-testkube"
          ln_s bin/"kubectl-testkube", bin/"tk"
          ln_s bin/"kubectl-testkube", bin/"testkube"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kubeshop/testkube/releases/download/v2.1.46/testkube_2.1.46_Linux_arm64.tar.gz"
        sha256 "cd5224d652c474886b56e044ecd1d1790adbc478f948bbf7ec34185f13726afb"

        def install
          bin.install "kubectl-testkube"
          ln_s bin/"kubectl-testkube", bin/"tk"
          ln_s bin/"kubectl-testkube", bin/"testkube"
        end
      end
    end
  end
end
