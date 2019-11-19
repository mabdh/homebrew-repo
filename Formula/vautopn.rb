class Vautopn < Formula
  desc "Shell function to fuzzy search an IPSec VPN by name and connect to it automatically."
  homepage "https://github.com/mabdh/vautopn"
  url "https://github.com/mabdh/vautopn/archive/v0.0.6.zip"
  sha256 "5adf3922c0fd16ce5e6e99a0296635099ef5c8c2bd783aedb8c03b96cb771d48"
  depends_on "oath-toolkit" => :recommended
  depends_on "fzf" => :recommended
  def install
    bin.install "vautopn"
  end
  test do
    assert_match "USAGE:", shell_output("#{bin}/vautopn -h", 1)
  end
end
