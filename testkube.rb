# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "1.7.29"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kubeshop/testkube/releases/download/v1.7.29/testkube_1.7.29_macOS_arm64.tar.gz"
      sha256 "38095a9cd42228e097c8f9d095e4e81515d08486831b38985c91cdb49fe27fc2"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.7.29/testkube_1.7.29_macOS_x86_64.tar.gz"
      sha256 "1856d40b2b816b4c7537b01957778e67b8d251e95a63f9019527fa24945794f6"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubeshop/testkube/releases/download/v1.7.29/testkube_1.7.29_Linux_arm64.tar.gz"
      sha256 "db26fc55b15170b4a684ce31c7cfd7add51fa5785787cd3b1537203e156bf84f"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kubeshop/testkube/releases/download/v1.7.29/testkube_1.7.29_Linux_x86_64.tar.gz"
      sha256 "f6dd03afeecfa4d75eb86c25f419af798768093eb355a6ca49bb06ce9a18aa15"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end
end
