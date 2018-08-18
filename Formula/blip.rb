class Blip < Formula
  desc "Bash Library for Indolent Programmers"
  homepage "https://nicolaw.uk/blip"
  url "https://github.com/neechbear/blip/releases/download/v0.10-1/blip-0.10.tar.gz"
  sha256 "65d503cb36e7328967b2d1ae3dd91b729d1b61b7837c3212a5204728d3c96fa4"
  depends_on "jq" => :optional
  depends_on "grep" => :recommended
  depends_on "coreutils" => :recommended

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "make", "test"
  end
end
