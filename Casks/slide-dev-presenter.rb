cask "slide-dev-presenter" do
  version "0.0.4"

  on_arm do
    url "https://github.com/norschel/SlidevPresenter/releases/download/v0.0.4/SlideDevPresenter-osx-arm64.pkg"
    sha256 "58325d0a3ccb27231af64a12a03bdb3604b78dcca8cec6a84e57db919c6b0593"
    pkg "SlideDevPresenter-osx-arm64.pkg"
  end

  on_intel do
    url "https://github.com/norschel/SlidevPresenter/releases/download/v0.0.4/SlideDevPresenter-osx-x64.pkg"
    sha256 "577d7060b693b0603939e35bc5e54594b898c582d48d316744512a8566d85ac1"
    pkg "SlideDevPresenter-osx-x64.pkg"
  end

  name "SlideDevPresenter"
  desc "Desktop presenter for Slidev presentations"
  homepage "https://github.com/norschel/SlidevPresenter"

  uninstall pkgutil: "com.norschel.slidedevpresenter",
           delete: "/Applications/SlideDevPresenter.app"
end
