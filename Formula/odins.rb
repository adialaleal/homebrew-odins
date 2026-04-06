class Odins < Formula
  desc "The All-Father of Local DNS — Local DNS + Reverse Proxy manager for macOS"
  homepage "https://github.com/adialaleal/odins"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adialaleal/odins/releases/download/v0.1.0/odins_0.1.0_darwin_arm64.tar.gz"
      sha256 "9dff23092962aa945ae62bd30647294abafe050a5259e94644f9c0d791b4a8a8"
    else
      url "https://github.com/adialaleal/odins/releases/download/v0.1.0/odins_0.1.0_darwin_amd64.tar.gz"
      sha256 "b2b608510b48f1eac82cb6c50bb2212b814fbba8f45ac16f9b105cac112f1eef"
    end
  end

  def install
    bin.install "odins"
  end

  test do
    assert_match "ODINS", shell_output("#{bin}/odins --help")
  end
end
