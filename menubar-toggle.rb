class MenubarToggle < Formula
  desc "Toggle the OSX menubar's autohide setting from the command-line."
  homepage "https://github.com/sxmichaels/menubar-toggle"
  url "https://github.com/sxmichaels/menubar-toggle/archive/2.0.0.tar.gz"
  sha256 "318c3d2122c3acde1afaf2570a3e7b938cc80bff4761ecc4177b1d659e18edf3"

  depends_on :macos => :el_capitan
  depends_on "swift"

  def install
    system "swift build --configuration release"
    bin.install "./.build/release/menubar-toggle"
  end

  test do
    system "#{bin}/menubar-toggle", "--version"
  end
end
