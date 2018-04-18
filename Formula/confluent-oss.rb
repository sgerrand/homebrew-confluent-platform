class ConfluentOss < Formula
  desc "Developer-optimized distribution of Apache Kafka"
  homepage "https://www.confluent.io/product/confluent-open-source/"
  url "https://packages.confluent.io/archive/4.0/confluent-oss-4.0.0-2.11.tar.gz"
  version "4.0.0"
  sha256 "5cfa68b4368f28bd9231786bb710431394dc14a2b37eecf360e820271ee84f43"

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
