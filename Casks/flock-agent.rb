cask 'flock-agent' do
  version '0.1.1'
  sha256 '411bd38914d4afe3c3e7cfd6f4507c3c740d6427094073e9cbee32697c2b4a10'

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
