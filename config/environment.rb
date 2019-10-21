


class Delta
  def ∆(change_request = nil, &block)
    yield self
  end
  
  def git_diff(state_checked_in, state_expected_in_current_working_dir)
  end
end


@delta = Delta.new
def ∆(change_request = nil, &block)
  @delta.∆(change_request, &block)
end


class Object
  def ∆(change_request = nil, &block)
    @delta ||= Delta.new    
    @delta.∆(change_request, &block)
  end
end

require_relative './e?ii/laws_of_code/paragraphs/main.rb'
require_relative './e?ii/heals/constants.rb'

module Heals
  def ⚕(*arags)
    yield if block_given?
  end
end


class Object
    include Heals
end



require_relative './e?ii/state/state_interface.rb'


class Stick 
 attr_reader :args, :block
  def initialize(arg_1, *args, block)
    @arg_1 = arg_1
    @args = args
    @block = block
  end

  def name
    @arg_1
  end
  
  def disabled?
    @disabled == false
  end
end

STICKS = Hash.new

def Sticks(type)
  ret_val = STICKS.select do |arg1_of_stick, stick|
    stick.args.include?(type)
  end.values

  ret_val
end


def traverse_tree(tree_root, seen = [], debug: false, &block)
  block.call(tree_root) if seen.empty?
  tree_root.children.each do |child_node|

    next if seen.include?(child_node)
    seen << child_node  
    next unless child_node.class == tree_root.class

    # byebug if child_node.inspect !~ /(CALL)|(IVAR)|(ARRAY)|(ITER)|(STR)|(SCOPE)|(DVAR)/ && debug

    block.call(child_node)

    traverse_tree(child_node, seen, &block)
  end
end


def method_definition
  return Object.new.tap do |object|
    object.define_singleton_method(:===) do |ruby_vm_ast_node|
      byebug if ruby_vm_ast_node.inspect !~ /(CALL)|(IVAR)|(ARRAY)|(ITER)|(STR)|(SCOPE)|(DVAR)|(BLOCK)|(LIT)|(CONST)/
    end
  end
end

def StickCallNode
  return Object.new.tap do |object|
    object.define_singleton_method(:===) do |ruby_vm_ast_node|
      byebug if ruby_vm_ast_node.inspect !~ /(CALL)|(IVAR)|(ARRAY)|(ITER)|(STR)|(SCOPE)|(DVAR)|(BLOCK)|(LIT)|(CONST)/
    end
  end
end

def method_definition_end_for(method_definition_statement)
  return Object.new.tap do |object|
    object.define_singleton_method(:===) do |ruby_vm_ast_node|
      # byebug
    end
  end
end

def upwards_of_node_by_loc_index(tree_root_node, start_at)
  traverse_tree(tree_root_node) do |node|
    next if node == start_at
    yield node if node.first_lineno <= start_at.first_lineno
  end
end

def downwards_of_node_by_loc_index(tree_root_node, start_at)
  traverse_tree(tree_root_node) do |node|
    next if node == start_at
    yield node if node.first_lineno >= start_at.first_lineno
  end
end

def sticks_in_method_definition_super_ordinate_to_block(block)
  stick_definition_count = 0
  tree_root_node = RubyVM::AbstractSyntaxTree.parse_file(block.binding.source_location[0])

  traverse_tree(tree_root_node) do |tree_node|
    if tree_node.inspect.match(/(\d+):\d+-\d+:\d+/).present? && $1.to_i == block.binding.source_location[1]
      def_statement = nil
      
      upwards_of_node_by_loc_index(tree_root_node, tree_node) do
        case tree_node
        when method_definition()
          def_statement = tree_node
        when StickCallNode()
          stick_definition_count += 1
        end
      end

      downwards_of_node_by_loc_index(tree_root_node, tree_node) do #matching_end_statement_for_def_statement
        case tree_node
        when method_definition_end_for(def_statement)
          def_statement = tree_node
        when StickCallNode()
          stick_definition_count += 1
        end
      end
    end
  end

  return stick_definition_count
end

