require "formula"

class Ebu < Formula
  homepage "http://green.ribbon.to/~ikazuhiro/dic/ebu.html"
  url "http://green.ribbon.to/~ikazuhiro/dic/files/ebu-4.5-20220808.tar.gz"
  version "4.5-20220808"
  sha256 "374e90f8738d0ffc7a1e2f3d1c2be70626135f89aeb0656bc7ab0a0eb66f5b89"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
