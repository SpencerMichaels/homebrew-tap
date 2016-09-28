class MenubarToggle < Formula
  desc "Toggle the OSX menubar's autohide setting from the command-line."
  homepage "https://github.com/sxmichaels/menubar-toggle"
  url "https://github.com/sxmichaels/menubar-toggle/archive/2.0.2.tar.gz"
  sha256 "f72b96cb3ea83979cac5667c971a6b588ab862b9134c027b3a4925f03036064a"

  # Only OS X El Capitan and newer support the menubar auto-hide functionality
  depends_on :macos => :el_capitan

  def install
    system "swift build --configuration release"
    bin.install "./.build/release/menubar-toggle"
  end

  test do
    system "#{bin}/menubar-toggle", "--version"
  end
end
