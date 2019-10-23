cask 'flock-agent' do
  version '0.0.11'
  sha256 'bae1cd085867fa107978c4c7a5b45904ff922d353109eb5aa715cd028059edd7'

  url "https://github.com/firstlookmedia/flock-agent/releases/download/v#{version}/FlockAgent-#{version}.pkg"
  appcast 'https://github.com/firstlookmedia/flock-agent/releases.atom'
  name 'Flock Agent'
  homepage 'https://github.com/firstlookmedia/flock-agent/'

  pkg "FlockAgent-#{version}.pkg"

  uninstall quit:      'media.firstlook.flock-agent',
            pkgutil:   'media.firstlook.flock-agent',
            pkgutil:   'com.facebook.osquery',
            launchctl: 'media.firstlook.flock-agent',
            delete:    '/Library/LaunchDaemons/com.facebook.osqueryd.plist',
            delete:    '/Library/LaunchDaemons/media.firstlook.flock-agentd.plist',
            delete:    '/private/var/log/osquery',
            delete:    '/usr/local/etc/flock-agent',
            delete:    '/usr/local/var/lib/flock-agent',
            delete:    '/usr/local/var/log/flock-agent',
            delete:    '~/Library/Application Support/Flock Agent/'
end
