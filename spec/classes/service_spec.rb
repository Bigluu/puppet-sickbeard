require 'spec_helper'

describe 'sickbeard::service', :type => :class do
  context 'on Debian' do
    let :facts do
      {
        :osfamily => 'Debian',
      }
    end

    it { should contain_sickbeard__service }

    it do
      should contain_service('sickbeard').with(
        :ensure     => 'running',
        :enable     => true,
        :hasstatus  => true,
        :hasrestart => true,
      )
    end
  end
end
