
require 'fileutils'

HERE = File.expand_path(File.dirname(__FILE__))

def strip_ansi(str)
  str.gsub /\033\[(\d;)?\d+m/, ""
end

def asterize_ansi(str)
  str.gsub /(\033\[(\d;)?\d+m)+/, "*"
end

def exe(str)
  sys(str+">tmp")
  File.read("tmp")
end

FileUtils.cd("spec/example")

def sort_lines(str)
  str.split("\n").sort.join("\n")
end
