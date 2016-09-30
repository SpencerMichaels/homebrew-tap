class MenubarToggleBinary < Formula
  desc "Toggle the OSX menubar's autohide setting from the command-line."
  homepage 'https://github.com/sxmichaels/menubar-toggle'
  version '2.0.3'
  sha256 '4bae39c5ee9ec75792d51c236693a3da4969e753ccf2fd45131f9e5697e30966'
  url "https://github.com/sxmichaels/menubar-toggle/releases/download/2.0.3/menubar-toggle-2.0.3-binary-el_capitan.tar.gz"

  # Only OS X El Capitan and newer support the menubar auto-hide functionality
  depends_on :macos => :el_capitan

  bottle :unneeded

  def install
    bin.install "menubar-toggle"
  end

  test do
    system "#{bin}/menubar-toggle", "--version"
  end

end
