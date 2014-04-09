class Pry
  class BondCompleter

    class << self
      attr_reader :bond
    end

    class NoopReadline
      def self.setup _
        # do nothing as we let pry do the completion
      end

      def self.line_buffer
        "" # we give the current line directly to bond
      end
    end

    def self.setup(config={})
      @lock = Mutex.new
      @bond = Bond::M
      @bond.config.merge!(config)
      @bond.config[:readline] ||= NoopReadline
      @current_pry_instance = nil
      @bond.start(:eval_binding => lambda {@current_pry_instance.current_binding})
      @bond.complete(:on => /^(.+)$/, :place => :last, :name => "pry-autocomplete", :action => lambda {|input|
        Bond::DefaultMission.completions.map(&:to_s) + Pry.commands.complete(input.line,
                              :pry_instance => @current_pry_instance,
                              :target       => @current_pry_instance.current_binding,
                              :command_set  => @current_pry_instance.commands)
      })
    end

    def self.with_pry instance
      @lock.synchronize do
        begin
          @current_pry_instance = instance
          yield
        ensure
          @current_pry_instance = nil 
        end
      end
    end

    def initialize input, pry = nil
      BondCompleter.setup if BondCompleter.bond.nil?
      @pry = pry
      @input = input
    end

    def call str, options
      BondCompleter.with_pry(@pry) {BondCompleter.bond.agent.call(str, get_full_line_input || str)}
    end

    protected
    def get_full_line_input
      if @input.respond_to?(:line_buffer)
        @input.line_buffer
      elsif @input.respond_to? :line
        @input.line
      else
        nil
      end
    end

  end
end