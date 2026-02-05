class Helewiki < Formula
  include Language::Python::Virtualenv

  desc "CLI tool to extract Wikipedia articles from Wikimedia multistream bz2 dumps"
  homepage "https://github.com/Amorphous-LLC/helewiki"
  url "https://github.com/Amorphous-LLC/helewiki/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "09268fc12c680c39d0c45100308ed329d311fc5a5ced3bd904485136f8dd9c9d"
  license "GPL-2.0-or-later"

  depends_on "python@3.14"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"helewiki", "--help"
  end
end
