class MenubarToggle < Formula
  desc "Toggle the OSX menubar's autohide setting from the command-line."
  homepage "https://github.com/sxmichaels/menubar-toggle"
  url "https://github.com/sxmichaels/menubar-toggle/archive/2.0.3.tar.gz"
  sha256 "40fc310c56525876f1cdb2cb20bedf6de29c979aa320c8281dee178ffe55754a"

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
