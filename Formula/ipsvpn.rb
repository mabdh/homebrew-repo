class Ipsvpn < Formula
  desc "Shell function to connect IPSec VPN via terminal in mac"
  homepage "https://github.com/mabdh/ips-vpn"
  url "https://github.com/mabdh/ipsvpn/archive/v0.0.4.tar.gz"
  sha256 "8cd89a9e030403daaa5f8dc65dc64ed8115981b572bde2800948dfb832be232a"
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
