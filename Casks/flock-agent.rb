cask 'flock-agent' do
  version '0.1.5'
  sha256 '0edfbd402b887042c287c4d175ca43eb0f4104ea3873253607e682ea602ae6a8'

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
