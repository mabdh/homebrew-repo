class LazySsh < Formula
  desc "Shell function to fuzzy search remote ssh address, connect to it automatically, and copy command to clipboard."
  homepage "https://github.com/mabdh/lazy-ssh"
  url "https://github.com/mabdh/lazy-ssh/archive/v0.0.4.zip"
  sha256 "884fec567dd3aa222ddef29568b748eabdd47233c5cf212b9c4d4879747ad848"
  depends_on "fzf" => :recommended
  def install
    bin.install "lazy-ssh"
  end
  test do
    assert_match "USAGE:", shell_output("#{bin}/lazy-ssh -h", 1)
  end
end
