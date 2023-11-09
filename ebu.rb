require "formula"

class Ebu < Formula
  homepage "http://green.ribbon.to/~ikazuhiro/dic/ebu.html"
  url "http://green.ribbon.to/~ikazuhiro/dic/files/ebu-4.5-20220808.tar.gz"
  version "4.5-20220808"
  sha256 "df72d09a937dcc91586eff5b9e4d18b9d5d80bc78dd74e541b052f3ebe92a2a5"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end
end
