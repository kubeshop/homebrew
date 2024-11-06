# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "2.1.60"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    on_intel do
      url "https://github.com/kubeshop/testkube/releases/download/v2.1.60/testkube_2.1.60_Darwin_x86_64.tar.gz"
      sha256 "45c85ec2471b379aab881a30cca69216bd47a18d89b9b31e1a7deb8c1bec9239"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    on_arm do
      url "https://github.com/kubeshop/testkube/releases/download/v2.1.60/testkube_2.1.60_Darwin_arm64.tar.gz"
      sha256 "1bba689c057c266854a211b5228f8cc00a59b94e21a9f6bb3eb866a7356152f4"

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
        url "https://github.com/kubeshop/testkube/releases/download/v2.1.60/testkube_2.1.60_Linux_x86_64.tar.gz"
        sha256 "3498c102fc59bf15cc13c959016aa136dcb394bc47fd92a2b187ec862573d1e5"

        def install
          bin.install "kubectl-testkube"
          ln_s bin/"kubectl-testkube", bin/"tk"
          ln_s bin/"kubectl-testkube", bin/"testkube"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kubeshop/testkube/releases/download/v2.1.60/testkube_2.1.60_Linux_arm64.tar.gz"
        sha256 "939339fbdd2bef5f1ec8e1cafdd3dd383719e63083dbf35fb0faa60291d1cf60"

        def install
          bin.install "kubectl-testkube"
          ln_s bin/"kubectl-testkube", bin/"tk"
          ln_s bin/"kubectl-testkube", bin/"testkube"
        end
      end
    end
  end
end
