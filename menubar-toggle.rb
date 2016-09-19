class MenubarToggle < Formula
  desc "Toggle the OSX menubar's autohide setting from the command-line."
  homepage "https://github.com/sxmichaels/menubar-toggle"
  url "https://github.com/sxmichaels/menubar-toggle/archive/1.0.1.tar.gz"
  sha256 "7803749b6da1fde073226d7a02f0cef5a41066cd2d88eaef7d775bf3246c0b13"

  def install
    system "./build"
    bin.install "menubar-toggle"
  end

  test do
    system "#{bin}/menubar-toggle", "--version"
  end
end
