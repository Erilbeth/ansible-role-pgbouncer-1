require 'spec_helper'

describe 'ansible-role-pgbouncer' do
  describe package('pgbouncer') do
    it { should be_installed }
  end

  describe command('pgbouncer --version') do
    its(:stdout) { should contain /^pgbouncer version 1\.[789].\d+$/ }
  end

  describe service('pgbouncer') do
    it { should be_running }
  end
end
