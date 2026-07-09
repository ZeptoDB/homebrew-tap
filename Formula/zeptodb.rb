class Zeptodb < Formula
  desc "Ultra-low latency in-memory time-series database"
  homepage "https://zeptodb.github.io"
  version "0.1.6"
  license "Apache-2.0"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ZeptoDB/ZeptoDB/releases/download/v0.1.6/zeptodb-linux-amd64-0.1.6.tar.gz"
      sha256 "5e4a2f56aa660dc28d6c716a7d65efb2cd5f06697dac054b8d225f8867275a1d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/ZeptoDB/ZeptoDB/releases/download/v0.1.6/zeptodb-linux-arm64-0.1.6.tar.gz"
      sha256 "2a749e963583cb00838aee2bf1b52788cc7081c8219f0df3d2d3065969f3cc5a"
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
