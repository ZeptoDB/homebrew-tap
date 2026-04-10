class Zeptodb < Formula
  desc "Ultra-low latency in-memory time-series database"
  homepage "https://zeptodb.github.io"
  version "0.0.3"
  license "Apache-2.0"

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ZeptoDB/ZeptoDB/releases/download/v0.0.3/zeptodb-linux-amd64-0.0.3.tar.gz"
      sha256 "f560635b6a46f1fea441e55a09e976ed9fe9878e4ee629325530f2d569203f0d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/ZeptoDB/ZeptoDB/releases/download/v0.0.3/zeptodb-linux-arm64-0.0.3.tar.gz"
      sha256 "9dfaca1707bd7ec397c741129ed651b3f643a388a2b798e8169c358bc3140035"
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
