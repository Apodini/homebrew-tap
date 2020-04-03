class Grebe < Formula
  desc "Simplifies the gRPC-Swift development workflow."
  homepage "https://github.com/Apodini/Grebe"
  url "https://github.com/Apodini/Grebe/archive/0.0.3.tar.gz"
  sha256 "8e0f823f528a9ab869e64d66991eeb0b45bf6516dd657b33bb2529affa9c7b9c"
  
  def install
    system "swift", "build",
        "--product", "grebe",
        "--configuration", "release",
        "--disable-sandbox"
    bin.install '.build/release/grebe'
  end
end
