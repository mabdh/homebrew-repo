cask 'chef-dk@420' do
 version "4.2.0"
  sha256 "74171bc6c662bd76c405b4c6587b8f43a4783b8439bdadb711818182fa42e1fb"

  homepage "https://downloads.chef.io/chefdk"
  url "https://packages.chef.io/files/stable/chefdk/#{version}/mac_os_x/10.14/chefdk-#{version}-1.dmg"
  appcast "https://www.chef.io/chef/metadata-chefdk?p=mac_os_x&pv=10.14&m=x86_64&v=latest&prerelease=false"
  name "Chef Development Kit"
  name "ChefDK"

  depends_on macos: ">= :high_sierra"

  pkg "chefdk-#{version}-1.pkg"

  # As suggested in https://docs.chef.io/install_dk.html#mac-os-x
  uninstall_postflight do
    system_command "/usr/bin/find",
                   args: ["/usr/local/bin", "-lname", "/opt/chefdk/*", "-delete"],
                   sudo: true
  end

  uninstall pkgutil: "com.getchef.pkg.chefdk",
            delete:  "/opt/chefdk/"

  zap trash: "~/.chefdk/" 
end
