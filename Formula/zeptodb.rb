class Zeptodb < Formula
  desc "Ultra-low latency in-memory time-series database"
  homepage "https://zeptodb.github.io"
  version "0.1.2"
  license "Apache-2.0"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ZeptoDB/ZeptoDB/releases/download/v0.1.2/zeptodb-linux-amd64-0.1.2.tar.gz"
      sha256 "536f362b6d6b77f374f789bdb39dcee81f1894e0542ef988560b7c681df71da6"
    end
    if Hardware::CPU.arm?
      url "https://github.com/ZeptoDB/ZeptoDB/releases/download/v0.1.2/zeptodb-linux-arm64-0.1.2.tar.gz"
      sha256 "03be7f86cdca2e0d767fcfaca916f27b7d0bf5f9c12b83f2faff1c2c9dedf4f3"
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
