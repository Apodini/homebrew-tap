class Grebe < Formula
  desc "Simplifies the gRPC-Swift development workflow."
  homepage "https://github.com/Apodini/Grebe"
  url "https://github.com/Apodini/Grebe/archive/0.0.2.tar.gz"
  sha256 "af305b5a1f6795d702dbcada38d6eb5e85e3605c1ca045a9147b827ec181b299"
  
  def install
    system "swift", "build",
        "--product", "grebe",
        "--configuration", "release",
        "--disable-sandbox"
    bin.install '.build/release/grebe'
  end
end
