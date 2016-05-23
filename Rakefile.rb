EXE = 'adm27'
EXE_FULL = ".stack-work/install/x86_64-osx/lts-5.17/7.10.3/bin/#{EXE}"
GUI_FILE = 'ruby/gui.rb'

desc "Help"
task :help => [EXE_FULL] do
  `stack exec #{EXE} -- --help`
end

task EXE_FULL do
  `stack build`
end
desc "Build"
task :build => [EXE_FULL]

desc "Run"
task :run, [:in, :out] do |t, args| 
  puts "Args were: #{args}"
end

desc "Graphical UI"
task :gui => [EXE_FULL, GUI_FILE] do
  `shoes #{GUI_FILE}`
end
task :default => [:gui]