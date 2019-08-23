cask 'flock-agent' do
  version '0.0.6'
  sha256 '96aa6e96fa8a39d7928cc253da064ab70610c81184521b8ab6aa21cf76833abf'

  url "https://github.com/firstlookmedia/flock-agent/releases/download/v#{version}/FlockAgent-#{version}.pkg"
  appcast 'https://github.com/firstlookmedia/flock-agent/releases.atom'
  name 'Flock Agent'
  homepage 'https://github.com/firstlookmedia/flock-agent/'

  pkg "FlockAgent-#{version}.pkg"

  uninstall pkgutil:   'media.firstlook.flock_agent',
            launchctl: 'media.firstlook.flock_agent'
end
