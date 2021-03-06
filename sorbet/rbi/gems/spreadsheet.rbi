# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/spreadsheet/all/spreadsheet.rbi
#
# spreadsheet-1.2.4
module Spreadsheet
  def self.client_encoding; end
  def self.client_encoding=(arg0); end
  def self.enc_ignore; end
  def self.enc_ignore=(arg0); end
  def self.enc_translit; end
  def self.enc_translit=(arg0); end
  def self.open(io_or_path, mode = nil); end
  def self.writer(io_or_path, type = nil); end
end
module Spreadsheet::Errors
end
class Spreadsheet::Errors::BaseError < StandardError
end
class Spreadsheet::Errors::UnknownCodepage < Spreadsheet::Errors::BaseError
end
class Spreadsheet::Errors::UnsupportedEncoding < Spreadsheet::Errors::BaseError
end
module Spreadsheet::Compatibility
  def ivar_name(symbol); end
  def method_name(symbol); end
end
module Spreadsheet::Datatypes
  def self.append_features(mod); end
  include Spreadsheet::Compatibility
end
module Spreadsheet::Encodings
  def client(string, internal = nil); end
  def internal(string, client = nil); end
  def utf8(string, client = nil); end
end
class Spreadsheet::Font
  def bold=(bool); end
  def build_key; end
  def color; end
  def color=(name); end
  def encoding; end
  def encoding=(arg); end
  def escapement; end
  def escapement=(arg); end
  def family; end
  def family=(arg); end
  def fast_key; end
  def initialize(name, opts = nil); end
  def italic!; end
  def italic; end
  def italic=(arg); end
  def italic?; end
  def key; end
  def name; end
  def name=(arg0); end
  def outline!; end
  def outline; end
  def outline=(arg); end
  def outline?; end
  def self.boolean(*args); end
  def self.colors(*args); end
  def self.enum(key, *values); end
  def shadow!; end
  def shadow; end
  def shadow=(arg); end
  def shadow?; end
  def size; end
  def size=(arg); end
  def strikeout!; end
  def strikeout; end
  def strikeout=(arg); end
  def strikeout?; end
  def underline; end
  def underline=(arg); end
  def weight; end
  def weight=(arg); end
  include Spreadsheet::Datatypes
  include Spreadsheet::Encodings
end
class Spreadsheet::Format
  def align=(location); end
  def border; end
  def border=(style); end
  def border_color; end
  def border_color=(color); end
  def bottom; end
  def bottom=(arg); end
  def bottom_color; end
  def bottom_color=(name); end
  def center_across!; end
  def cross_down!; end
  def cross_down; end
  def cross_down=(arg); end
  def cross_down?; end
  def cross_up!; end
  def cross_up; end
  def cross_up=(arg); end
  def cross_up?; end
  def date?; end
  def date_or_time?; end
  def datetime?; end
  def diagonal_color; end
  def diagonal_color=(name); end
  def font; end
  def font=(arg0); end
  def hidden!; end
  def hidden; end
  def hidden=(arg); end
  def hidden?; end
  def horizontal_align; end
  def horizontal_align=(arg); end
  def indent; end
  def indent=(arg); end
  def indent_level; end
  def indent_level=(arg); end
  def initialize(opts = nil); end
  def left; end
  def left=(arg); end
  def left_color; end
  def left_color=(name); end
  def locked!; end
  def locked; end
  def locked=(arg); end
  def locked?; end
  def matches_format?(name); end
  def merge!; end
  def merge_range!; end
  def merge_range; end
  def merge_range=(arg); end
  def merge_range?; end
  def name; end
  def name=(arg0); end
  def number?; end
  def number_format; end
  def number_format=(arg0); end
  def pattern; end
  def pattern=(arg0); end
  def pattern_bg_color; end
  def pattern_bg_color=(name); end
  def pattern_fg_color; end
  def pattern_fg_color=(name); end
  def reading_order; end
  def reading_order=(arg); end
  def right; end
  def right=(arg); end
  def right_color; end
  def right_color=(name); end
  def rotation; end
  def rotation=(rot); end
  def rotation_stacked!; end
  def rotation_stacked; end
  def rotation_stacked=(arg); end
  def rotation_stacked?; end
  def self.boolean(*args); end
  def self.colors(*args); end
  def self.enum(key, *values); end
  def shrink!; end
  def shrink; end
  def shrink=(arg); end
  def shrink?; end
  def text_direction; end
  def text_direction=(arg); end
  def text_justlast!; end
  def text_justlast; end
  def text_justlast=(arg); end
  def text_justlast?; end
  def text_wrap!; end
  def text_wrap; end
  def text_wrap=(arg); end
  def text_wrap?; end
  def time?; end
  def top; end
  def top=(arg); end
  def top_color; end
  def top_color=(name); end
  def update_format(opts = nil); end
  def used_merge; end
  def used_merge=(arg0); end
  def vertical_align; end
  def vertical_align=(arg); end
  include Spreadsheet::Datatypes
  include Spreadsheet::Encodings
