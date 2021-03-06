# Copyright 2015 CareerBuilder, LLC
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and limitations under the License.
require 'simplecov'
require 'codeclimate-test-reporter'
require 'webmock/rspec'
WebMock.disable_net_connect!(allow: 'codeclimate.com')

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  CodeClimate::TestReporter::Formatter
]
SimpleCov.start do
  add_filter '/spec/'
  add_group 'models', 'lib/smarlting_rails/models'
end

require 'pry'
require 'ostruct'
require 'yaml'
require 'smartling_rails'
