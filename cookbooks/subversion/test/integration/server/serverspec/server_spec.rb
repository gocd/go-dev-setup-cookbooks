require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

describe 'subversion::server' do
  describe port(80) do
    it { should be_listening }
  end
end
