class Bbsclient < Formula
  desc "Terminal client for ISCA and DOC BBS systems"
  homepage "https://github.com/StilgarISCA/IoErrorBbsClient"
  url "https://github.com/StilgarISCA/IoErrorBbsClient/releases/download/v3.0.0-Stilgar/ioerrorbbsclient-3.0.0-Stilgar.tar.gz"
  sha256 "56f53398eeea7eb0efc8a25b9f1ff5857781b72b553b97e695babc6446a04873"
  license "GPL-2.0-or-later"

  depends_on :macos

  def install
    system "./configure", "--prefix=#{prefix}",
                          "--enable-release-build",
                          "--enable-keychain",
                          "--disable-native-optimizations"
    system "make"
    system "make", "install"
  end

  test do
    assert_path_exists bin/"bbs"
    assert_path_exists man1/"bbs.1"
  end
end
