cask 'menubar-toggle-cask' do
  version '2.0.3'
  sha256 '4bae39c5ee9ec75792d51c236693a3da4969e753ccf2fd45131f9e5697e30966'

  url "https://github.com/sxmichaels/menubar-toggle/releases/download/#{version.major_minor_patch}/menubar-toggle-#{version}-binary-el_capitan.tar.gz"
  appcast 'https://github.com/sxmichaels/menubar-toggle/releases.atom',
          checkpoint: 'c97f38364ec1f374e72660c07b7117f0447ec590fb1ac7d6c1645722d46e7c0e'
  name 'Menubar Toggle'
  homepage 'https://github.com/sxmichaels/menubar-toggle'
  license :public_domain

  # Only OS X El Capitan and newer support the menubar auto-hide functionality
  depends_on macos: '>= :el_capitan'

  binary "."

#  def install
#    bin.install,"menubar-toggle"
#  end

  test do
    system "#{bin}/menubar-toggle", "--version"
  end

end
