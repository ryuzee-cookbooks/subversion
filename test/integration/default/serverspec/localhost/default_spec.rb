require 'spec_helper'

describe package('subversion') do
  it { should be_installed }
end

describe file('/usr/bin/svn') do
  it { should be_file }
  it { should be_mode 755 }
end

describe command( "/usr/bin/svn --help 2>/dev/null | grep '1.6'" ) do
  it { should return_exit_status 0 }
end
