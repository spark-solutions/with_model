# encoding: utf-8

$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'with_model/version'

Gem::Specification.new do |spec|
  spec.name        = 'with_model'
  spec.version     = WithModel::VERSION
  spec.authors     = ['Case Commons, LLC', 'Grant Hutchins']
  spec.email       = %w[casecommons-dev@googlegroups.com gems@nertzy.com andrew@johnandrewmarshall.com]
  spec.homepage    = 'https://github.com/Casecommons/with_model'
  spec.summary     = 'Dynamically build a model within an RSpec context'
  spec.description = spec.summary
  spec.license     = 'MIT'

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables   = spec.files.grep(%r(^bin/)) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.1'

  # spec.add_dependency 'activerecord', '>= 4.2', '< 6.0' # temporary hack to make it work with 5.2.0.beta

  spec.add_development_dependency 'bundler', '~> 1.0'
  spec.add_development_dependency 'codeclimate-test-reporter'
  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 3.0'

  if RUBY_PLATFORM == 'java'
    spec.add_development_dependency 'activerecord-jdbcsqlite3-adapter'
  else
    spec.add_development_dependency 'sqlite3'
  end
end