end
class Spreadsheet::Workbook
  def active_worksheet; end
  def active_worksheet=(arg0); end
  def add_font(font); end
  def add_format(format); end
  def add_worksheet(worksheet); end
  def create_worksheet(opts = nil); end
  def default_format; end
  def default_format=(arg0); end
  def delete_worksheet(worksheet_index); end
  def encoding; end
  def encoding=(arg0); end
  def font(idx); end
  def fonts; end
  def format(idx); end
  def formats; end
  def initialize(io = nil, opts = nil); end
  def inspect; end
  def io; end
  def palette; end
  def set_custom_color(idx, red, green, blue); end
  def sheet_count; end
  def uninspect_variables; end
  def version; end
  def version=(arg0); end
  def worksheet(idx); end
  def worksheets; end
  def write(io_path_or_writer); end
  def writer(io_or_path, type = nil, version = nil); end
  include Spreadsheet::Encodings
end
module Spreadsheet::Excel
end
module Spreadsheet::Excel::Offset
  def changes; end
  def initialize(*args); end
  def offsets; end
  def self.append_features(mod); end
  include Spreadsheet::Compatibility
end
module Spreadsheet::Excel::Internals
  def binfmt(key); end
  def opcode(key); end
end
class Spreadsheet::Writer
  def initialize(io_or_path); end
  def write(workbook); end
  def write_workbook(workbook, io); end
end
module Spreadsheet::Excel::Writer
end
module Spreadsheet::Excel::Writer::Biff8
  def _unicode_string(string, count_length = nil); end
  def compress_unicode_string(data); end
  def unicode_string(string, count_length = nil); end
  include Spreadsheet::Encodings
end
class Spreadsheet::Excel::Writer::Format < Anonymous_Delegator_19
  def bottom; end
  def bottom_color; end
  def color_code(color); end
  def cross_down; end
  def cross_up; end
  def diagonal_color; end
  def font_index; end
  def format; end
  def hidden; end
  def horizontal_align; end
  def initialize(writer, workbook, format = nil, opts = nil); end
  def left; end
  def left_color; end
  def locked; end
  def merge_range; end
  def num_format; end
  def pattern_bg_color; end
  def pattern_fg_color; end
  def right; end
  def right_color; end
  def self.boolean(*args); end
  def self.color(key, default); end
  def self.line_style(key, default); end
  def shrink; end
  def style_code(style); end
  def text_direction; end
  def text_justlast; end
  def text_wrap; end
  def top; end
  def top_color; end
  def vertical_align; end
  def write_op(writer, op, *args); end
  def write_xf(writer, type = nil); end
  def xf_align; end
  def xf_borders; end
  def xf_brdcolors; end
  def xf_indent; end
  def xf_pattern; end
  def xf_rotation; end
  def xf_type_prot(type); end
  def xf_used_attr; end
  include Spreadsheet::Excel::Internals
end
module Spreadsheet::Excel::Internals::Biff8
  def binfmt(key); end
end
class Spreadsheet::Excel::Writer::Worksheet
  def boundsheet_size; end
  def data; end
  def encode_date(date); end
  def encode_rk(value); end
  def initialize(workbook, worksheet); end
  def name; end
  def need_number?(cell); end
  def row_blocks; end
  def size; end
  def strings; end
  def worksheet; end
  def write_blank(row, idx); end
  def write_bof; end
  def write_boolerr(row, idx); end
  def write_calccount; end
  def write_cell(type, row, idx, *args); end
  def write_cellblocks(row); end
  def write_changes(reader, endpos, sst_status); end
  def write_colinfo(bunch); end
  def write_colinfos; end
  def write_defaultrowheight; end
  def write_defcolwidth; end
  def write_dimensions; end
  def write_eof; end
  def write_formula(row, idx); end
  def write_from_scratch; end
  def write_guts; end
  def write_hlink(row, col, link); end
  def write_hyperlink_table; end
  def write_iteration; end
  def write_labelsst(row, idx); end
  def write_margins; end
  def write_merged_cells; end
  def write_mulblank(row, idx, multiples); end
  def write_mulrk(row, idx, multiples); end
  def write_multiples(row, idx, multiples); end
  def write_number(row, idx); end
  def write_op(op, *args); end
  def write_pagesetup; end
  def write_proctection; end
  def write_refmode; end
  def write_rk(row, idx); end
  def write_row(row); end
  def write_rowblock(block); end
  def write_rows; end
  def write_saverecalc; end
  def write_window2; end
  def write_wsbool; end
  include Spreadsheet::Excel::Internals
  include Spreadsheet::Excel::Internals::Biff8
  include Spreadsheet::Excel::Writer::Biff8
