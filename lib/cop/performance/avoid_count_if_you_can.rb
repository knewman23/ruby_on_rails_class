# frozen_string_literal: true

module RuboCop
  module Cop
    module Performance
      class AvoidCountIfYouCan < Cop
        MSG = "Please avoid .count if you can"

        def on_send(node)
          return unless node.method_name == :count

          add_offense(node, severity: :warning)
        end
      end
    end
  end
end
