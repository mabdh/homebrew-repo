class Vautopn < Formula
  desc "Shell function to fuzzy search an IPSec VPN by name and connect to it automatically."
  homepage "https://github.com/mabdh/vautopn"
  url "https://github.com/mabdh/vautopn/archive/v0.0.4.zip"
  sha256 "91bed77edbf7aa686c231137d156db35d13eff20f440be9e1f2edbd73aa5b807"
  depends_on "oath-toolkit" => :recommended
  depends_on "fzf" => :recommended
  def install
    bin.install "vautopn"
  end
  test do
    assert_match "USAGE:", shell_output("#{bin}/vautopn -h", 1)
  end
end
