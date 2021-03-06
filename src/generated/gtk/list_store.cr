module Gtk
  class ListStore < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGtk::ListStore*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::ListStore*)
    end

    # Implements Buildable
    # Implements TreeDragDest
    # Implements TreeDragSource
    # Implements TreeModel
    # Implements TreeSortable
    def self.new(n_columns, types) : self
      __return_value = LibGtk.list_store_new(Int32.new(n_columns), types)
      cast Gtk::ListStore.new(__return_value)
    end

    def append(iter)
      LibGtk.list_store_append(@pointer.as(LibGtk::ListStore*), iter)
      nil
    end

    def clear
      LibGtk.list_store_clear(@pointer.as(LibGtk::ListStore*))
      nil
    end

    def insert(iter, position)
      LibGtk.list_store_insert(@pointer.as(LibGtk::ListStore*), iter, Int32.new(position))
      nil
    end

    def insert_after(iter, sibling)
      LibGtk.list_store_insert_after(@pointer.as(LibGtk::ListStore*), iter, sibling ? sibling.to_unsafe.as(LibGtk::TreeIter*) : nil)
      nil
    end

    def insert_before(iter, sibling)
      LibGtk.list_store_insert_before(@pointer.as(LibGtk::ListStore*), iter, sibling ? sibling.to_unsafe.as(LibGtk::TreeIter*) : nil)
      nil
    end

    def insert_with_valuesv(iter, position, columns, values, n_values)
      LibGtk.list_store_insert_with_valuesv(@pointer.as(LibGtk::ListStore*), iter, Int32.new(position), columns, values, Int32.new(n_values))
      nil
    end

    def iter_is_valid(iter)
      __return_value = LibGtk.list_store_iter_is_valid(@pointer.as(LibGtk::ListStore*), iter.to_unsafe.as(LibGtk::TreeIter*))
      __return_value
    end

    def move_after(iter, position)
      LibGtk.list_store_move_after(@pointer.as(LibGtk::ListStore*), iter.to_unsafe.as(LibGtk::TreeIter*), position ? position.to_unsafe.as(LibGtk::TreeIter*) : nil)
      nil
    end

    def move_before(iter, position)
      LibGtk.list_store_move_before(@pointer.as(LibGtk::ListStore*), iter.to_unsafe.as(LibGtk::TreeIter*), position ? position.to_unsafe.as(LibGtk::TreeIter*) : nil)
      nil
    end

    def prepend(iter)
      LibGtk.list_store_prepend(@pointer.as(LibGtk::ListStore*), iter)
      nil
    end

    def remove(iter)
      __return_value = LibGtk.list_store_remove(@pointer.as(LibGtk::ListStore*), iter.to_unsafe.as(LibGtk::TreeIter*))
      __return_value
    end

    def reorder(new_order)
      LibGtk.list_store_reorder(@pointer.as(LibGtk::ListStore*), new_order)
      nil
    end

    def set_column_types(n_columns, types)
      LibGtk.list_store_set_column_types(@pointer.as(LibGtk::ListStore*), Int32.new(n_columns), types)
      nil
    end

    def set_value(iter, column, value)
      LibGtk.list_store_set_value(@pointer.as(LibGtk::ListStore*), iter.to_unsafe.as(LibGtk::TreeIter*), Int32.new(column), value.to_unsafe.as(LibGObject::Value*))
      nil
    end

    def set(iter, columns, values, n_values)
      LibGtk.list_store_set(@pointer.as(LibGtk::ListStore*), iter.to_unsafe.as(LibGtk::TreeIter*), columns, values, Int32.new(n_values))
      nil
    end

    def swap(a, b)
      LibGtk.list_store_swap(@pointer.as(LibGtk::ListStore*), a.to_unsafe.as(LibGtk::TreeIter*), b.to_unsafe.as(LibGtk::TreeIter*))
      nil
    end

  end
end

