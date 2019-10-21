# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strong
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/acts_as_paranoid/all/acts_as_paranoid.rbi
#
# acts_as_paranoid-0.6.1
module ActsAsParanoid
  def acts_as_paranoid(options = nil); end
  def paranoid?; end
  def validates_as_paranoid; end
end
module ActsAsParanoid::Core
  def decrement_counters_on_associations; end
  def delete; end
  def deleted?; end
  def destroy!; end
  def destroy; end
  def destroy_dependent_associations!; end
  def destroy_fully!; end
  def destroyed?; end
  def each_counter_cached_association_reflection; end
  def get_reflection_class(reflection); end
  def increment_counters_on_associations; end
  def paranoid_value; end
  def paranoid_value=(value); end
  def persisted?; end
  def recover(options = nil); end
  def recover_dependent_associations(window, options); end
  def self.included(base); end
  def update_counters_on_associations(method_sym); end
end
module ActsAsParanoid::Core::ClassMethods
  def after_recover(method); end
  def before_recover(method); end
  def boolean_type_not_nullable?; end
  def delete_all!(conditions = nil); end
  def delete_all(conditions = nil); end
  def delete_now_value; end
  def dependent_associations; end
  def only_deleted; end
  def paranoid_column; end
  def paranoid_column_type; end
  def paranoid_default_scope; end
  def self.extended(base); end
  def string_type_with_deleted_value?; end
  def with_deleted; end
  def without_paranoid_default_scope; end
end
module ActsAsParanoid::Associations
  def self.included(base); end
end
module ActsAsParanoid::Associations::ClassMethods
  def belongs_to_with_deleted(target, scope = nil, options = nil); end
end
module ActsAsParanoid::Validations
  def self.included(base); end
end
class ActsAsParanoid::Validations::UniquenessWithoutDeletedValidator
  def self.[](version); end
end
class ActsAsParanoid::Validations::UniquenessWithoutDeletedValidator::V5 < ActiveRecord::Validations::UniquenessValidator
  def build_relation(klass, attribute, value); end
  def validate_each(record, attribute, value); end
end
class ActsAsParanoid::Validations::UniquenessWithoutDeletedValidator::V4 < ActiveRecord::Validations::UniquenessValidator
  def validate_each(record, attribute, value); end
end
class ActsAsParanoid::Validations::UniquenessWithoutDeletedValidator::V6 < ActsAsParanoid::Validations::UniquenessWithoutDeletedValidator::V5
end
module ActsAsParanoid::Validations::ClassMethods
  def validates_uniqueness_of_without_deleted(*attr_names); end
end
module ActsAsParanoid::Relation
  def self.included(base); end
end
module ActsAsParanoid::PreloaderAssociation
  def self.included(base); end
end
class ActiveRecord::Base
  def self.belongs_to(target, scope = nil, options = nil); end
  def self.belongs_to_without_deleted(name, scope = nil, **options); end
  extend ActsAsParanoid
  extend ActsAsParanoid::Associations::ClassMethods
  include ActsAsParanoid::Associations
end
class ActiveRecord::Relation
  def delete_all!(conditions = nil); end
  def destroy!(id_or_array); end
  def orig_delete_all; end
  def paranoid?; end
  def paranoid_deletion_attributes; end
  include ActsAsParanoid::Relation
end
class ActiveRecord::Associations::Preloader::Association
  def build_scope_with_deleted; end
  def build_scope_without_deleted; end
  include ActsAsParanoid::PreloaderAssociation
end