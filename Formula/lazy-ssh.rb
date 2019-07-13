class LazyConnect < Formula
  desc "Shell function to fuzzy search remote ssh address, connect to it automatically, and copy command to clipboard."
  homepage "https://github.com/mabdh/lazy-ssh"
  url "https://github.com/mabdh/lazy-ssh/archive/v0.0.1.zip"
  sha256 "5bc394efe7dddfe9df9d9d81cd4a738e347912c5ad7eca4a7e70ad8ae822a218"
  depends_on "fzf" => :recommended
  def install
    bin.install "lazy-ssh"
  end
  test do
    assert_match "USAGE:", shell_output("#{bin}/lazy-ssh -h", 1)
  end
end
