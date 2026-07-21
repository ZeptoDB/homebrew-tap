class Zeptodb < Formula
  desc "Ultra-low latency in-memory time-series database"
  homepage "https://zeptodb.github.io"
  version "0.1.8"
  license "Apache-2.0"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ZeptoDB/ZeptoDB/releases/download/v0.1.8/zeptodb-linux-amd64-0.1.8.tar.gz"
      sha256 "de3743bcbe31db6a30dde33174f4945dbb02d807346209f74e1e8f3539b86c11"
    end
    if Hardware::CPU.arm?
      url "https://github.com/ZeptoDB/ZeptoDB/releases/download/v0.1.8/zeptodb-linux-arm64-0.1.8.tar.gz"
      sha256 "9c52b7d12bac1452f012fe6caca3d1c8f37dcd2c2595955f27d0ac8c0569d2d3"
    end
  end

  def install
    bin.install "zepto_http_server"
    bin.install "zepto_data_node"
    bin.install "zepto_flight_server"
    bin.install "zepto-cli" => "zeptodb"
  end

  test do
    assert_predicate bin/"zeptodb", :executable?
  end
end
