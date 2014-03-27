MRuby::Gem::Specification.new('mruby-require') do |spec|
  spec.license = 'MIT'
  spec.authors = 'Internet Initiative Japan Inc.'

  # mruby-dir was crashing the build with: error: undefined reference to 'seekdir'
  # ['mruby-io', 'mruby-dir', 'mruby-tempfile'].each do |v|
  ['mruby-io', 'mruby-tempfile'].each do |v|
    add_dependency v
  end

  spec.cc.include_paths << "#{build.root}/src"
end

