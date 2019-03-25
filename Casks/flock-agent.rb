cask 'flock-agent' do
  version '0.0.2'
  sha256 'd202bfb3de22146d4d2c38862e6c4d889315abe06b5aef87fea0d44b54728439'

  url "https://github.com/firstlookmedia/flock-agent/releases/download/v#{version}/FlockAgent-#{version}.pkg"
  appcast 'https://github.com/firstlookmedia/flock-agent/releases.atom'
  name 'Flock Agent'
  homepage 'https://github.com/firstlookmedia/flock-agent/'

  pkg "FlockAgent-#{version}.pkg"

  uninstall pkgutil:   'media.firstlook.flock_agent',
            launchctl: 'media.firstlook.flock_agent'
end
