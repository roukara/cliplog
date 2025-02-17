class Cliplog < Formula
  desc "CLI tool to track clipboard history and export as Markdown"
  homepage "https://github.com/roukara/cliplog"
  url "https://github.com/roukara/cliplog/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "YOUR_SHA256_HASH_HERE"
  version "1.0.0"

  def install
    bin.install "cliplog"
    bin.install "cliplog_watcher.sh"
    bin.install "cliplog_export.sh"
  end

  def caveats
    <<~EOS
      Usage:
        cliplog start   # Start clipboard monitoring
        cliplog export  # Export clipboard history to Markdown
        cliplog stop    # Stop clipboard monitoring
    EOS
  end
end
