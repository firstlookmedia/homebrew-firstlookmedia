cask 'flock-agent' do
  version '0.0.4'
  sha256 'ccf69acba6cbd37e529070e2f1b2be24a15cce91667c64dd15786451f4582e3d'

  url "https://github.com/firstlookmedia/flock-agent/releases/download/v#{version}/FlockAgent-#{version}.pkg"
  appcast 'https://github.com/firstlookmedia/flock-agent/releases.atom'
  name 'Flock Agent'
  homepage 'https://github.com/firstlookmedia/flock-agent/'

  pkg "FlockAgent-#{version}.pkg"

  uninstall pkgutil:   'media.firstlook.flock_agent',
            launchctl: 'media.firstlook.flock_agent'
end
