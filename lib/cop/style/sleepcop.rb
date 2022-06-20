# frozen_string_literal: true

require "rubocop"

module RuboCop
  module Cop
    module Style
      class SleepCop < Cop
        MSG = """
        Do not call sleep in specs, use proper capybara waiting methods instead.
See here for more information: https://app.trainual.com/trainual/steps/9400824
"""

        def on_send(node)
          return unless node.method_name == :sleep

          add_offense(node, severity: :error)
        end
      end
    end
  end
end
