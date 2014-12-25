require 'spec_helper'
require 'haltable'

module Spec
  class Controller
    include Haltable

    def halted_action
      halted = haltable do
        update
        halt
        fail
      end

      render
      halted
    end

    def unhalted_action
      halted = haltable do
        update
      end

      halted
    end

    def update
    end

    def render
    end
  end
end

RSpec.describe Haltable do
  let(:controller) { Spec::Controller.new }

  it 'returns early when halted' do
    allow(controller).to receive(:update).once
    allow(controller).to receive(:render).once
    allow(controller).to receive(:fail).never

    controller.halted_action
  end

  it 'returns true if halted' do
    expect(controller.halted_action).to be true
  end

  it 'returns false if not halted' do
    expect(controller.unhalted_action).to be false
  end
end
