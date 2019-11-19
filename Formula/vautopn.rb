class Vautopn < Formula
  desc "Shell function to fuzzy search an IPSec VPN by name and connect to it automatically."
  homepage "https://github.com/mabdh/vautopn"
  url "https://github.com/mabdh/vautopn/archive/v0.0.7.zip"
  sha256 "47a9a77f22d69888eb796ac9326d1527d4a8185356dea5d871f11cf6db66c368"
  depends_on "oath-toolkit" => :recommended
  depends_on "fzf" => :recommended
  def install
    bin.install "vautopn"
  end
  test do
    assert_match "USAGE:", shell_output("#{bin}/vautopn -h", 1)
  end
end
