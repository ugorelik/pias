Gem::Specification.new do |s|
  s.name        = 'pias'
  s.version     = '0.0.1'
  s.executables << 'pias'
  s.summary     = "Play a song using tinysong.com API"
  s.description = "Play a song using tinysong.com API"
  s.authors     = ["Uri Gorelik"]
  s.email       = 'uri.gore@gmail.com'
  s.files       = ["lib/pias.rb"]
  s.homepage    = 'https://github.com/ugorelik/pias'
  s.requirements << 'httparty'
  s.add_runtime_dependency 'httparty'
end