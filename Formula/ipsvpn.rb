class Ipsvpn < Formula
  desc "Shell function to connect IPSec VPN via terminal in mac"
  homepage "https://github.com/mabdh/ips-vpn"
  url "https://github.com/mabdh/ipsvpn/archive/v0.0.2.tar.gz"
  sha256 "82c68c9876adf328f108be9b1c553b3c0e740391051f19eaa9668e67e954a5f9"
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
