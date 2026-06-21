class Zeptodb < Formula
  desc "Ultra-low latency in-memory time-series database"
  homepage "https://zeptodb.github.io"
  version "0.1.3"
  license "Apache-2.0"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ZeptoDB/ZeptoDB/releases/download/v0.1.3/zeptodb-linux-amd64-0.1.3.tar.gz"
      sha256 "d7c2232ea01845eabcea567a5907d71eca4b6d3f91662bcc8b1fe97092bc8771"
    end
    if Hardware::CPU.arm?
      url "https://github.com/ZeptoDB/ZeptoDB/releases/download/v0.1.3/zeptodb-linux-arm64-0.1.3.tar.gz"
      sha256 "18135462a9bca4cc7d70b65355bbf9b964af917d2e4da00aba922542d63fd341"
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
