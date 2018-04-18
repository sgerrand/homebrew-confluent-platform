class ConfluentOss < Formula
  desc "Developer-optimized distribution of Apache Kafka"
  homepage "https://www.confluent.io/product/confluent-open-source/"
  url "https://packages.confluent.io/archive/4.0/confluent-oss-4.0.1-2.11.tar.gz"
  version "4.0.1"
  sha256 "335d1440a7cd18341a62c5e2584e8e0f7d52c3070940a60bde3166ad8bb1100e"

  depends_on :java => "1.8"
  conflicts_with "kafka", :because => "kafka also ships with identically named Kafka related executables"

  def install
    prefix.install "bin"
    rm_rf "#{bin}/windows"
    prefix.install "etc"
  end

  test do
    system "#{bin}/confluent", "current"
  end
end
