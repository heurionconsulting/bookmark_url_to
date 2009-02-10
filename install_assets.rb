Dir.chdir(Dir.getwd.sub(/vendor.*/, '')) do
  
 def copy_files(source_path, destination_path, directory)
  source, destination = File.join(directory, source_path), File.join(RAILS_ROOT, destination_path)
  FileUtils.mkdir(destination) unless File.exist?(destination)
  files = Dir.glob(source+'/*.*')
  for file in files
  filename= file.split("/").last
   unless(File.exist?(destination+"/#{filename}"))
    FileUtils.cp(file,destination+"/#{filename}")
   end
  end
end 
 
directory = File.dirname(__FILE__)
  
 #copy images  
 srcpath="/assets/images"
 destpath="/public/images/bookmark_url_to"
 
 copy_files(srcpath,destpath,directory)
 
 #copy stylesheets
 srcpath="/assets/stylesheets"
 destpath="/public/stylesheets"
 copy_files(srcpath,destpath,directory)
  
end