end
class Spreadsheet::Excel::Writer::Workbook < Spreadsheet::Writer
  def _write_sst(workbook, writer, offset, total, strings); end
  def cleanup(workbook); end
  def collect_formats(workbook, opts = nil); end
  def complete_sst_update?(workbook); end
  def date_base; end
  def default_palette; end
  def font_index(workbook, font_key); end
  def fonts; end
  def initialize(*args); end
  def number_format_index(workbook, format); end
  def sanitize_worksheets(sheets); end
  def sst_index(worksheet, str); end
  def worksheets(workbook); end
  def write_bof(workbook, writer, type); end
  def write_bookbool(workbook, writer); end
  def write_boundsheets(workbook, writer, offset); end
  def write_changes(workbook, io); end
  def write_datemode(workbook, writer); end
  def write_dsf(workbook, writer); end
  def write_encoding(workbook, writer); end
  def write_eof(workbook, writer); end
  def write_extsst(workbook, offsets, writer); end
  def write_font(workbook, writer, font); end
  def write_fonts(workbook, writer); end
  def write_formats(workbook, writer); end
  def write_from_scratch(workbook, io); end
  def write_op(writer, op, *args); end
  def write_palette(workbook, writer); end
  def write_password(workbook, writer); end
  def write_placeholder(writer, op, value = nil, fmt = nil); end
  def write_precision(workbook, writer); end
  def write_protect(workbook, writer); end
  def write_refreshall(workbook, writer); end
  def write_sst(workbook, writer, offset); end
  def write_sst_changes(workbook, writer, offset, total, strings); end
  def write_string_part(writer, op, data, wide); end
  def write_styles(workbook, writer); end
  def write_tabid(workbook, writer); end
  def write_window1(workbook, writer); end
  def write_workbook(workbook, io); end
  def write_xfs(workbook, writer); end
  def xf_index(workbook, format); end
  include Spreadsheet::Excel::Internals
  include Spreadsheet::Excel::Writer::Biff8
end
class Spreadsheet::Excel::Workbook < Spreadsheet::Workbook
  def add_shared_string(str); end
  def add_worksheet(worksheet); end
  def biff_version; end
  def bof; end
  def bof=(arg0); end
  def boundsheets; end
  def boundsheets=(value); end
  def date_base; end
  def date_base=(arg0); end
  def encoding=(value); end
  def initialize(*args); end
  def inspect; end
  def ole; end
  def ole=(arg0); end
  def self.offset(*keys); end
  def self.open(io, opts = nil); end
  def set_boundsheets(value, pos, len); end
  def set_encoding(value, pos, len); end
  def set_sst(value, pos, len); end
  def shared_string(idx); end
  def sst; end
  def sst=(value); end
  def sst_size; end
  def uninspect_variables; end
  def version_string; end
  include Spreadsheet::Encodings
  include Spreadsheet::Excel::Offset
end
class Spreadsheet::Formula
  def data; end
  def data=(arg0); end
  def shared; end
  def shared=(arg0); end
  def value; end
  def value=(arg0); end
end
class Spreadsheet::Link < String
  def dos; end
  def dos=(arg0); end
  def fragment; end
  def fragment=(arg0); end
  def href; end
  def initialize(url = nil, description = nil, fragment = nil); end
  def target_frame; end
  def target_frame=(arg0); end
  def to_uri; end
  def url; end
  def url=(arg0); end
  include Spreadsheet::Encodings
end
class Spreadsheet::Note
  def author; end
  def author=(arg0); end
  def col; end
  def col=(arg0); end
  def initialize; end
  def length; end
  def length=(arg0); end
  def objID; end
  def objID=(arg0); end
  def row; end
  def row=(arg0); end
  def text; end
  def text=(arg0); end
  include Spreadsheet::Encodings
