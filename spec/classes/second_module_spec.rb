require 'spec_helper'

describe 'second_module' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      let(:pre_condition) { 'include ::first_module'}
      it { is_expected.to compile }
      it { is_expected.to contain_first_module__newtype('foo') }
    end
  end
end
