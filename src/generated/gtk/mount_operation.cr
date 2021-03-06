module Gtk
  class MountOperation < Gio::MountOperation
    @pointer : Void*
    def initialize(pointer : LibGtk::MountOperation*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::MountOperation*)
    end

    def is_showing
      gvalue = GObject::Value.new(GObject::Type::BOOLEAN)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "is_showing", gvalue)
      gvalue.boolean
    end

    def parent
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "parent", gvalue)
      Gtk::Window.cast(gvalue.object)
    end

    def screen
      gvalue = GObject::Value.new(GObject::Type::INTERFACE)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "screen", gvalue)
      Gdk::Screen.cast(gvalue.object)
    end

    def self.new(parent) : self
      __return_value = LibGtk.mount_operation_new(parent ? parent.to_unsafe.as(LibGtk::Window*) : nil)
      cast Gio::MountOperation.new(__return_value)
    end

    def parent
      __return_value = LibGtk.mount_operation_get_parent(@pointer.as(LibGtk::MountOperation*))
      Gtk::Window.new(__return_value)
    end

    def screen
      __return_value = LibGtk.mount_operation_get_screen(@pointer.as(LibGtk::MountOperation*))
      Gdk::Screen.new(__return_value)
    end

    def showing?
      __return_value = LibGtk.mount_operation_is_showing(@pointer.as(LibGtk::MountOperation*))
      __return_value
    end

    def parent=(parent)
      LibGtk.mount_operation_set_parent(@pointer.as(LibGtk::MountOperation*), parent ? parent.to_unsafe.as(LibGtk::Window*) : nil)
      nil
    end

    def screen=(screen)
      LibGtk.mount_operation_set_screen(@pointer.as(LibGtk::MountOperation*), screen.to_unsafe.as(LibGdk::Screen*))
      nil
    end

  end
end

