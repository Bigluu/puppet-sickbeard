require 'spec_helper'

describe 'sickbeard', :type => :class do
  context 'on Debian' do
    let :facts do
      {
        :osfamily => 'Debian',
      }
    end

    it { should contain_sickbeard }

    it { should contain_class('sickbeard::install') }
    it { should contain_class('sickbeard::config') }
    it { should contain_class('sickbeard::service') }

    context 'with parameters' do
      let :params do
        {
        :run_as => 'foo',
        :data_dir => '/some/config',
        }
      end

      it do
        should contain_file('/etc/default/sickbeard').
          with_content(/^SB_USER=foo$/).
          with_content(%r{^SB_DATA=/some/config$})
      end
    end

  end
end
