class Vautopn < Formula
  desc "Shell function to fuzzy search an IPSec VPN by name and connect to it automatically."
  homepage "https://github.com/mabdh/vautopn"
  url "https://github.com/mabdh/vautopn/archive/v0.0.5.zip"
  sha256 "c6e8ecaf3cfae08902134f8732ddbac3e23c9afee9811d849e01f60c7ccc98de"
  depends_on "oath-toolkit" => :recommended
  depends_on "fzf" => :recommended
  def install
    bin.install "vautopn"
  end
  test do
    assert_match "USAGE:", shell_output("#{bin}/vautopn -h", 1)
  end
end
