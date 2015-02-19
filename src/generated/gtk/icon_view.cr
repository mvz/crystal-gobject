require "./container"

module Gtk
  class IconView < Container
    def initialize @gtk_icon_view
    end

    def to_unsafe
      @gtk_icon_view.not_nil!
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements CellLayout
    # Implements Scrollable

















    def self.new_internal
      __return_value = LibGtk.icon_view_new
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_area(area)
      __return_value = LibGtk.icon_view_new_with_area((area.to_unsafe as LibGtk::CellArea*))
      Gtk::Widget.new(__return_value)
    end

    def self.new_with_model(model)
      __return_value = LibGtk.icon_view_new_with_model((model.to_unsafe as LibGtk::TreeModel*))
      Gtk::Widget.new(__return_value)
    end

    def convert_widget_to_bin_window_coords(wx, wy, bx, by)
      __return_value = LibGtk.icon_view_convert_widget_to_bin_window_coords((to_unsafe as LibGtk::IconView*), Int32.cast(wx), Int32.cast(wy), Int32.cast(bx), Int32.cast(by))
      __return_value
    end

    def create_drag_icon(path)
      __return_value = LibGtk.icon_view_create_drag_icon((to_unsafe as LibGtk::IconView*), (path.to_unsafe as LibGtk::TreePath*))
      Cairo::Surface.new(__return_value)
    end

    def enable_model_drag_dest(targets, n_targets, actions)
      __return_value = LibGtk.icon_view_enable_model_drag_dest((to_unsafe as LibGtk::IconView*), targets, Int32.cast(n_targets), actions)
      __return_value
    end

    def enable_model_drag_source(start_button_mask, targets, n_targets, actions)
      __return_value = LibGtk.icon_view_enable_model_drag_source((to_unsafe as LibGtk::IconView*), start_button_mask, targets, Int32.cast(n_targets), actions)
      __return_value
    end

    def activate_on_single_click
      __return_value = LibGtk.icon_view_get_activate_on_single_click((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def cell_rect(path, cell, rect)
      __return_value = LibGtk.icon_view_get_cell_rect((to_unsafe as LibGtk::IconView*), (path.to_unsafe as LibGtk::TreePath*), cell && (cell.to_unsafe as LibGtk::CellRenderer*), rect)
      __return_value
    end

    def column_spacing
      __return_value = LibGtk.icon_view_get_column_spacing((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def columns
      __return_value = LibGtk.icon_view_get_columns((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def cursor(path, cell)
      __return_value = LibGtk.icon_view_get_cursor((to_unsafe as LibGtk::IconView*), (path.to_unsafe as LibGtk::TreePath*), (cell.to_unsafe as LibGtk::CellRenderer*))
      __return_value
    end

    def dest_item_at_pos(drag_x, drag_y, path, pos)
      __return_value = LibGtk.icon_view_get_dest_item_at_pos((to_unsafe as LibGtk::IconView*), Int32.cast(drag_x), Int32.cast(drag_y), (path.to_unsafe as LibGtk::TreePath*), pos)
      __return_value
    end

    def drag_dest_item(path, pos)
      __return_value = LibGtk.icon_view_get_drag_dest_item((to_unsafe as LibGtk::IconView*), (path.to_unsafe as LibGtk::TreePath*), pos)
      __return_value
    end

    def item_at_pos(x, y, path, cell)
      __return_value = LibGtk.icon_view_get_item_at_pos((to_unsafe as LibGtk::IconView*), Int32.cast(x), Int32.cast(y), (path.to_unsafe as LibGtk::TreePath*), (cell.to_unsafe as LibGtk::CellRenderer*))
      __return_value
    end

    def item_column(path)
      __return_value = LibGtk.icon_view_get_item_column((to_unsafe as LibGtk::IconView*), (path.to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def item_orientation
      __return_value = LibGtk.icon_view_get_item_orientation((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def item_padding
      __return_value = LibGtk.icon_view_get_item_padding((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def item_row(path)
      __return_value = LibGtk.icon_view_get_item_row((to_unsafe as LibGtk::IconView*), (path.to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def item_width
      __return_value = LibGtk.icon_view_get_item_width((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def margin
      __return_value = LibGtk.icon_view_get_margin((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def markup_column
      __return_value = LibGtk.icon_view_get_markup_column((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def model
      __return_value = LibGtk.icon_view_get_model((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def path_at_pos(x, y)
      __return_value = LibGtk.icon_view_get_path_at_pos((to_unsafe as LibGtk::IconView*), Int32.cast(x), Int32.cast(y))
      Gtk::TreePath.new(__return_value)
    end

    def pixbuf_column
      __return_value = LibGtk.icon_view_get_pixbuf_column((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def reorderable
      __return_value = LibGtk.icon_view_get_reorderable((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def row_spacing
      __return_value = LibGtk.icon_view_get_row_spacing((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def selected_items
      __return_value = LibGtk.icon_view_get_selected_items((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def selection_mode
      __return_value = LibGtk.icon_view_get_selection_mode((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def spacing
      __return_value = LibGtk.icon_view_get_spacing((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def text_column
      __return_value = LibGtk.icon_view_get_text_column((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def tooltip_column
      __return_value = LibGtk.icon_view_get_tooltip_column((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def tooltip_context(x, y, keyboard_tip, model, path, iter)
      __return_value = LibGtk.icon_view_get_tooltip_context((to_unsafe as LibGtk::IconView*), Int32.cast(x), Int32.cast(y), Bool.cast(keyboard_tip), (model.to_unsafe as LibGtk::TreeModel*), (path.to_unsafe as LibGtk::TreePath*), iter)
      __return_value
    end

    def visible_range(start_path, end_path)
      __return_value = LibGtk.icon_view_get_visible_range((to_unsafe as LibGtk::IconView*), (start_path.to_unsafe as LibGtk::TreePath*), (end_path.to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def item_activated(path)
      __return_value = LibGtk.icon_view_item_activated((to_unsafe as LibGtk::IconView*), (path.to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def path_is_selected(path)
      __return_value = LibGtk.icon_view_path_is_selected((to_unsafe as LibGtk::IconView*), (path.to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def scroll_to_path(path, use_align, row_align, col_align)
      __return_value = LibGtk.icon_view_scroll_to_path((to_unsafe as LibGtk::IconView*), (path.to_unsafe as LibGtk::TreePath*), Bool.cast(use_align), Float32.cast(row_align), Float32.cast(col_align))
      __return_value
    end

    def select_all
      __return_value = LibGtk.icon_view_select_all((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def select_path(path)
      __return_value = LibGtk.icon_view_select_path((to_unsafe as LibGtk::IconView*), (path.to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def selected_foreach(func, data)
      __return_value = LibGtk.icon_view_selected_foreach((to_unsafe as LibGtk::IconView*), func, data)
      __return_value
    end

    def activate_on_single_click=(single)
      __return_value = LibGtk.icon_view_set_activate_on_single_click((to_unsafe as LibGtk::IconView*), Bool.cast(single))
      __return_value
    end

    def column_spacing=(column_spacing)
      __return_value = LibGtk.icon_view_set_column_spacing((to_unsafe as LibGtk::IconView*), Int32.cast(column_spacing))
      __return_value
    end

    def columns=(columns)
      __return_value = LibGtk.icon_view_set_columns((to_unsafe as LibGtk::IconView*), Int32.cast(columns))
      __return_value
    end

    def set_cursor(path, cell, start_editing)
      __return_value = LibGtk.icon_view_set_cursor((to_unsafe as LibGtk::IconView*), (path.to_unsafe as LibGtk::TreePath*), cell && (cell.to_unsafe as LibGtk::CellRenderer*), Bool.cast(start_editing))
      __return_value
    end

    def set_drag_dest_item(path, pos)
      __return_value = LibGtk.icon_view_set_drag_dest_item((to_unsafe as LibGtk::IconView*), path && (path.to_unsafe as LibGtk::TreePath*), pos)
      __return_value
    end

    def item_orientation=(orientation)
      __return_value = LibGtk.icon_view_set_item_orientation((to_unsafe as LibGtk::IconView*), orientation)
      __return_value
    end

    def item_padding=(item_padding)
      __return_value = LibGtk.icon_view_set_item_padding((to_unsafe as LibGtk::IconView*), Int32.cast(item_padding))
      __return_value
    end

    def item_width=(item_width)
      __return_value = LibGtk.icon_view_set_item_width((to_unsafe as LibGtk::IconView*), Int32.cast(item_width))
      __return_value
    end

    def margin=(margin)
      __return_value = LibGtk.icon_view_set_margin((to_unsafe as LibGtk::IconView*), Int32.cast(margin))
      __return_value
    end

    def markup_column=(column)
      __return_value = LibGtk.icon_view_set_markup_column((to_unsafe as LibGtk::IconView*), Int32.cast(column))
      __return_value
    end

    def model=(model)
      __return_value = LibGtk.icon_view_set_model((to_unsafe as LibGtk::IconView*), model && (model.to_unsafe as LibGtk::TreeModel*))
      __return_value
    end

    def pixbuf_column=(column)
      __return_value = LibGtk.icon_view_set_pixbuf_column((to_unsafe as LibGtk::IconView*), Int32.cast(column))
      __return_value
    end

    def reorderable=(reorderable)
      __return_value = LibGtk.icon_view_set_reorderable((to_unsafe as LibGtk::IconView*), Bool.cast(reorderable))
      __return_value
    end

    def row_spacing=(row_spacing)
      __return_value = LibGtk.icon_view_set_row_spacing((to_unsafe as LibGtk::IconView*), Int32.cast(row_spacing))
      __return_value
    end

    def selection_mode=(mode)
      __return_value = LibGtk.icon_view_set_selection_mode((to_unsafe as LibGtk::IconView*), mode)
      __return_value
    end

    def spacing=(spacing)
      __return_value = LibGtk.icon_view_set_spacing((to_unsafe as LibGtk::IconView*), Int32.cast(spacing))
      __return_value
    end

    def text_column=(column)
      __return_value = LibGtk.icon_view_set_text_column((to_unsafe as LibGtk::IconView*), Int32.cast(column))
      __return_value
    end

    def set_tooltip_cell(tooltip, path, cell)
      __return_value = LibGtk.icon_view_set_tooltip_cell((to_unsafe as LibGtk::IconView*), (tooltip.to_unsafe as LibGtk::Tooltip*), (path.to_unsafe as LibGtk::TreePath*), cell && (cell.to_unsafe as LibGtk::CellRenderer*))
      __return_value
    end

    def tooltip_column=(column)
      __return_value = LibGtk.icon_view_set_tooltip_column((to_unsafe as LibGtk::IconView*), Int32.cast(column))
      __return_value
    end

    def set_tooltip_item(tooltip, path)
      __return_value = LibGtk.icon_view_set_tooltip_item((to_unsafe as LibGtk::IconView*), (tooltip.to_unsafe as LibGtk::Tooltip*), (path.to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def unselect_all
      __return_value = LibGtk.icon_view_unselect_all((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def unselect_path(path)
      __return_value = LibGtk.icon_view_unselect_path((to_unsafe as LibGtk::IconView*), (path.to_unsafe as LibGtk::TreePath*))
      __return_value
    end

    def unset_model_drag_dest
      __return_value = LibGtk.icon_view_unset_model_drag_dest((to_unsafe as LibGtk::IconView*))
      __return_value
    end

    def unset_model_drag_source
      __return_value = LibGtk.icon_view_unset_model_drag_source((to_unsafe as LibGtk::IconView*))
      __return_value
    end

  end
end
