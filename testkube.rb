# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "2.0.6"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    on_intel do
      url "https://github.com/kubeshop/testkube/releases/download/v2.0.6/testkube_2.0.6_Darwin_x86_64.tar.gz"
      sha256 "3d1437507ce6ff1cff0bea604dd9ba81dd2a2d53f6623a09b71d6642445b4cb5"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    on_arm do
      url "https://github.com/kubeshop/testkube/releases/download/v2.0.6/testkube_2.0.6_Darwin_arm64.tar.gz"
      sha256 "6d0acfd341408e883b9c9019bc3ac17003131d2fab0763fde12243674aa7cc89"

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
        url "https://github.com/kubeshop/testkube/releases/download/v2.0.6/testkube_2.0.6_Linux_x86_64.tar.gz"
        sha256 "42e2ea750153da91239c4e3d94d1ce870a28e4cde0fd3e6abf877e218f35dd9c"

        def install
          bin.install "kubectl-testkube"
          ln_s bin/"kubectl-testkube", bin/"tk"
          ln_s bin/"kubectl-testkube", bin/"testkube"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kubeshop/testkube/releases/download/v2.0.6/testkube_2.0.6_Linux_arm64.tar.gz"
        sha256 "c3b61a654a5d38fea9b7cacd82ce9f33eba501230c9232babd87b5a5c65abaab"

        def install
          bin.install "kubectl-testkube"
          ln_s bin/"kubectl-testkube", bin/"tk"
          ln_s bin/"kubectl-testkube", bin/"testkube"
        end
      end
    end
  end
end
