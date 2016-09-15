class MenubarToggle < Formula
  desc "Toggle the OSX menubar's autohide setting from the command-line."
  homepage "https://github.com/sxmichaels/menubar-toggle"
  url "https://github.com/sxmichaels/menubar-toggle/archive/1.0.1.tar.gz"
  sha256 "2c60e4b751a8dbca621bfba2b1a9f1cfddf1f6b539b9b226179e60c36273f813"

  def install
    system "./build"
    bin.install "menubar-toggle"
  end

  test do
    system "#{bin}/menubar-toggle", "--version"
  end
end
