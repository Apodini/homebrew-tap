class Grebe < Formula
  desc "Simplifies the gRPC-Swift development workflow."
  homepage "https://github.com/Apodini/Grebe"
  url "https://github.com/Apodini/Grebe/archive/0.0.1.tar.gz"
  sha256 "edd2e376170734329fd661b323e1deca15098d74d28d09f52d231740312e4d4c"
  
  def install
    system "swift", "build",
        "--product", "grebe",
        "--configuration", "release",
        "--disable-sandbox"
    bin.install '.build/release/grebe'
  end
end