end
class Spreadsheet::NoteObject
  def initialize; end
  def objID; end
  def objID=(arg0); end
  def text; end
  def text=(arg0); end
  include Spreadsheet::Encodings
end
class Spreadsheet::Excel::Error
  def code; end
  def initialize(code); end
  def value; end
end
class Spreadsheet::Excel::SstEntry
  def available; end
  def available=(arg0); end
  def chars; end
  def chars=(arg0); end
  def content; end
  def continue(offset, size, chars); end
  def continued?; end
  def continued_chars; end
  def continued_chars=(arg0); end
  def flags; end
  def flags=(arg0); end
  def initialize(opts = nil); end
  def phonetic; end
  def phonetic=(arg0); end
  def richtext; end
  def richtext=(arg0); end
  def wide; end
  def wide=(arg0); end
  include Spreadsheet::Encodings
end
module Spreadsheet::Helpers
  def rcompact(array); end
  def self.rcompact(array); end
end
class Spreadsheet::Row < Array
  def []=(*args); end
  def clear(*args); end
  def collapsed!; end
  def collapsed; end
  def collapsed=(value); end
  def collapsed?; end
  def concat(*args); end
  def default_format; end
  def default_format=(value); end
  def delete(*args); end
  def delete_if(*args); end
  def fill(*args); end
  def first_unused; end
  def first_used; end
  def format(idx); end
  def formats; end
  def formatted; end
  def formatted_size; end
  def height; end
  def height=(value); end
  def hidden!; end
  def hidden; end
  def hidden=(value); end
  def hidden?; end
  def idx; end
  def idx=(arg0); end
  def index_of_first(ary); end
  def initialize(worksheet, idx, cells = nil); end
  def insert(*args); end
  def inspect; end
  def map!(*args); end
  def outline_level; end
  def outline_level=(value); end
  def pop(*args); end
  def push(*args); end
  def reject!(*args); end
  def replace(*args); end
  def reverse!(*args); end
  def self.boolean(*args); end
  def self.colors(*args); end
  def self.enum(key, *values); end
  def self.format_updater(*keys); end
  def self.updater(*keys); end
  def set_format(idx, fmt); end
  def shift(*args); end
  def slice!(*args); end
  def sort!(*args); end
  def uniq!(*args); end
  def unshift(*args); end
  def unupdated_collapsed=(arg); end
  def unupdated_default_format=(format); end
  def unupdated_height=(arg0); end
  def unupdated_hidden=(arg); end
  def unupdated_outline_level=(arg); end
  def update_format(idx, opts = nil); end
  def worksheet; end
  def worksheet=(arg0); end
  include Spreadsheet::Datatypes
end
class Spreadsheet::Excel::Row < Spreadsheet::Row
  def [](idx, len = nil); end
  def _date(data); end
  def _datetime(data); end
  def date(idx); end
  def datetime(idx); end
  def each; end
  def enriched_data(idx, data); end
  def to_a; end
end
class Spreadsheet::Column
  def ==(other); end
  def collapsed!; end
  def collapsed; end
  def collapsed=(value); end
  def collapsed?; end
  def default_format; end
  def default_format=(format); end
  def each; end
  def hidden!; end
  def hidden; end
  def hidden=(value); end
  def hidden?; end
  def idx; end
  def initialize(idx, format, opts = nil); end
  def outline_level; end
  def outline_level=(value); end
  def self.boolean(*args); end
  def self.colors(*args); end
  def self.enum(key, *values); end
  def self.updater(*keys); end
  def unupdated_collapsed=(arg); end
  def unupdated_hidden=(arg); end
  def unupdated_outline_level=(arg); end
  def unupdated_width=(arg0); end
  def width; end
  def width=(value); end
  def worksheet; end
  def worksheet=(arg0); end
  include Enumerable
  include Spreadsheet::Datatypes
end
module Spreadsheet::Excel::Password
  def self.password_hash(password); end
  def self.rol15(hash); end
