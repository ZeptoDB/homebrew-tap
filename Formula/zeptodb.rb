class Zeptodb < Formula
  desc "Ultra-low latency in-memory time-series database"
  homepage "https://zeptodb.github.io"
  version "0.1.5"
  license "Apache-2.0"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ZeptoDB/ZeptoDB/releases/download/v0.1.5/zeptodb-linux-amd64-0.1.5.tar.gz"
      sha256 "5c0932d7b9c93cdab6d0ad2d05b59cf7c3f673fd0f7ce31f592d00c7042eecd1"
    end
    if Hardware::CPU.arm?
      url "https://github.com/ZeptoDB/ZeptoDB/releases/download/v0.1.5/zeptodb-linux-arm64-0.1.5.tar.gz"
      sha256 "f6652030658e04243f34722095fb0b7cfa786c19745c5c241e62118a7dc4cc81"
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
