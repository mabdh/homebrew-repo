class Ipsvpn < Formula
  desc "Shell function to connect IPSec VPN via terminal in mac"
  homepage "https://github.com/mabdh/ips-vpn"
  url "https://github.com/mabdh/ipsvpn/archive/v0.0.8.tar.gz"
  sha256 "a1f8f6a047473abe50f3b41804dd684f07b2f67d7fa0a94823efbc1378c87887"
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
