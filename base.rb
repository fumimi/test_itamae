%w(nginx).each do |resource|
  include_recipe "./#{resource}.rb"
endba
