require 'spec_helper'

describe 'sickbeard::install', :type => :class do
  context 'on Debian' do
    let :facts do
      {
        :osfamily => 'Debian',
      }
    end

    it { should contain_sickbeard__install }

    it do
      should contain_vcsrepo('sickbeard').with(
        :ensure => 'latest',
        :provider => 'git',
      )
    end

    it do
      should contain_file('/etc/init.d/sickbeard').with(
        :ensure => 'present',
        :source => '/sickbeard/init.ubuntu',
        :mode => '0755',
        :require => 'Vcsrepo[sickbeard]',
      )
    end

  end
end
