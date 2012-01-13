require 'formula'

class Libtool < Formula
  url 'http://ftpmirror.gnu.org/libtool/libtool-2.4.2.tar.gz'
  mirror 'http://ftp.gnu.org/libtool/libtool-2.4.2.tar.gz'
  homepage 'http://www.gnu.org/software/libtool/'
  md5 'd2f3b7d4627e69e13514a40e72a24d50'

  depends_on 'autoconf'

  keg_only <<-EOS.undent
    In order to prevent conflicts with the system-provided m4, this formula
    is keg-only.
  EOS

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
