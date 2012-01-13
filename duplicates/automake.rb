require 'formula'

class Automake < Formula
  url 'http://ftpmirror.gnu.org/gnu/automake/automake-1.11.2.tar.gz'
  mirror 'http://ftp.gnu.org/gnu/automake/automake-1.11.2.tar.gz'
  homepage 'http://www.gnu.org/software/automake'
  md5 '79ad64a9f6e83ea98d6964cef8d8a0bc'

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
