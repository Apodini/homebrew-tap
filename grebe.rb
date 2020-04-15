class Grebe < Formula
  desc "Simplifies the gRPC-Swift development workflow."
  homepage "https://github.com/Apodini/Grebe"
  url "https://github.com/Apodini/Grebe/archive/0.0.5.tar.gz"
  sha256 "d80b4afe6f0a24a2a07550f328232b5c8feef4af345e5f462d66f503d6b50c45"
  
  def install
    system "swift", "build",
        "--product", "grebe",
        "--configuration", "release",
        "--disable-sandbox"
    bin.install '.build/release/grebe'
  end
end
