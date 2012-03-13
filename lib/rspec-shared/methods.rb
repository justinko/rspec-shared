module RSpecShared
  module Methods
    def shared(name, &block)
      define_method(name) do
        Thread.current[name] ||= instance_eval(&block)
      end
    end
  end
end