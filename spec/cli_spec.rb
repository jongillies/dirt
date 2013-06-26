require 'spec_helper'
require 'dirt'
require 'shellwords'
require 'yaml'

describe 'Different Command Line Options' do
  it 'should fail with no options' do
    expect { Dirt::GemName.new({}) }.to raise_error
  end
  #
  it 'should succeed with minimum arguments' do
    args = 'my-argument'
    expect { Dirt::GemName.new(args.shellsplit, "banner", "version") }.not_to raise_error
  end
end
