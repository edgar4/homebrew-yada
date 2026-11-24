class Yada < Formula
  desc "Coding agent for your terminal"
  homepage "https://yada.edgar.co.ke"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/edgar4/yada/releases/download/v0.6.0/yada-darwin-arm64.tar.gz"
      sha256 "1b924293cc7e7a47c3f98ed067102180ea630e2bf6b780d0c1f0619b8bfc14a1"
    end
    on_intel do
      url "https://github.com/edgar4/yada/releases/download/v0.6.0/yada-darwin-x64.tar.gz"
      sha256 "059a1dd90341ea35e942e0d3fe03d999a0e77a53b1015afe154f13a0b8b100ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/edgar4/yada/releases/download/v0.6.0/yada-linux-arm64.tar.gz"
      sha256 "a05940b837c9e62521903d6637401d6c565b5ae57b3b6bca27f8ca48414a9b70"
    end
    on_intel do
      url "https://github.com/edgar4/yada/releases/download/v0.6.0/yada-linux-x64.tar.gz"
      sha256 "33c43f6e1d250b59d56670e6bcddc35405fc952733a13f6dc7cf9f4737801706"
    end
  end

  def install
    bin.install "yada"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yada --version")
  end
end
