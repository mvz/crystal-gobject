require "./misc"

module Gtk
  class Image < Misc
    @pointer : Void*
    def initialize(pointer : LibGtk::Image*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Image*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def file
      __return_value = LibGtk.image_get_file(to_unsafe.as(LibGtk::Image*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def gicon
      __return_value = LibGtk.image_get_gicon(to_unsafe.as(LibGtk::Image*))
      __return_value
    end

    def icon_name
      __return_value = LibGtk.image_get_icon_name(to_unsafe.as(LibGtk::Image*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def icon_set
      __return_value = LibGtk.image_get_icon_set(to_unsafe.as(LibGtk::Image*))
      Gtk::IconSet.new(__return_value)
    end

    def icon_size
      __return_value = LibGtk.image_get_icon_size(to_unsafe.as(LibGtk::Image*))
      __return_value
    end

    def pixbuf
      __return_value = LibGtk.image_get_pixbuf(to_unsafe.as(LibGtk::Image*))
      GdkPixbuf::Pixbuf.new(__return_value)
    end

    def pixbuf_animation
      __return_value = LibGtk.image_get_pixbuf_animation(to_unsafe.as(LibGtk::Image*))
      GdkPixbuf::PixbufAnimation.new(__return_value)
    end

    def pixel_size
      __return_value = LibGtk.image_get_pixel_size(to_unsafe.as(LibGtk::Image*))
      __return_value
    end

    def resource
      __return_value = LibGtk.image_get_resource(to_unsafe.as(LibGtk::Image*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def stock
      __return_value = LibGtk.image_get_stock(to_unsafe.as(LibGtk::Image*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def storage_type
      __return_value = LibGtk.image_get_storage_type(to_unsafe.as(LibGtk::Image*))
      __return_value
    end

    def surface
      __return_value = LibGtk.image_get_surface(to_unsafe.as(LibGtk::Image*))
      Cairo::Surface.new(__return_value)
    end

    def use_fallback
      __return_value = LibGtk.image_get_use_fallback(to_unsafe.as(LibGtk::Image*))
      __return_value
    end

    def self.new : self
      __return_value = LibGtk.image_new
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_from_animation(animation) : self
      __return_value = LibGtk.image_new_from_animation(animation.to_unsafe.as(LibGdkPixbuf::PixbufAnimation*))
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_from_file(filename) : self
      __return_value = LibGtk.image_new_from_file(filename.to_unsafe)
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_from_gicon(icon, size) : self
      __return_value = LibGtk.image_new_from_gicon(icon.to_unsafe.as(LibGio::Icon*), Int32.new(size))
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_from_icon_name(icon_name, size) : self
      __return_value = LibGtk.image_new_from_icon_name(icon_name ? icon_name.to_unsafe : nil, Int32.new(size))
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_from_icon_set(icon_set, size) : self
      __return_value = LibGtk.image_new_from_icon_set(icon_set.to_unsafe.as(LibGtk::IconSet*), Int32.new(size))
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_from_pixbuf(pixbuf) : self
      __return_value = LibGtk.image_new_from_pixbuf(pixbuf ? pixbuf.to_unsafe.as(LibGdkPixbuf::Pixbuf*) : nil)
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_from_resource(resource_path) : self
      __return_value = LibGtk.image_new_from_resource(resource_path.to_unsafe)
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_from_stock(stock_id, size) : self
      __return_value = LibGtk.image_new_from_stock(stock_id.to_unsafe, Int32.new(size))
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_from_surface(surface) : self
      __return_value = LibGtk.image_new_from_surface(surface ? surface.to_unsafe.as(LibCairo::Surface*) : nil)
      cast Gtk::Widget.new(__return_value)
    end

    def clear
      LibGtk.image_clear(@pointer.as(LibGtk::Image*))
      nil
    end

    def animation
      __return_value = LibGtk.image_get_animation(@pointer.as(LibGtk::Image*))
      GdkPixbuf::PixbufAnimation.new(__return_value) if __return_value
    end

    def gicon(gicon, size)
      LibGtk.image_get_gicon(@pointer.as(LibGtk::Image*), gicon, size)
      nil
    end

    def icon_name(icon_name, size)
      LibGtk.image_get_icon_name(@pointer.as(LibGtk::Image*), icon_name, size)
      nil
    end

    def icon_set(icon_set, size)
      LibGtk.image_get_icon_set(@pointer.as(LibGtk::Image*), icon_set, size)
      nil
    end

    def pixbuf
      __return_value = LibGtk.image_get_pixbuf(@pointer.as(LibGtk::Image*))
      GdkPixbuf::Pixbuf.new(__return_value) if __return_value
    end

    def pixel_size
      __return_value = LibGtk.image_get_pixel_size(@pointer.as(LibGtk::Image*))
      __return_value
    end

    def stock(stock_id, size)
      LibGtk.image_get_stock(@pointer.as(LibGtk::Image*), stock_id, size)
      nil
    end

    def storage_type
      __return_value = LibGtk.image_get_storage_type(@pointer.as(LibGtk::Image*))
      __return_value
    end

    def from_animation=(animation)
      LibGtk.image_set_from_animation(@pointer.as(LibGtk::Image*), animation.to_unsafe.as(LibGdkPixbuf::PixbufAnimation*))
      nil
    end

    def from_file=(filename)
      LibGtk.image_set_from_file(@pointer.as(LibGtk::Image*), filename ? filename.to_unsafe : nil)
      nil
    end

    def set_from_gicon(icon, size)
      LibGtk.image_set_from_gicon(@pointer.as(LibGtk::Image*), icon.to_unsafe.as(LibGio::Icon*), Int32.new(size))
      nil
    end

    def set_from_icon_name(icon_name, size)
      LibGtk.image_set_from_icon_name(@pointer.as(LibGtk::Image*), icon_name ? icon_name.to_unsafe : nil, Int32.new(size))
      nil
    end

    def set_from_icon_set(icon_set, size)
      LibGtk.image_set_from_icon_set(@pointer.as(LibGtk::Image*), icon_set.to_unsafe.as(LibGtk::IconSet*), Int32.new(size))
      nil
    end

    def from_pixbuf=(pixbuf)
      LibGtk.image_set_from_pixbuf(@pointer.as(LibGtk::Image*), pixbuf ? pixbuf.to_unsafe.as(LibGdkPixbuf::Pixbuf*) : nil)
      nil
    end

    def from_resource=(resource_path)
      LibGtk.image_set_from_resource(@pointer.as(LibGtk::Image*), resource_path ? resource_path.to_unsafe : nil)
      nil
    end

    def set_from_stock(stock_id, size)
      LibGtk.image_set_from_stock(@pointer.as(LibGtk::Image*), stock_id.to_unsafe, Int32.new(size))
      nil
    end

    def from_surface=(surface)
      LibGtk.image_set_from_surface(@pointer.as(LibGtk::Image*), surface ? surface.to_unsafe.as(LibCairo::Surface*) : nil)
      nil
    end

    def pixel_size=(pixel_size)
      LibGtk.image_set_pixel_size(@pointer.as(LibGtk::Image*), Int32.new(pixel_size))
      nil
    end

  end
end

