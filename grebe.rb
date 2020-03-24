class Grebe < Formula
  desc "Simplifies the gRPC-Swift development workflow."
  homepage "https://github.com/Apodini/Grebe"
  url "https://github.com/Apodini/Grebe/archive/1.0.0.tar.gz"
  sha256 "83903f3b2db6b39f2abe1003a0c33fd9f1122db02aafd23e256c2af7a52a5b08"
  
  def install
    system "swift", "build",
        "--product", "Grebe-CLI",
        "--configuration", "release",
        "--disable-sandbox"
    bin.install '.build/release/Grebe-CLI'
  end
end
