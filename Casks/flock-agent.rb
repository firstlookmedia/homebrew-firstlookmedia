cask 'flock-agent' do
  version '0.0.3'
  sha256 '499ea29cfed1d28f168a52042193f39e5d1d098855331f075e30f7c4eb74ecfd'

  url "https://github.com/firstlookmedia/flock-agent/releases/download/v#{version}/FlockAgent-#{version}.pkg"
  appcast 'https://github.com/firstlookmedia/flock-agent/releases.atom'
  name 'Flock Agent'
  homepage 'https://github.com/firstlookmedia/flock-agent/'

  pkg "FlockAgent-#{version}.pkg"

  uninstall pkgutil:   'media.firstlook.flock_agent',
            launchctl: 'media.firstlook.flock_agent'
end
