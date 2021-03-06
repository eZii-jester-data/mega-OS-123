# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/searchkick/all/searchkick.rbi
#
# searchkick-4.1.0
module Searchkick
  def self.aws_credentials; end
  def self.aws_credentials=(creds); end
  def self.callbacks(value); end
  def self.callbacks?(default: nil); end
  def self.callbacks_value; end
  def self.callbacks_value=(value); end
  def self.client; end
  def self.client=(arg0); end
  def self.client_options; end
  def self.client_options=(arg0); end
  def self.disable_callbacks; end
  def self.enable_callbacks; end
  def self.env; end
  def self.env=(arg0); end
  def self.index_prefix; end
  def self.index_prefix=(arg0); end
  def self.index_suffix; end
  def self.index_suffix=(arg0); end
  def self.indexer; end
  def self.load_records(records, ids); end
  def self.model_options; end
  def self.model_options=(arg0); end
  def self.models; end
  def self.models=(arg0); end
  def self.multi_search(searches); end
  def self.queue_name; end
  def self.queue_name=(arg0); end
  def self.redis; end
  def self.redis=(arg0); end
  def self.reindex_status(index_name); end
  def self.search(term = nil, model: nil, **options, &block); end
  def self.search_method_name; end
  def self.search_method_name=(arg0); end
  def self.search_timeout; end
  def self.search_timeout=(arg0); end
  def self.server_below7?; end
  def self.server_below?(version); end
  def self.server_version; end
  def self.signer_middleware_aws_params; end
  def self.signer_middleware_key; end
  def self.timeout; end
  def self.timeout=(arg0); end
  def self.warn(message); end
  def self.with_redis; end
  def self.wordnet_path; end
  def self.wordnet_path=(arg0); end
end
class Searchkick::BulkIndexer
  def batch_size; end
  def batches_key; end
  def batches_left; end
  def bulk_delete(records); end
  def bulk_index(records); end
  def bulk_reindex_job(scope, batch_id, options); end
  def bulk_update(records, method_name); end
  def each_batch(scope); end
  def full_reindex_async(scope); end
  def import_or_update(records, method_name, async); end
  def import_scope(relation, resume: nil, method_name: nil, async: nil, batch: nil, batch_id: nil, full: nil, scope: nil); end
  def index; end
  def initialize(index); end
  def with_retries; end
end
module Searchkick::IndexOptions
  def index_options; end
end
class Searchkick::Index
  def alias_exists?; end
  def all_indices(unaliased: nil); end
  def batches_left; end
  def bulk_delete(records); end
  def bulk_index(records); end
  def bulk_indexer; end
  def bulk_update(records, *args); end
  def clean_indices; end
  def client; end
  def conversions_fields; end
  def create(body = nil); end
  def create_index(index_options: nil); end
  def delete; end
  def document_type(record); end
  def exists?; end
  def import(records); end
  def import_before_promotion(index, relation, **import_options); end
  def import_scope(relation, **options); end
  def initialize(name, options = nil); end
  def klass_document_type(klass, ignore_type = nil); end
  def locations_fields; end
  def mapping; end
  def name; end
  def options; end
  def promote(new_name, update_refresh_interval: nil); end
  def refresh; end
  def refresh_interval; end
  def reindex(relation, method_name, scoped:, full: nil, scope: nil, **options); end
  def reindex_queue; end
  def reindex_scope(relation, import: nil, resume: nil, retain: nil, async: nil, refresh_interval: nil, scope: nil); end
  def remove(record); end
  def retrieve(record); end
  def search_id(record); end
  def settings; end
  def similar_record(record, **options); end
  def store(record); end
  def suggest_fields; end
  def swap(new_name, update_refresh_interval: nil); end
  def tokens(text, options = nil); end
  def total_docs; end
  def update_record(record, method_name); end
  def update_settings(settings); end
  include Searchkick::IndexOptions
end
class Searchkick::Indexer
  def initialize; end
  def perform; end
  def queue(items); end
  def queued_items; end
end
class Searchkick::HashWrapper < Hashie::Mash
end
class Searchkick::Middleware < Faraday::Middleware
  def call(env); end
end
module Searchkick::Model
  def searchkick(**options); end
end
class Searchkick::MultiSearch
  def client; end
  def initialize(queries); end
  def perform; end
  def perform_search(search_queries, perform_retry: nil); end
  def queries; end
