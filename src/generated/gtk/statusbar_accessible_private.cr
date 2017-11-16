module Gtk
  class StatusbarAccessiblePrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::StatusbarAccessiblePrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::StatusbarAccessiblePrivate*)
    end

  end
end

