require "formula"

class Ebu < Formula
  homepage "http://green.ribbon.to/~ikazuhiro/dic/ebu.html"
  url "http://green.ribbon.to/~ikazuhiro/dic/files/ebu-4.4.3-20150301.tar.gz"
  version "4.4.3-20150301"
  sha256 "207fef55ebf1240b411dc3dd5dca01fb7b953e9f8b4b95d2e432e821db5e9fcc"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
