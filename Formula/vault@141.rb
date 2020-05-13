class VaultAT141 < Formula    
    homepage 'https://www.vaultproject.io/'
    url 'https://releases.hashicorp.com/vault/1.4.1/vault_1.4.1_darwin_amd64.zip'
    sha256 '4ec90cc96259fcabb090180f85a1d4f67af88d8e21a84cb0102df22cb01e360c'
    
    def install
      bin.install "vault"
    end
end