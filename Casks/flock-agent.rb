cask 'flock-agent' do
  version '0.0.10'
  sha256 '78aa1cf9917d4fdb498ef015bf7948b48a53a4e3d0ce9ab4fa61df19941b86ce'

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
