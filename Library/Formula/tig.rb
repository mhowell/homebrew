require 'formula'

class Tig < Formula
  homepage 'http://jonas.nitro.dk/tig/'
  url 'http://jonas.nitro.dk/tig/releases/tig-1.2.1.tar.gz'
  sha1 'cbd948f51c784ea245db5df32e922669f0a24805'

  def install
    system "./configure", "--prefix=#{prefix}", "--sysconfdir=#{etc}"
    system "make install"
    system "make install-doc-man"

    doc.install Dir['*.html']
    bash_completion.install 'contrib/tig-completion.bash'
  end
end
