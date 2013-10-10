require 'spec_helper'

describe 'sickbeard::config', :type => :class do
  it { should contain_sickbeard__config }
  context 'on Debian' do
    let :facts do
      {
        :osfamily => 'Debian',
      }
    end

    it do
      should contain_file('/etc/default/sickbeard')
    end
  end
end
