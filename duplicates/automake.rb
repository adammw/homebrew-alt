require 'formula'

class Automake < Formula
  url 'http://ftpmirror.gnu.org/gnu/automake/automake-1.11.3.tar.gz'
  mirror 'http://ftp.gnu.org/gnu/automake/automake-1.11.3.tar.gz'
  homepage 'http://www.gnu.org/software/automake'
  md5 '93ecb319f0365cb801990b00f658d026'

  depends_on 'autoconf'

  keg_only <<-EOS.undent
    In order to prevent conflicts with the system-provided automake, this formula
    is keg-only.
  EOS

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make install"

    # Use homebrew aclocal
    rmdir share+"aclocal"
    ln_s HOMEBREW_PREFIX+"share/aclocal", share+"aclocal"
  end
end
