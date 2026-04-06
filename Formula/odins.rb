class Odins < Formula
  desc "The All-Father of Local DNS — Local DNS + Reverse Proxy manager for macOS"
  homepage "https://github.com/adialaleal/odins"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adialaleal/odins/releases/download/v0.2.0/odins_0.2.0_darwin_arm64.tar.gz"
      sha256 "ea48a7e3e975187a6816459f20c07e8ef82a2468073860e1ea225e72d1805d51"
    else
      url "https://github.com/adialaleal/odins/releases/download/v0.2.0/odins_0.2.0_darwin_amd64.tar.gz"
      sha256 "6352f53499ac413d5654ed6cfa5ea82b1c8544117f44ae40c4208b0ff146c113"
    end
  end

  def install
    bin.install "odins"
  end

  test do
    assert_match "ODINS", shell_output("#{bin}/odins --help")
  end
end
