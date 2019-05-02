cask 'flock-agent' do
  version '0.0.5'
  sha256 'ac215d2e807c49ce80b13695e7a25950f4f76f5204b72cef5cfa23615909f375'

  url "https://github.com/firstlookmedia/flock-agent/releases/download/v#{version}/FlockAgent-#{version}.pkg"
  appcast 'https://github.com/firstlookmedia/flock-agent/releases.atom'
  name 'Flock Agent'
  homepage 'https://github.com/firstlookmedia/flock-agent/'

  pkg "FlockAgent-#{version}.pkg"

  uninstall pkgutil:   'media.firstlook.flock_agent',
            launchctl: 'media.firstlook.flock_agent'
end
