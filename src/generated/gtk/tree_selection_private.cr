module Gtk
  class TreeSelectionPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::TreeSelectionPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::TreeSelectionPrivate*)
    end

  end
end

