cask 'flock-agent' do
  version '0.1.4'
  sha256 '96a01373c940b28f4e02770ef3e7ab6377747ad7394c6f232b3b54df107c53c7'

  url "https://github.com/firstlookmedia/flock-agent/releases/download/v#{version}/FlockAgent-#{version}.pkg"
  appcast 'https://github.com/firstlookmedia/flock-agent/releases.atom'
  name 'Flock Agent'
  homepage 'https://github.com/firstlookmedia/flock-agent/'

  pkg "FlockAgent-#{version}.pkg"

  auto_updates true

  uninstall quit:      'media.firstlook.flock-agent',
            pkgutil:   [
                         'media.firstlook.flock-agent',
                         'com.facebook.osquery',
                       ],
            launchctl: [
                         'media.firstlook.flock-agent',
                         'com.facebook.osqueryd',
                       ],
            delete:    [
                         '/Library/LaunchAgents/com.facebook.osqueryd.plist',
                         '/Library/LaunchDaemons/media.firstlook.flock-agentd.plist',
                         '/private/var/log/osquery',
                         '/usr/local/etc/flock-agent',
                         '/usr/local/var/lib/flock-agent',
                         '/usr/local/var/log/flock-agent',
                         '~/Library/Application Support/Flock Agent/',
                       ]
end
