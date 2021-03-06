module GLib
  class Dir
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGLib::Dir*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::Dir*)
    end

    def close
      LibGLib.dir_close(@pointer.as(LibGLib::Dir*))
      nil
    end

    def read_name
      __return_value = LibGLib.dir_read_name(@pointer.as(LibGLib::Dir*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def rewind
      LibGLib.dir_rewind(@pointer.as(LibGLib::Dir*))
      nil
    end

    def self.make_tmp(tmpl)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.dir_make_tmp(tmpl ? tmpl.to_unsafe : nil, pointerof(__error))
      GLib::Error.assert __error
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

  end
end

