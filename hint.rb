class Hint < Formula
    desc "Context-aware assistant for developers"
    homepage "https://github.com/mrYush/hint"
    version "0.1.0"
    
    if OS.mac?
      if Hardware::CPU.arm?
        url "https://github.com/mrYush/hint/releases/download/v0.1.0/hint-darwin-arm64"
        sha256 "aa641a4400458699e34ec867848c9004c68f4a3b42dea2cc510884e0c821bec9"
      else
        url "https://github.com/mrYush/hint/releases/download/v0.1.0/hint-darwin-amd64"
        sha256 "a295e17f4476618a1285bcd1d3b7dba8e88a88fc0c1b5e41cfd41f268c273134"
      end
    elsif OS.linux?
      url "https://github.com/mrYush/hint/releases/download/v0.1.0/hint-linux-amd64"
      sha256 "c36a32edc2ee09a756f9d7a887279c4b4382a666960669c7f9477858152db2e1"
    end
    
    def install
      bin.install Dir["*"].first => "hint"
    end
    
    test do
      system "#{bin}/hint", "--help"
    end
  end