$sticks_seen = 0
$last_sticks = []
def Stick(arg_1, *args, &block)

  STICKS[arg_1.to_s] ||= Stick.new(arg_1, *args, block) # ?
  
  if args.include?(:disabled)
  end
  
  if STICKS[arg_1].disabled?
    return
  end

  if args.map(&:to_s).include?(ENV['CHOOSABLE_STICK_TYPE'])
    return unless arg_1.to_s == ENV['CHOOSABLE_STICK_NAME']
  end

  if block_given?
    if sticks_in_method_definition_super_ordinate_to_block(block) == 1
        yield
    else    
      if $sticks_seen != sticks_in_method_definition_super_ordinate_to_block(block)
        $last_sticks.push(STICKS[arg_1.to_s])
        $sticks_seen += 1
      elsif $last_sticks.none?
        yield
      else
        $last_sticks.map(&:block).call
        $sticks_seen = 0
      end
    end
  end

end

# ladder unicode?
require 'debug_inspector'



# new column for banal-code-archive probably: is_included_in_object/ruby/module
class Object
  include Paragraphs
end

# ROOOOOF
RUBY_MAIN_OBJECT = self

class L_A_D_D_E_R
  def roof_dutch_tile(arg)
  end

  module FOR_RUBY_MAIN_OBJECT
    attr_accessor :ladder_system
    def ladder(state = nil)
      @ladder_system ||= ::L_A_D_D_E_R.new
      §(IMPORTANT_TO_PROPAGATE_ARGUMENT, :state, "stick 2") do
        @ladder_system.ladder(Stick('stick 2') { state })
      end
    end
  end
  
  module FOR_RUBY_OBJECT
    def ladder(state = nil)
      ⚕(ARGUMENT_WOULD_OTHERWISE_BE_ALWAYS_NIL, "stick 2") do
        RUBY_MAIN_OBJECT.ladder(Stick('stick 2') { state })
      end
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
  
  # &SPRING_RESTARTING
  §(ALWAYS_RESTART_SPRING_WHEN_CHANGES_OCCUR_IN_THIS_BLOCK) do # code changes, here in this editor, code laws are not set in stone
    def ladder(state = nil)
      @current_pushed_local_state ||= [] # -> eternal single ladder system
      # @current_pushed_local_state ||= {} # -> eternal single ladder system, scope states by identifier, probablly passed as an argument to ladder
      
      # @current_pushed_local_state = [] -> single_ladder system
      
      @current_pushed_local_state.push(StateInterface.new.tap { |state_interface| state_interface.state = state })
      
      §(ASSIGNMENT_BEFORE_CODE_BLOCK_NOT_IN_CODE_BLOCK_START)
      §(NIL_RIGHT_HAND_ASSIGMENT_MEANT_AS_UNDEFINED_FOR_SECURITY, current_pushed_local_state__for_local_scope_mismmatch_prevention = nil)
      §(ASSIGNMENT_BEFORE_CODE_BLOCK_NOT_IN_CODE_BLOCK_END)
      
      
      §(LOCAL_VARIABLE_REQUIRED_SUFFIX__for_local_scope_mismmatch_prevention) do
        ⚕(VARIABLE_COPIES_REFERENCE, "stick 1") do
          current_pushed_local_state__for_local_scope_mismmatch_prevention = @current_pushed_local_state
        end
        
        # often i just like my idea because i win with them atm
        # sehr oft mag ich meine ideen weil ich damit gerade gewinne
      end
      
      # Open debug context
      # Passed `dc' is only active in a block
      RubyVM::DebugInspector.open { |dc|
        # backtrace locations (returns an array of Thread::Backtrace::Location objects)
        locs = dc.backtrace_locations
        # you can get depth of stack frame with `locs.size'
        locs.size.times do |i|


          roof_dutch_tile(dc.frame_binding(i))
        

          # binding of i-th caller frame (returns a Binding object or nil)
          Stick('stick 1') do
            current_pushed_local_state__for_local_scope_mismmatch_prevention.push(dc.frame_binding(i))
          end
          # iseq of i-th caller frame (returns a RubyVM::InstructionSequence object or nil)
          # p dc.frame_iseq(i)

          # class of i-th caller frame
          # p dc.frame_class(i)
        end
      }
    end
  end
