class LazySsh < Formula
  desc "Shell function to fuzzy search remote ssh address, connect to it automatically, and copy command to clipboard."
  homepage "https://github.com/mabdh/lazy-ssh"
  url "https://github.com/mabdh/lazy-ssh/archive/v0.0.3.zip"
  sha256 "214d7e8b599e92228737fbbdfcb9c5056c0d4d184bd5dcf05f65f236797f42d0"
  depends_on "fzf" => :recommended
  def install
    bin.install "lazy-ssh"
  end
  test do
    assert_match "USAGE:", shell_output("#{bin}/lazy-ssh -h", 1)
  end
end
