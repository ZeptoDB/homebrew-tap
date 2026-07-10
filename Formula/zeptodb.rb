class Zeptodb < Formula
  desc "Ultra-low latency in-memory time-series database"
  homepage "https://zeptodb.github.io"
  version "0.1.7"
  license "Apache-2.0"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ZeptoDB/ZeptoDB/releases/download/v0.1.7/zeptodb-linux-amd64-0.1.7.tar.gz"
      sha256 "46aa55e1c96c484ff96f5f7b1d22a5a86b483fb91a3af0f7d46eb911d14479fd"
    end
    if Hardware::CPU.arm?
      url "https://github.com/ZeptoDB/ZeptoDB/releases/download/v0.1.7/zeptodb-linux-arm64-0.1.7.tar.gz"
      sha256 "b46ae10103ba75867d9e9602f41926ce639ea493ccd7713d42b40190b35ada96"
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