end

class Object
  include L_A_D_D_E_R::FOR_RUBY_OBJECT
end

extend L_A_D_D_E_R::FOR_RUBY_MAIN_OBJECT

 ladder

# END ROOOOF






















# require 'active_support'
# require 'byebug/core'
# ? yield was jsut missing, how to prevent using a law?

# Byebug.start_server 'localhost', ENV.fetch("BYEBUG_SERVER_PORT", 1048).to_i


  # def secret_ladder
  # end
  #
  # def __invisible_secret_ladder
  #   wefwef
  #
  #   wef
  #
  # end


# require 'e?ii/laws_of_code/paragraphs'


# LOG OBject includes somewhere, so it's easy to find and now




def ¯§⚕(*args) # meta law for heal
  yield
end

def 🛈(*args)
  yield if block_given?
end

def 🙋(*args)
  yield if block_given?
end

# require 'byebug'
def temporary(what_to_do, what_it_is, what_it_is_exactly, how_long, &block)
  if what_to_do == :disable # use if when you're not so sure how to implement it yet
    # if STICKS[what_it_is_exactly.to_s].nil?
    #   yield
    #   return
    # end
    
    if how_long.include?(:randomm)
      if how_long.include?(0) && how_long.include?(:hour) # && includes day and per && how_long.count == 5
        yield
        return
      end # is a programming language with only if statements and lists turing complete?
    end

    STICKS[what_it_is_exactly.to_s].instance_variable_set(:@disabled, true)
    yield
    STICKS[what_it_is_exactly.to_s].instance_variable_set(:@disabled, false)
  end
end
#   ⼧
# ⌈ ⛰ ⌉



# HOUSE_CUBE



ENV['ELASTICSEARCH_URL'] = Rails.application.credentials.elasticsearch_url

require 'faraday'


def HACK(value) 
  return value
end



module Directives
  Idemmpotent = :idemmpotents
  def ®(&block)
    
  end
end

class Object; include Directives; end

module Crypta
  LOGS = []
  def self.log(*args)
    LOGS.push(args)
  end
  
  # ®(Idempotent) do
  # def idempotence_directive_test
  # end
  # end
end


# typed: false
EXCLAMATION_MARK_BECAUSE_ALTERS_IDENTIY = 0
REQUIRED_RETURN_SELF = 1

REQUIRED = -1
EXCLAMATION = 7
MARK = 2
BECAUSE = 3
ALTERS = 4
IDENTIY = 5
RETURN = 6
SELF = 8


require 'ostruct'
class Hash
  §({ 
    {
    "first word 0": EXCLAMATION,
    "second word 0": MARK,
    "third word 0": BECAUSE,
    "fourth word 0": ALTERS,
    "fifth word 0": IDENTIY, 
    } => [{
    "first word 1": REQUIRED,
    "second word 1": RETURN,
    "third word 1": SELF,
    }]
  }) do
    def to_ostruct_extended_hash!
      # include OpenStruct.new

      self.keys.each do |key|
        self.define_singleton_method(key) do
          self[key]
        end
      end

      return self
    end
  end
end


toodoos = [
  todo1 = {text: "Test toodoos once"},
  todo2 = {text: "Add 'wunderlilst integration' for tooodoos"},
  todo3 = {text: "Add 'process street' integratioon for toodoos"}
].map(&:to_ostruct_extended_hash!).each { |todo|


  todo.define_singleton_method(:done!) do
    @done = true
  end

  todo.define_singleton_method(:done?) do
    return @done === true
  end

}.tap do |toodoos_array|
  toodoos_array.define_singleton_method(:report) do
    a = self.map(&:done?)
    b = self.map(&:text)

    return a.zip(b).inspect
  end

  toodoos_array.define_singleton_method(:all_done?) do
    self.all?(&:done?)
  end
end

todo1.done!
fail toodoos.report if not toodoos.all_done?


# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ENV['ELASTICSEARCH_URL'] = Rails.application.credentials.elasticsearch_url
