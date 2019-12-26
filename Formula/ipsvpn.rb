class Ipsvpn < Formula
  desc "Shell function to connect IPSec VPN via terminal in mac"
  homepage "https://github.com/mabdh/ips-vpn"
  url "https://github.com/mabdh/ipsvpn/archive/v0.0.6.tar.gz"
  sha256 "ed5fae08f924708fbef6722d80dbe575e8b28d312ad8f93a76cbae37d8199a84"
  depends_on "oath-toolkit" => :recommended
  depends_on "strongswan" => :recommended

  def install
    bin.install "ipsvpn-down"
    bin.install "ipsvpn-up"
    bin.install "ipsvpn-setup"
    bin.install "ipsvpn-status"
  end

  test do
    assert_match "USAGE:", shell_output("#{bin}/ipsvpn-setup -h",1)
  end
end
