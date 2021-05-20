require 'fileutils'


def mkdir(name, directory)
    FileUtils.cd(directory) do
        FileUtils.mkdir(name)
    end
end
def mkfile(name, directory, data)
    FileUtils.cd(directory) do
        file = File.open(name, "w")
        file.write(data)
        file.close
    end
end

puts "input project name: "
proj_name = gets.chomp


#useful directories
home_dir = "/Users/trevorbuck/repos/epicodus_ruby"
proj_dir = "/Users/trevorbuck/repos/epicodus_ruby/#{proj_name}"
lib = "#{proj_dir}/lib"
spec = "#{proj_dir}/spec"

mkdir(proj_dir, home_dir)
mkdir(lib,proj_dir)
mkdir(spec,proj_dir)
mkfile("Gemfile", proj_dir, "source 'https://rubygems.org'\n\n\ngem 'rspec'\ngem 'pry'")
response = ""
while true
    puts "please enter names of the classes you plan to use in this project"
    puts "respond 'exit' when you have entered all the classes you need"
    classname = gets.chomp
    rbfile = classname.downcase  + ".rb"
    specfile = classname.downcase + "_spec.rb"
    response = rbfile
    if response.downcase == "exit.rb"
        break
    else
        mkfile(rbfile,lib,"class #{classname}\nend")
        mkfile(specfile, spec, "require '#{classname.downcase}'\nrequire 'rspec'\n\ndescribe('#{classname}') do\n  it ('') do\n  end\nend")
    end
end