end
class Spreadsheet::Worksheet
  def [](row, column); end
  def []=(row, column, value); end
  def active; end
  def active=(selected); end
  def add_format(fmt); end
  def cell(row, column); end
  def column(idx); end
  def column_count; end
  def column_updated(idx, column); end
  def columns; end
  def compact!; end
  def default_format; end
  def default_format=(format); end
  def delete_row(idx); end
  def dimensions; end
  def each(skip = nil, &block); end
  def encoding; end
  def format_column(idx, format = nil, opts = nil); end
  def format_dates!(format = nil); end
  def freeze!(top, left); end
  def froze_left; end
  def froze_top; end
  def has_frozen_panel?; end
  def index_of_first(ary); end
  def initialize(opts = nil); end
  def insert_row(idx, cells = nil); end
  def inspect; end
  def last_row; end
  def last_row_index; end
  def margins; end
  def merge_cells(start_row, start_col, end_row, end_col); end
  def merged_cells; end
  def name; end
  def name=(arg0); end
  def pagesetup; end
  def password_hash; end
  def password_hash=(arg0); end
  def protect!(password = nil); end
  def protected?; end
  def recalculate_dimensions; end
  def replace_row(idx, *cells); end
  def row(idx); end
  def row_count; end
  def row_updated(idx, row); end
  def rows; end
  def selected; end
  def selected=(arg0); end
  def self.boolean(*args); end
  def self.colors(*args); end
  def self.enum(key, *values); end
  def shorten(ary); end
  def update_row(idx, *cells); end
  def updated_from(index); end
  def visibility; end
  def visibility=(arg); end
  def workbook; end
  def workbook=(arg0); end
  include Enumerable
  include Spreadsheet::Datatypes
  include Spreadsheet::Encodings
end
class Spreadsheet::Excel::Worksheet < Spreadsheet::Worksheet
  def add_link(row, column, link); end
  def add_note(row, column, note); end
  def column(idx); end
  def date_base; end
  def dimensions=(value); end
  def each(*args); end
  def ensure_rows_read; end
  def guts; end
  def have_set_dimensions(value, pos, len); end
  def initialize(opts = nil); end
  def links; end
  def margins; end
  def notes; end
  def offset; end
  def ole; end
  def pagesetup; end
  def recalculate_dimensions; end
  def row(idx); end
  def row_updated(idx, row); end
  def rows; end
  def self.offset(*keys); end
  def set_dimensions(value, pos, len); end
  def set_row_address(idx, opts); end
  def shared_string(idx); end
  include Spreadsheet::Excel::Offset
end
class Spreadsheet::Excel::Reader
  def decode_rk(work); end
  def encoding(codepage_id); end
  def extend_internals(version); end
  def extend_reader(version); end
  def get_next_chunk; end
  def in_row_block?(op, previous); end
  def initialize(opts = nil); end
  def memoize?; end
  def postread_workbook; end
  def postread_worksheet(worksheet); end
  def read(io); end
  def read_blank(worksheet, addr, work); end
  def read_bof; end
  def read_boolerr(worksheet, addr, work); end
  def read_boundsheet(work, pos, len); end
  def read_codepage(work, pos, len); end
  def read_colinfo(worksheet, work, pos, len); end
  def read_dimensions(worksheet, work, pos, len); end
  def read_font(work, pos, len); end
  def read_format(work, pos, len); end
  def read_formula(worksheet, addr, work); end
  def read_guts(worksheet, work, pos, len); end
  def read_hlink(worksheet, work, pos, len); end
  def read_hlink_string(work, pos); end
  def read_index(worksheet, work, pos, len); end
  def read_label(worksheet, addr, work); end
  def read_labelsst(worksheet, addr, work); end
  def read_merged_cells(worksheet, work, pos, len); end
  def read_mulblank(worksheet, addr, work); end
  def read_mulrk(worksheet, addr, work); end
  def read_note(worksheet, work, pos, len); end
  def read_number(worksheet, addr, work); end
  def read_pagesetup(worksheet, work, pos, len); end
  def read_rk(worksheet, addr, work); end
  def read_row(worksheet, addr); end
  def read_rstring(worksheet, addr, work); end
  def read_sheet_protection(worksheet, op, data); end
  def read_style(work, pos, len); end
  def read_window2(worksheet, work, pos, len); end
  def read_workbook; end
  def read_worksheet(worksheet, offset); end
  def read_xf(work, pos, len); end
  def set_cell(worksheet, row, column, xf, value = nil); end
  def set_missing_row_address(worksheet, work, pos, len); end
  def set_row_address(worksheet, work, pos, len); end
  def setup(io); end
  include Spreadsheet::Encodings
  include Spreadsheet::Excel::Internals
end
class Spreadsheet::Excel::Rgb
  def as_hex; end
  def b; end
  def b=(arg0); end
  def g; end
  def g=(arg0); end
  def initialize(r, g, b); end
  def r; end
  def r=(arg0); end
  def self.to_rgb(color_symbol); end
  def to_i; end
end
