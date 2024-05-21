# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.17.42"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    on_intel do
      url "https://github.com/kubeshop/testkube/releases/download/v1.17.42/testkube_1.17.42_Darwin_x86_64.tar.gz"
      sha256 "659de86e98d45ec24c566df45e17cad8ff29713e1b079c2493982777d01778ea"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    on_arm do
      url "https://github.com/kubeshop/testkube/releases/download/v1.17.42/testkube_1.17.42_Darwin_arm64.tar.gz"
      sha256 "be25520a1ef238947c783d217e9ef6a08e0ef1bd04c23d3c1e75ba6b86e89dad"

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
        url "https://github.com/kubeshop/testkube/releases/download/v1.17.42/testkube_1.17.42_Linux_x86_64.tar.gz"
        sha256 "ac9a91573c07dab9ccf37572d74a069eb908b5c6a9b66bec58137098ccc7ada1"

        def install
          bin.install "kubectl-testkube"
          ln_s bin/"kubectl-testkube", bin/"tk"
          ln_s bin/"kubectl-testkube", bin/"testkube"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kubeshop/testkube/releases/download/v1.17.42/testkube_1.17.42_Linux_arm64.tar.gz"
        sha256 "87fd22aaf46a50a92e2a590e05162a862b981b863020bd71b12d3a3907832a7a"

        def install
          bin.install "kubectl-testkube"
          ln_s bin/"kubectl-testkube", bin/"tk"
          ln_s bin/"kubectl-testkube", bin/"testkube"
        end
      end
    end
  end
end
