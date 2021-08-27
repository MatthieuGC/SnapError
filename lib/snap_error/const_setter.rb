module SnapError
  class ConstSetter
    def self.run!(const_map)
      new(const_map).run!
    end

    def initialize(const_map)
      @const_map = const_map
    end

    def run!
      @const_map.each do |klass, const_hash|
        const_hash.each { |const, value| Object.const_get(klass).const_set(const, value) }
      end
    end
  end
end
