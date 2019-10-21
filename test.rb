# typed: ignore
#   ⼧
# ⌈ ⛰ ⌉


# ladder unicode?

require 'debug_inspector'

# ROOOOOF
RUBY_MAIN_OBJECT = self

class L_A_D_D_E_R
  module FOR_RUBY_MAIN_OBJECT
    attr_accessor :ladder_system
    def ladder
      @ladder_system ||= ::L_A_D_D_E_R.new
      @ladder_system.ladder
    end
  end
  
  module FOR_RUBY_OBJECT
    def ladder
      RUBY_MAIN_OBJECT.ladder
    end
    
    def ladder_system
      RUBY_MAIN_OBJECT.ladder_system
    end
  end
  # def data_retention
  # end
  
  def ladder_log
    @current_pushed_local_state
  end
  
  def log
    ladder_log
  end
  
  def ladder
    @current_pushed_local_state = []
    
    # Open debug context
    # Passed `dc' is only active in a block
    RubyVM::DebugInspector.open { |dc|
      # backtrace locations (returns an array of Thread::Backtrace::Location objects)
      locs = dc.backtrace_locations
      # you can get depth of stack frame with `locs.size'
      locs.size.times do |i|
        # binding of i-th caller frame (returns a Binding object or nil)
         @current_pushed_local_state.push(dc.frame_binding(i))

        # iseq of i-th caller frame (returns a RubyVM::InstructionSequence object or nil)
        # p dc.frame_iseq(i)

        # class of i-th caller frame
        # p dc.frame_class(i)
      end
    }
  end
end

class Object
  include L_A_D_D_E_R::FOR_RUBY_OBJECT
end

extend L_A_D_D_E_R::FOR_RUBY_MAIN_OBJECT

 ladder

# END ROOOOF

# HOUSE_CUBE

RECURSION_IS_ESSENTIAL_FOR = 0
CALL_TO_IDENTITY_ON_SELF_FORBIDDEN = 1
PURE_FUNCTION_CONSTANTS_ALOWED = 2
ONLY_FOR_DIRECTIVE = 3

def list_children_recursion(ast_1)
  ast_1.children + ast_1.children.map {  |c_ast| list_children_recursion(c_ast) if c_ast.respond_to?(:children) }
end

def deep_search_array(array)
  # array.
end

def §(*args, &block)
  if args[0] == PURE_FUNCTION_CONSTANTS_ALOWED
    
    function = block.call
    
    ast = RubyVM::AbstractSyntaxTree.of(function)
    
    ast_children = list_children_recursion(ast)
    
    ast_children[0]
    
    ast_children # check if only block variables are used in thee function
  end
 yield if block_given?
end


def Stick(*args)
 yield
end

def probably(*args)
  yield
end

class State
  attr_accessor :value
  #attr_accessor :previous_states

  def initialize
    @previous_states = []
  end

  def to_s
	"State value = #{self.value}"
  end

  def inspect
     self.object_id
  end

  def ==(other_state)
    self.object_id == other_state.object_id
  end


  probably(§(CALL_TO_IDENTITY_ON_SELF_FORBIDDEN)) do # https://gist.github.com/eZii-jester-data/5721b529ad21b1b81f39bec670088a68 $
    §(RECURSION_IS_ESSENTIAL_FOR, "stick 1") do
      def previous_states
recursion = @previous_states.map { |s| s.previous_states }.flatten!
recursion = recursion.nil? ? [] : recursion
        @previous_states + recursion
      end
    end
  end


  probably("§(ESSENTIAL_SETTER)") do
    def add_previous_states(state)
      @previous_states.push(state)
    end
  end
end


  Idempotent = :idempotence

module Directives
  PASSED_STATES = {}


  require 'byebug'

  def ®(directive, state, new_state, x, type, &block)    
    
    case type
    when :state_value_only_changed_once
     if Stick("stick 1") { state.previous_states.map(&§(PURE_FUNCTION_CONSTANTS_ALOWED) { lambda   { |ps| ::Directives::PASSED_STATES[ps] } }).any? { |ps_x| ps_x == x } } # lambda use could be ommited somehow
       p "CATCHED Idempotence directive: #{state} #{x} #{block.binding}"
       return state
     end
     

     yield
     ::Directives::PASSED_STATES[state] = x
     
     new_state
     
     when :only_one_value_differs
       @once = nil
       @once_consumed ||= false
       
       once = lambda do |y|
         if @once.nil?
           @once = y
         else
           fail "Once value must be always the same y#{y} previous y for once #{@once}" if y != @once
         end
       end
       
       yield(once)
       
       ladder       
       
       if @once_consumed
         new_state.value = @other_value
       end
       
       if new_state.value == @once
         @once_consumed = true
       else
         @other_value = new_state.value
       end
       
       new_state
     end

  end
end

class Object; include Directives; end

module Crypta
  LOGS = []
  def self.log(*args)
    LOGS.push(args)
  end
  
  def self.idempotence_directive_test(state, x)
       new_state = State.new
       new_state.add_previous_states(state)
       p new_state
       
       
       #            |-----------------------------------------
       #            \
       # ___________|

      ®(::Idempotent, state, new_state, x, :state_value_only_changed_once) do
         new_state.value = state.value + x
         new_state
      end
  end
end


state = State.new()
state.value = 1
new_state = Crypta.idempotence_directive_test(state, 2)
new_state_2 = Crypta.idempotence_directive_test(new_state, 2)


