module Gtk
  class StockItem
    include GObject::WrappedType

    def self.new(stock_id : String|Nil = nil, label : String|Nil = nil, modifier : Gdk::ModifierType|Nil = nil, keyval : UInt32|Nil = nil, translation_domain : String|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(32, 0u8)
      new(ptr.as(LibGtk::StockItem*)).tap do |object|
        object.stock_id = stock_id unless stock_id.nil?
        object.label = label unless label.nil?
        object.modifier = modifier unless modifier.nil?
        object.keyval = keyval unless keyval.nil?
        object.translation_domain = translation_domain unless translation_domain.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGtk::StockItem*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::StockItem*)
    end

    def free
      LibGtk.stock_item_free(@pointer.as(LibGtk::StockItem*))
      nil
    end

    def stock_id
      (raise "Expected string but got null" unless (to_unsafe.as(LibGtk::StockItem*).value.stock_id); ::String.new((to_unsafe.as(LibGtk::StockItem*).value.stock_id)))
    end

    def stock_id=(value : String)
      to_unsafe.as(LibGtk::StockItem*).value.stock_id = value.to_unsafe
    end

    def label
      (raise "Expected string but got null" unless (to_unsafe.as(LibGtk::StockItem*).value.label); ::String.new((to_unsafe.as(LibGtk::StockItem*).value.label)))
    end

    def label=(value : String)
      to_unsafe.as(LibGtk::StockItem*).value.label = value.to_unsafe
    end

    def modifier
      (to_unsafe.as(LibGtk::StockItem*).value.modifier)
    end

    def modifier=(value : Gdk::ModifierType)
      to_unsafe.as(LibGtk::StockItem*).value.modifier = value
    end

    def keyval
      (to_unsafe.as(LibGtk::StockItem*).value.keyval)
    end

    def keyval=(value : UInt32)
      to_unsafe.as(LibGtk::StockItem*).value.keyval = UInt32.new(value)
    end

    def translation_domain
      (raise "Expected string but got null" unless (to_unsafe.as(LibGtk::StockItem*).value.translation_domain); ::String.new((to_unsafe.as(LibGtk::StockItem*).value.translation_domain)))
    end

    def translation_domain=(value : String)
      to_unsafe.as(LibGtk::StockItem*).value.translation_domain = value.to_unsafe
    end

  end
end

