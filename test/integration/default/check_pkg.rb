describe package('nginx') do
  it { should be_installed }
end

describe service('nginx') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end

describe nginx do
  its('version') { should eq '1.10.3' }
end

describe nginx_conf.params['worker_processes'].flatten do
  it { should cmp 'auto' }
end

describe nginx do
  its('openssl_version.date') { should_not eq '11 Feb 2013' }
  its('modules') { should include 'http_ssl' }
  its('compiler_info.compiler') { should_not eq 'gcc' }
end