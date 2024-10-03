# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "2.1.30"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    on_intel do
      url "https://github.com/kubeshop/testkube/releases/download/v2.1.30/testkube_2.1.30_Darwin_x86_64.tar.gz"
      sha256 "21f7134f6f26ccb2785575a9a30f8fabad18c22465c63c97acfaea00557d9d6c"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    on_arm do
      url "https://github.com/kubeshop/testkube/releases/download/v2.1.30/testkube_2.1.30_Darwin_arm64.tar.gz"
      sha256 "d1f905d602f4305c467a7ab65e0c80d8cf8daa16d512f9ba4173015a3951c7fe"

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
        url "https://github.com/kubeshop/testkube/releases/download/v2.1.30/testkube_2.1.30_Linux_x86_64.tar.gz"
        sha256 "d891fc7044a159a2fb0a397645d39cd81d230f3df07b5f449aebf927fcc0e302"

        def install
          bin.install "kubectl-testkube"
          ln_s bin/"kubectl-testkube", bin/"tk"
          ln_s bin/"kubectl-testkube", bin/"testkube"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kubeshop/testkube/releases/download/v2.1.30/testkube_2.1.30_Linux_arm64.tar.gz"
        sha256 "2a427ecd3fb1d8057616a8c4050263578e2a109f3fb3d3af90926c466ae07977"

        def install
          bin.install "kubectl-testkube"
          ln_s bin/"kubectl-testkube", bin/"tk"
          ln_s bin/"kubectl-testkube", bin/"testkube"
        end
      end
    end
  end
end
