# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://docs.brew.sh/rubydoc/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Helewiki < Formula
  include Language::Python::Virtualenv

  desc "CLI tool for extracting Wikipedia articles from Wikimedia’s database multistream bz2 dumps"
  homepage "https://github.com/Amorphous-LLC/helewiki"
  url "https://github.com/Amorphous-LLC/helewiki/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "09268fc12c680c39d0c45100308ed329d311fc5a5ced3bd904485136f8dd9c9d"
  license "GPL-2.0-or-later"

  depends_on "python@3.14"

  # Additional dependency
  # resource "" do
  #   url ""
  #   sha256 ""
  # end

  def install
    virtualenv_install_with_resources
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test helewiki`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system bin/"program", "do", "something"`.
    system bin/"helewiki", "--help"
  end
end
