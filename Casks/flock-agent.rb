cask 'flock-agent' do
  version '0.0.9'
  sha256 '51495a30df7c23497df1fbfc7cfdefc3a1280a9981992bfd345b2650fab4d90d'

  url "https://github.com/firstlookmedia/flock-agent/releases/download/v#{version}/FlockAgent-#{version}.pkg"
  appcast 'https://github.com/firstlookmedia/flock-agent/releases.atom'
  name 'Flock Agent'
  homepage 'https://github.com/firstlookmedia/flock-agent/'

  pkg "FlockAgent-#{version}.pkg"

  uninstall quit:      'media.firstlook.flock-agent',
            pkgutil:   'media.firstlook.flock_agent',
            pkgutil:   'com.facebook.osquery',
            launchctl: 'media.firstlook.flock_agent',
            delete:    '/Library/LaunchDaemons/com.facebook.osqueryd.plist',
            delete:    '/Library/LaunchDaemons/media.firstlook.flock-agentd.plist',
            delete:    '/private/var/log/osquery',
            delete:    '/usr/local/etc/flock-agent',
            delete:    '/usr/local/var/lib/flock-agent',
            delete:    '/usr/local/var/log/flock-agent',
            delete:    '~/Library/Application Support/Flock Agent/'
end
