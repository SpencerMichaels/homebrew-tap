class MenubarToggle < Formula
  desc "Toggle the OSX menubar's autohide setting from the command-line."
  homepage "https://github.com/sxmichaels/menubar-toggle"
  url "https://github.com/sxmichaels/menubar-toggle/archive/2.0.1.tar.gz"
  sha256 "03cbc4a97a2e20b7f402073894c71ba8587e94c04527a7f305b0fd88ec834e54"

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