end
class Searchkick::Query
  def [](*args, &block); end
  def aggregations(*args, &block); end
  def aggs(*args, &block); end
  def any?(*args, &block); end
  def base_field(k); end
  def below61?; end
  def below70?; end
  def body; end
  def body=(arg0); end
  def boost_filter(field, factor: nil, modifier: nil, missing: nil); end
  def boost_filters(boost_by, modifier: nil); end
  def build_query(query, filters, should, must_not, custom_filters, multiply_filters); end
  def coordinate_array(value); end
  def current_page(*args, &block); end
  def custom_filter(field, value, factor); end
  def each(*args, &block); end
  def each_with_hit(*args, &block); end
  def empty?(*args, &block); end
  def entry_name(*args, &block); end
  def error(*args, &block); end
  def execute; end
  def execute_search; end
  def first(*args, &block); end
  def first_page?(*args, &block); end
  def handle_error(e); end
  def handle_response(response); end
  def hits(*args, &block); end
  def initialize(klass, term = nil, **options); end
  def klass; end
  def last_page?(*args, &block); end
  def length(*args, &block); end
  def limit_value(*args, &block); end
  def location_value(value); end
  def map(*args, &block); end
  def model_name(*args, &block); end
  def next_page(*args, &block); end
  def num_pages(*args, &block); end
  def offset(*args, &block); end
  def offset_value(*args, &block); end
  def options; end
  def out_of_range?(*args, &block); end
  def padding(*args, &block); end
  def params; end
  def per_page(*args, &block); end
  def prepare; end
  def prev_page(*args, &block); end
  def previous_page(*args, &block); end
  def records(*args, &block); end
  def reindex_command; end
  def response(*args, &block); end
  def results(*args, &block); end
  def retry_misspellings?(response); end
  def scroll(*args, &block); end
  def searchkick_index; end
  def searchkick_klass; end
  def searchkick_options; end
  def set_aggregations(payload, filters, post_filters); end
  def set_boost_by(multiply_filters, custom_filters); end
  def set_boost_by_distance(custom_filters); end
  def set_boost_by_indices(payload); end
  def set_boost_by_recency(custom_filters); end
  def set_boost_where(custom_filters); end
  def set_conversions; end
  def set_exclude(field, analyzer); end
  def set_fields; end
  def set_highlights(payload, fields); end
  def set_order(payload); end
  def set_post_filters(payload, post_filters); end
  def set_suggestions(payload, suggest); end
  def size(*args, &block); end
  def slice(*args, &block); end
  def suggestions(*args, &block); end
  def term; end
  def term_filters(field, value); end
  def to_a(*args, &block); end
  def to_ary(*args, &block); end
  def to_curl; end
  def took(*args, &block); end
  def total_count(*args, &block); end
  def total_entries(*args, &block); end
  def total_pages(*args, &block); end
  def where_filters(where); end
  def with_details(*args, &block); end
  extend Forwardable
end
class Searchkick::ReindexQueue
  def clear; end
  def initialize(name); end
  def length; end
  def name; end
  def push(record_id); end
  def redis_key; end
  def reserve(limit: nil); end
end
class Searchkick::RecordData
  def cast_big_decimal(obj); end
  def delete_data; end
  def document_type(ignore_type = nil); end
  def index; end
  def index_data; end
  def initialize(index, record); end
  def location_value(value); end
  def record; end
  def record_data; end
  def search_data(method_name = nil); end
  def search_id; end
  def update_data(method_name); end
end
class Searchkick::RecordIndexer
  def index; end
  def initialize(record); end
  def queue_escape(value); end
  def record; end
  def reindex(method_name = nil, refresh: nil, mode: nil); end
  def reindex_record(method_name); end
end
class Searchkick::Results
  def [](*args, &block); end
  def aggregations; end
  def aggs; end
  def any?(*args, &block); end
  def base_field(k); end
  def clear_scroll; end
  def combine_includes(result, inc); end
  def current_page; end
  def each(*args, &block); end
  def empty?(*args, &block); end
  def entry_name(options = nil); end
  def error; end
  def first_page?; end
  def highlights(multiple: nil); end
  def hit_highlights(hit, multiple: nil); end
  def hits; end
  def initialize(klass, response, options = nil); end
  def klass; end
  def last_page?; end
  def length(*args, &block); end
  def limit_value; end
  def misspellings?; end
  def model_name; end
  def next_page; end
  def num_pages; end
  def offset; end
  def offset_value; end
  def options; end
  def out_of_range?; end
  def padding; end
  def per_page; end
  def prev_page; end
  def previous_page; end
  def response; end
  def results; end
  def results_query(records, hits); end
  def scroll; end
  def scroll_id; end
  def size(*args, &block); end
  def slice(*args, &block); end
  def suggestions; end
  def to_ary(*args, &block); end
  def took; end
  def total_count; end
  def total_entries; end
  def total_pages; end
  def with_highlights(multiple: nil); end
  def with_hit; end
  extend Forwardable
  include Enumerable
end
module Searckick
end
class Searckick::Railtie < Rails::Railtie
end
module Searchkick::QueryWithInstrumentation
  def execute_search; end
end
module Searchkick::IndexWithInstrumentation
  def bulk_delete(records); end
  def bulk_index(records); end
  def bulk_update(records, *args); end
  def import(records); end
  def remove(record); end
  def store(record); end
  def update_record(record, method_name); end
end
module Searchkick::IndexerWithInstrumentation
  def perform; end
end
module Searchkick::SearchkickWithInstrumentation
  def multi_search(searches); end
end
class Searchkick::LogSubscriber < ActiveSupport::LogSubscriber
  def self.reset_runtime; end
  def self.runtime; end
  def self.runtime=(value); end
end
module Searchkick::ControllerRuntime
  def append_info_to_payload(payload); end
  def cleanup_view_runtime; end
  def process_action(action, *args); end
  def searchkick_runtime; end
  def searchkick_runtime=(arg0); end
  extend ActiveSupport::Concern
end
module Searchkick::ControllerRuntime::ClassMethods
  def log_process_action(payload); end
end
class Searchkick::Error < StandardError
end
class Searchkick::MissingIndexError < Searchkick::Error
end
class Searchkick::UnsupportedVersionError < Searchkick::Error
end
class Searchkick::InvalidQueryError < Elasticsearch::Transport::Transport::Errors::BadRequest
end
class Searchkick::DangerousOperation < Searchkick::Error
end
class Searchkick::ImportError < Searchkick::Error
end
module ActiveModel::Callbacks
  include Searchkick::Model
end
class ActiveRecord::Base
  extend Searchkick::Model
end
