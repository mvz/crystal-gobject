module Gtk
  class StyleProperties < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::StyleProperties*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::StyleProperties*)
    end

    # Implements StyleProvider
    def self.new : self
      __return_value = LibGtk.style_properties_new
      cast Gtk::StyleProperties.new(__return_value)
    end

    def clear
      LibGtk.style_properties_clear(@pointer.as(LibGtk::StyleProperties*))
      nil
    end

    def property(property, state : Gtk::StateFlags, value)
      __return_value = LibGtk.style_properties_get_property(@pointer.as(LibGtk::StyleProperties*), property.to_unsafe, state, value)
      __return_value
    end

    def lookup_color(name)
      __return_value = LibGtk.style_properties_lookup_color(@pointer.as(LibGtk::StyleProperties*), name.to_unsafe)
      Gtk::SymbolicColor.new(__return_value)
    end

    def map_color(name, color)
      LibGtk.style_properties_map_color(@pointer.as(LibGtk::StyleProperties*), name.to_unsafe, color.to_unsafe.as(LibGtk::SymbolicColor*))
      nil
    end

    def merge(props_to_merge, replace)
      LibGtk.style_properties_merge(@pointer.as(LibGtk::StyleProperties*), props_to_merge.to_unsafe.as(LibGtk::StyleProperties*), replace)
      nil
    end

    def set_property(property, state : Gtk::StateFlags, value)
      LibGtk.style_properties_set_property(@pointer.as(LibGtk::StyleProperties*), property.to_unsafe, state, value.to_unsafe.as(LibGObject::Value*))
      nil
    end

    def unset_property(property, state : Gtk::StateFlags)
      LibGtk.style_properties_unset_property(@pointer.as(LibGtk::StyleProperties*), property.to_unsafe, state)
      nil
    end

  end
end

