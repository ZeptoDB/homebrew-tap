class Zeptodb < Formula
  desc "Ultra-low latency in-memory time-series database"
  homepage "https://zeptodb.github.io"
  version "0.0.2"
  license "Apache-2.0"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ZeptoDB/ZeptoDB/releases/download/v0.0.2/zeptodb-linux-amd64-0.0.2.tar.gz"
      sha256 "f9e02b5e275ab6b627b7ff10429ee91d842b53242ea442466e6e3837079ca206"
    end
    if Hardware::CPU.arm?
      url "https://github.com/ZeptoDB/ZeptoDB/releases/download/v0.0.2/zeptodb-linux-arm64-0.0.2.tar.gz"
      sha256 "e4a282d4b0ee53ab42b23291ed5d1dab822eb4a18bdba3381f961527c7eaf16f"
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
