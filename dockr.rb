class Dockr < Formula
  desc "DockR - Local development setup for Laravel using Docker"
  homepage "https://docs.dockr.in"
  url "https://github.com/sharanvelu/dockr/archive/refs/tags/v1.5.tar.gz"
  sha256 "cd9e3bf7de1f528b7f55fd53eda0d08ff42106672229bcd96d0a56027f8564f4"
  license "MIT"

  def install

    # DockR Home Dir
    inreplace "dockr", "${HOME}/dockr", "#{lib}"
    inreplace "dockr", "$(dirname $DOCKR_REALPATH)", "#{lib}"

    # DockR Data Dir
    inreplace "dockr", "${HOME}/.dockr", "#{include}"

    bin.install "dockr"

    lib.install Dir["*"]

    # Config Data Path
    system("mkdir #{include}")
    system("touch #{include}/config")
  end
end
