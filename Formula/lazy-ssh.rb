class LazySsh < Formula
  desc "Shell function to fuzzy search remote ssh address, connect to it automatically, and copy command to clipboard."
  homepage "https://github.com/mabdh/lazy-ssh"
  url "https://github.com/mabdh/lazy-ssh/archive/v0.0.2.zip"
  sha256 "436236414a88f7a30156608cd64ce60dffa995b6526ac144d14bb23cf3afcd07"
  depends_on "fzf" => :recommended
  def install
    bin.install "lazy-ssh"
  end
  test do
    assert_match "USAGE:", shell_output("#{bin}/lazy-ssh -h", 1)
  end
end
