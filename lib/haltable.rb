require "haltable/version"

module Haltable
  protected
  def haltable
    catch(:halt) do
      yield if block_given?
      return false
    end
    true
  end

  def halt
    throw(:halt)
  end
end
