class MoiraiAT110 < Formula
  desc "MOIRAI: Manage C++ Objects's lifetime when exposed through a C API"
  homepage "https://github.com/csiro-hydroinformatics/moirai"
  url "https://github.com/csiro-hydroinformatics/moirai.git", tag: "1.1"
  license "MIT"
  head "https://github.com/csiro-hydroinformatics/moirai.git", branch: "master"

  depends_on "cmake" => :build

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  test do
    system "false"
  end
end
