# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strong
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/rgeo-shapefile/all/rgeo-shapefile.rbi
#
# rgeo-shapefile-2.0.1
module RGeo
end
module RGeo::Shapefile
end
class RGeo::Shapefile::Reader
  def [](index_); end
  def _read_multipatch(data_); end
  def _read_multipoint(data_, opt_ = nil); end
  def _read_next_record; end
  def _read_point(data_, opt_ = nil); end
  def _read_polygon(data_, opt_ = nil); end
  def _read_polyline(data_, opt_ = nil); end
  def attributes_available?; end
  def close; end
  def cur_index; end
  def each; end
  def factory; end
  def get(index_); end
  def initialize(path_, opts_ = nil); end
  def mmax; end
  def mmin; end
  def next; end
  def num_records; end
  def open?; end
  def rewind; end
  def seek_index(index_); end
  def self.open(path_, opts_ = nil, &block_); end
  def shape_type_code; end
  def size; end
  def xmax; end
  def xmin; end
  def ymax; end
  def ymin; end
  def zmax; end
  def zmin; end
end
class RGeo::Shapefile::Reader::Record
  def [](key_); end
  def attributes; end
  def geometry; end
  def index; end
  def initialize(index_, geometry_, attributes_); end
  def keys; end
end
