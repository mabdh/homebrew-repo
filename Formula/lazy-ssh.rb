class LazySsh < Formula
  desc "Shell function to fuzzy search remote ssh address, connect to it automatically, and copy command to clipboard."
  homepage "https://github.com/mabdh/lazy-ssh"
  url "https://github.com/mabdh/lazy-ssh/archive/v0.0.5.zip"
  sha256 "4a9b424b0fff3cadbf273d46881aeb4c828022434d59ac532cc8a6db6b9c4b4f"
  depends_on "fzf" => :recommended
  def install
    bin.install "lazy-ssh"
  end
  test do
    assert_match "USAGE:", shell_output("#{bin}/lazy-ssh -h", 1)
  end
end
