module GLib
  class Array
    include GObject::WrappedType

    def self.new(data : String|Nil = nil, len : UInt32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(16, 0u8)
      new(ptr.as(LibGLib::Array*)).tap do |object|
        object.data = data unless data.nil?
        object.len = len unless len.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGLib::Array*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::Array*)
    end

    def data
      (raise "Expected string but got null" unless (to_unsafe.as(LibGLib::Array*).value.data); ::String.new((to_unsafe.as(LibGLib::Array*).value.data)))
    end

    def data=(value : String)
      to_unsafe.as(LibGLib::Array*).value.data = value.to_unsafe
    end

    def len
      (to_unsafe.as(LibGLib::Array*).value.len)
    end

    def len=(value : UInt32)
      to_unsafe.as(LibGLib::Array*).value.len = UInt32.new(value)
    end

  end
end

