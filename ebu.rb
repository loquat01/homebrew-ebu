require "formula"

class Ebu < Formula
  homepage "http://green.ribbon.to/~ikazuhiro/dic/ebu.html"
  url "http://green.ribbon.to/~ikazuhiro/dic/files/ebu-4.5-20200413.tar.gz"
  version "4.5-20200413"
  sha256 "bd9ceaef2a0a43049aead871b3bf9b56cadee59ad2478b13c77130fe8694c1f1"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
