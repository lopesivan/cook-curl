
template "#{ENV['HOME']}/curl.txt" do
  source 'curl.txt.erb'
  mode '0664'
end

%w(curl).each do |pkg|
  package pkg do
    action :install
  end
end

