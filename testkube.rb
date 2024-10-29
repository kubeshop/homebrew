# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "2.1.52"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    on_intel do
      url "https://github.com/kubeshop/testkube/releases/download/v2.1.52/testkube_2.1.52_Darwin_x86_64.tar.gz"
      sha256 "935a4304d5bf2c884f80cf2873d166999f3bfc98f21659f1ca6302cee340e1ce"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    on_arm do
      url "https://github.com/kubeshop/testkube/releases/download/v2.1.52/testkube_2.1.52_Darwin_arm64.tar.gz"
      sha256 "0bc2a352e5fd0365722296af5038aa72dd40162926831ccc2002620fad6faf45"

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
        url "https://github.com/kubeshop/testkube/releases/download/v2.1.52/testkube_2.1.52_Linux_x86_64.tar.gz"
        sha256 "b104af163f587515ef119203900dbb43da7ae52dc8256d404d10efa8c8330e27"

        def install
          bin.install "kubectl-testkube"
          ln_s bin/"kubectl-testkube", bin/"tk"
          ln_s bin/"kubectl-testkube", bin/"testkube"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kubeshop/testkube/releases/download/v2.1.52/testkube_2.1.52_Linux_arm64.tar.gz"
        sha256 "dd7aaf98e2d8130fbe13bc44d922bbd06355d9c8c1c687df8d76bbf622312209"

        def install
          bin.install "kubectl-testkube"
          ln_s bin/"kubectl-testkube", bin/"tk"
          ln_s bin/"kubectl-testkube", bin/"testkube"
        end
      end
    end
  end
end
