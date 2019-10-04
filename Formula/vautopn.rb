class Vautopn < Formula
  desc "Shell function to fuzzy search an IPSec VPN by name and connect to it automatically."
  homepage "mabdh.com"
  url "https://github.com/mabdh/vautopn/archive/v0.0.3.zip"
  sha256 "00e50e131dcca4e76920cfa5cee2ae80e307f82a2c9d7728dddca68a3d37f7c6"

  def install
    bin.install "vautopn"
  end
  test do
    assert_match "USAGE:", shell_output("#{bin}/vautopn -h", 1)
  end
end
