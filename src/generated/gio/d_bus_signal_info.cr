module Gio
  class DBusSignalInfo
    include GObject::WrappedType

    def self.new(ref_count : Int32|Nil = nil, name : String|Nil = nil, args : Array(Gio::DBusArgInfo)|Nil = nil, annotations : Array(Gio::DBusAnnotationInfo)|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(32, 0u8)
      new(ptr.as(LibGio::DBusSignalInfo*)).tap do |object|
        object.ref_count = ref_count unless ref_count.nil?
        object.name = name unless name.nil?
        object.args = args unless args.nil?
        object.annotations = annotations unless annotations.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGio::DBusSignalInfo*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::DBusSignalInfo*)
    end

    def ref
      __return_value = LibGio.d_bus_signal_info_ref(@pointer.as(LibGio::DBusSignalInfo*))
      Gio::DBusSignalInfo.new(__return_value)
    end

    def unref
      LibGio.d_bus_signal_info_unref(@pointer.as(LibGio::DBusSignalInfo*))
      nil
    end

    def ref_count
      (to_unsafe.as(LibGio::DBusSignalInfo*).value.ref_count)
    end

    def ref_count=(value : Int32)
      to_unsafe.as(LibGio::DBusSignalInfo*).value.ref_count = Int32.new(value)
    end

    def name
      (raise "Expected string but got null" unless (to_unsafe.as(LibGio::DBusSignalInfo*).value.name); ::String.new((to_unsafe.as(LibGio::DBusSignalInfo*).value.name)))
    end

    def name=(value : String)
      to_unsafe.as(LibGio::DBusSignalInfo*).value.name = value.to_unsafe
    end

    def args
      PointerIterator.new((to_unsafe.as(LibGio::DBusSignalInfo*).value.args)) {|__item| Gio::DBusArgInfo.new(__item) }
    end

    def args=(value : Array(Gio::DBusArgInfo))
      to_unsafe.as(LibGio::DBusSignalInfo*).value.args = value
    end

    def annotations
      PointerIterator.new((to_unsafe.as(LibGio::DBusSignalInfo*).value.annotations)) {|__item| Gio::DBusAnnotationInfo.new(__item) }
    end

    def annotations=(value : Array(Gio::DBusAnnotationInfo))
      to_unsafe.as(LibGio::DBusSignalInfo*).value.annotations = value
    end

  end
end

