class MenubarToggle < Formula
  desc "Toggle the OSX menu bar's autohide behavior from the command line."
  homepage "https://github.com/sxmichaels/menubar-toggle"
  url "https://github.com/sxmichaels/menubar-toggle/archive/1.0.0.tar.gz"
  sha256 "4dafadd72f451e3c4bd996d890ecb4154dc99443bac19d127a8f5fd2563f7488"
  version "1.0.0"

  def install
    system "./build"
    bin.install "menubar-toggle"
  end

  test do
    system "#{bin}/menubar-toggle", "--version"
  end
end