begin
  fail "not idempotent"  unless new_state.value == new_state_2.value
ensure
#  p Crypta::LOGS
end



# global law for ezii os §(INSPECT_STRINGS_MUST_BE_PREFIXED_WITH("INSPECT:"))


#
#           _
#     \/ _ |_  // |-.   \/
#     /  -  _| \  | |   /\
#
# 1 -|         ,-'''-.
#    |      ,-'       `-.           *Not so accurate scale*
#    |    ,'             `.
#    |  ,'                 `.
#    | /                     \
#    |/                       \
#----+-------------------------\--------------------------
#    |          __           __ \          __           /  __
#    |          ||/2         ||  \        3||/2        /  2||
#    |                            `.                 ,'
#    |                              `.             ,'
#    |                                `-.       ,-'
#-1 -|                                   `-,,,-'
#
#
#    sps 
#        


# State warriors social network
# triangle  stencil

module Crypta
def self.idempotence_directive_test2(state, x)
     new_state = StateWithTimeEvent.new(state.timepoint)
     new_state.add_previous_states(state)
     p new_state

     #           
     #              
     #              
     # ----------     ----------------
     # =>       |     |
     # =>        _____

    ®(::Idempotent, state, new_state, x, :only_one_value_differs) do |once|
       after_timepoint =  lambda { |x| x += 2 }
       if Time.now.to_i > new_state.timepoint
         x = after_timepoint.call(x)
         
       
         §(ONLY_FOR_DIRECTIVE) do
           once.call(Math.sin(x))
         end
       end
       
   
       
       y = Math.sin(x)
       
       p "ƒ(x) = y: ƒ(#{x}) = #{y}"
       
       new_state.value = y
       
       new_state
    end
end
end






class StateWithTimeEvent < State
  attr_accessor :timepoint
  def initialize(t)
    super()
    @timepoint = t
  end
end

t = Time.now.to_i + 0.01
state = StateWithTimeEvent.new(t)


state.value = nil
new_state = Crypta.idempotence_directive_test2(state, 2)

until Time.now.to_i > t
  sleep 0.001
end

new_state_2 = Crypta.idempotence_directive_test2(new_state, 2)
new_state_3 = Crypta.idempotence_directive_test2(new_state_2, 2)


p new_state_2.value

begin
  fail "non_sense_test" if Math.sin(2) == Math.sin(4)
  fail "not idempotent"  unless new_state.value == Math.sin(2)
  fail "not idempotent"  unless new_state_2.value == Math.sin(4)
  fail "not idempotent"  unless new_state_3.value == Math.sin(2)
ensure
#  p Crypta::LOGS
end







Crypta.instance_variable_set(:@once_consumed, false)

t = Time.now.to_i - 0.01
state = StateWithTimeEvent.new(t)



# iterative coding / iterative informational science / ∆ science





state.value = nil
new_state = Crypta.idempotence_directive_test2(state, 2)

until Time.now.to_i > t
  sleep 0.001
end

new_state_2 = Crypta.idempotence_directive_test2(new_state, 2)
new_state_3 = Crypta.idempotence_directive_test2(new_state_2, 2)


p new_state_2.value

begin
  fail "non_sense_test" if Math.sin(2) == Math.sin(4)
  fail "not idempotent"  unless new_state.value == Math.sin(4)
  fail "not idempotent"  unless new_state_2.value == Math.sin(2)
  fail "not idempotent"  unless new_state_3.value == Math.sin(2)
ensure
#  p Crypta::LOGS
end






#           |---|
#           |   |
#           |   |
# ----------     ----------------
Crypta.instance_variable_set(:@once_consumed, false)

t = Time.now.to_i + 0.01
state = StateWithTimeEvent.new(t)


# iterative coding / iterative informational science / ∆ science



state.value = nil
new_state = Crypta.idempotence_directive_test2(state, 5)

until Time.now.to_i > t
  sleep 0.001
end

new_state_2 = Crypta.idempotence_directive_test2(new_state, 5)
new_state_3 = Crypta.idempotence_directive_test2(new_state_2, 5)


p new_state_2.value

begin
  fail "non_sense_test" unless Math.sin(7) > Math.sin(5)
  fail "not idempotent"  unless new_state.value == Math.sin(5)
  fail "not idempotent"  unless new_state_2.value == Math.sin(7)
  fail "not idempotent"  unless new_state_3.value == Math.sin(5)
ensure
#  p Crypta::LOGS
end





#           |---|
#           |   |
#           |   |
# ----------     ----------------
Crypta.instance_variable_set(:@once_consumed, false)

t = Time.now.to_i - 0.01
state = StateWithTimeEvent.new(t)


# iterative coding / iterative informational science / ∆ science



state.value = nil
new_state = Crypta.idempotence_directive_test2(state, 5)

until Time.now.to_i > t
  sleep 0.001
end

new_state_2 = Crypta.idempotence_directive_test2(new_state, 5)
new_state_3 = Crypta.idempotence_directive_test2(new_state_2, 5)


p new_state_2.value

begin
  fail "non_sense_test" unless Math.sin(7) > Math.sin(5)
  fail "not idempotent"  unless new_state.value == Math.sin(7)
  fail "not idempotent"  unless new_state_2.value == Math.sin(5)
  fail "not idempotent"  unless new_state_3.value == Math.sin(5)
ensure
#  p Crypta::LOGS
end


# END FOUNDATION


# START WORLLD


p "Ladder log: #{ladder_system.log}"

# END WORLD

