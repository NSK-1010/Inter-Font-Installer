require 'open-uri'
@path = 'https://fonts.google.com/download?family=Inter'

fileName = "inter.zip"

open(fileName, 'rwa+b') do |output|
  open(@path) do |data|
    output.write(data.read)
  end
end

require 'zip'

dest = 'inter/'

Zip::File.open('inter.zip') do |zip|
  zip.each do |entry|
    p entry.name
    zip.extract(entry, dest + entry.name) { true }
  end
end

require "fileutils"
FileUtils.mkdir("/usr/share/fonts/Inter")

require "fileutils"

Dir.glob('*.ttf').each do |fontname|
FileUtils.mv("inter/static/" + fontname, "/usr/share/fonts/Inter/" + fontname)

reqiure 'fileutils'
FileUtils.rm_rf("inter")

require 'fileutils'
FileUtils.rm("inter.zip")
