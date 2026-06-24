class Zeptodb < Formula
  desc "Ultra-low latency in-memory time-series database"
  homepage "https://zeptodb.github.io"
  version "0.1.4"
  license "Apache-2.0"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ZeptoDB/ZeptoDB/releases/download/v0.1.4/zeptodb-linux-amd64-0.1.4.tar.gz"
      sha256 "e28e028d23661eecba4aaea53ddbf6de4d47137ac26ff6b351c14453b4872ed1"
    end
    if Hardware::CPU.arm?
      url "https://github.com/ZeptoDB/ZeptoDB/releases/download/v0.1.4/zeptodb-linux-arm64-0.1.4.tar.gz"
      sha256 "ded5a6298763f30c6a7c7b04bcea9157994b268e332adf32790061bf496f2f5c"
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
