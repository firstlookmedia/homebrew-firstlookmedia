cask 'flock-agent' do
  version '0.1.2'
  sha256 'f0a5c6e56c0f8ce7afca9eb4c0c5bed55d86ac81d0b6ff662a578260f06266ce'

  url "https://github.com/firstlookmedia/flock-agent/releases/download/v#{version}/FlockAgent-#{version}.pkg"
  appcast 'https://github.com/firstlookmedia/flock-agent/releases.atom'
  name 'Flock Agent'
  homepage 'https://github.com/firstlookmedia/flock-agent/'

  pkg "FlockAgent-#{version}.pkg"

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
