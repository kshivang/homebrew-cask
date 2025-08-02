cask "armory" do
  version "0.96.5"
  sha256 "53d0286e54bad62309f3a79a33118f2d1f369be36f9a08b07e61d04aa39f6516"

  url "https://github.com/goatpig/BitcoinArmory/releases/download/v#{version}/armory_#{version}_osx.tar.gz",
      verified: "github.com/"
  name "Armory"
  desc "Python-Based Bitcoin Software"
  homepage "https://btcarmory.com/"

  # This is the default strategy, but we need to explicitly
  # specify it to continue checking it while it is deprecated
  livecheck do
    url :url
    strategy :git
  end

  disable! date: "2026-09-01", because: :unsigned

  app "Armory.app"

  caveats do
    requires_rosetta
  end
end
