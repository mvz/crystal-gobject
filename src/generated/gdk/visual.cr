module Gdk
  class Visual < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGdk::Visual*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGdk::Visual*)
    end

    def self.best
      __return_value = LibGdk.visual_get_best
      Gdk::Visual.new(__return_value)
    end

    def self.best_depth
      __return_value = LibGdk.visual_get_best_depth
      __return_value
    end

    def self.best_type
      __return_value = LibGdk.visual_get_best_type
      __return_value
    end

    def self.best_with_both(depth, visual_type : Gdk::VisualType)
      __return_value = LibGdk.visual_get_best_with_both(Int32.new(depth), visual_type)
      Gdk::Visual.new(__return_value) if __return_value
    end

    def self.best_with_depth(depth)
      __return_value = LibGdk.visual_get_best_with_depth(Int32.new(depth))
      Gdk::Visual.new(__return_value)
    end

    def self.best_with_type(visual_type : Gdk::VisualType)
      __return_value = LibGdk.visual_get_best_with_type(visual_type)
      Gdk::Visual.new(__return_value)
    end

    def self.system
      __return_value = LibGdk.visual_get_system
      Gdk::Visual.new(__return_value)
    end

    def bits_per_rgb
      __return_value = LibGdk.visual_get_bits_per_rgb(@pointer.as(LibGdk::Visual*))
      __return_value
    end

    def blue_pixel_details(mask, shift, precision)
      LibGdk.visual_get_blue_pixel_details(@pointer.as(LibGdk::Visual*), mask, shift, precision)
      nil
    end

    def byte_order
      __return_value = LibGdk.visual_get_byte_order(@pointer.as(LibGdk::Visual*))
      __return_value
    end

    def colormap_size
      __return_value = LibGdk.visual_get_colormap_size(@pointer.as(LibGdk::Visual*))
      __return_value
    end

    def depth
      __return_value = LibGdk.visual_get_depth(@pointer.as(LibGdk::Visual*))
      __return_value
    end

    def green_pixel_details(mask, shift, precision)
      LibGdk.visual_get_green_pixel_details(@pointer.as(LibGdk::Visual*), mask, shift, precision)
      nil
    end

    def red_pixel_details(mask, shift, precision)
      LibGdk.visual_get_red_pixel_details(@pointer.as(LibGdk::Visual*), mask, shift, precision)
      nil
    end

    def screen
      __return_value = LibGdk.visual_get_screen(@pointer.as(LibGdk::Visual*))
      Gdk::Screen.new(__return_value)
    end

    def visual_type
      __return_value = LibGdk.visual_get_visual_type(@pointer.as(LibGdk::Visual*))
      __return_value
    end

  end
end

