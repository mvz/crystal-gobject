module GLib
  class Regex
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGLib::Regex*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGLib::Regex*)
    end

    def self.new(pattern, compile_options : GLib::RegexCompileFlags, match_options : GLib::RegexMatchFlags) : self
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.regex_new(pattern.to_unsafe, compile_options, match_options, pointerof(__error))
      GLib::Error.assert __error
      cast GLib::Regex.new(__return_value) if __return_value
    end

    def capture_count
      __return_value = LibGLib.regex_get_capture_count(@pointer.as(LibGLib::Regex*))
      __return_value
    end

    def compile_flags
      __return_value = LibGLib.regex_get_compile_flags(@pointer.as(LibGLib::Regex*))
      __return_value
    end

    def has_cr_or_lf
      __return_value = LibGLib.regex_get_has_cr_or_lf(@pointer.as(LibGLib::Regex*))
      __return_value
    end

    def match_flags
      __return_value = LibGLib.regex_get_match_flags(@pointer.as(LibGLib::Regex*))
      __return_value
    end

    def max_backref
      __return_value = LibGLib.regex_get_max_backref(@pointer.as(LibGLib::Regex*))
      __return_value
    end

    def max_lookbehind
      __return_value = LibGLib.regex_get_max_lookbehind(@pointer.as(LibGLib::Regex*))
      __return_value
    end

    def pattern
      __return_value = LibGLib.regex_get_pattern(@pointer.as(LibGLib::Regex*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def string_number(name)
      __return_value = LibGLib.regex_get_string_number(@pointer.as(LibGLib::Regex*), name.to_unsafe)
      __return_value
    end

    def match(string, match_options : GLib::RegexMatchFlags, match_info)
      __return_value = LibGLib.regex_match(@pointer.as(LibGLib::Regex*), string.to_unsafe, match_options, match_info)
      __return_value
    end

    def match_all(string, match_options : GLib::RegexMatchFlags, match_info)
      __return_value = LibGLib.regex_match_all(@pointer.as(LibGLib::Regex*), string.to_unsafe, match_options, match_info)
      __return_value
    end

    def match_all_full(string, string_len, start_position, match_options : GLib::RegexMatchFlags, match_info)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.regex_match_all_full(@pointer.as(LibGLib::Regex*), string, Int64.new(string_len), Int32.new(start_position), match_options, match_info, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def match_full(string, string_len, start_position, match_options : GLib::RegexMatchFlags, match_info)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.regex_match_full(@pointer.as(LibGLib::Regex*), string, Int64.new(string_len), Int32.new(start_position), match_options, match_info, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def ref
      __return_value = LibGLib.regex_ref(@pointer.as(LibGLib::Regex*))
      GLib::Regex.new(__return_value)
    end

    def replace(string, string_len, start_position, replacement, match_options : GLib::RegexMatchFlags)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.regex_replace(@pointer.as(LibGLib::Regex*), string, Int64.new(string_len), Int32.new(start_position), replacement.to_unsafe, match_options, pointerof(__error))
      GLib::Error.assert __error
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def replace_literal(string, string_len, start_position, replacement, match_options : GLib::RegexMatchFlags)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.regex_replace_literal(@pointer.as(LibGLib::Regex*), string, Int64.new(string_len), Int32.new(start_position), replacement.to_unsafe, match_options, pointerof(__error))
      GLib::Error.assert __error
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def split(string, match_options : GLib::RegexMatchFlags)
      __return_value = LibGLib.regex_split(@pointer.as(LibGLib::Regex*), string.to_unsafe, match_options)
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def split_full(string, string_len, start_position, match_options : GLib::RegexMatchFlags, max_tokens)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.regex_split_full(@pointer.as(LibGLib::Regex*), string, Int64.new(string_len), Int32.new(start_position), match_options, Int32.new(max_tokens), pointerof(__error))
      GLib::Error.assert __error
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

    def unref
      LibGLib.regex_unref(@pointer.as(LibGLib::Regex*))
      nil
    end

    def self.check_replacement(replacement, has_references)
      __error = Pointer(LibGLib::Error).null
      __return_value = LibGLib.regex_check_replacement(replacement.to_unsafe, has_references, pointerof(__error))
      GLib::Error.assert __error
      __return_value
    end

    def self.error_quark
      __return_value = LibGLib.regex_error_quark
      __return_value
    end

    def self.escape_nul(string, length)
      __return_value = LibGLib.regex_escape_nul(string.to_unsafe, Int32.new(length))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def self.escape_string(string, length)
      __return_value = LibGLib.regex_escape_string(string, Int32.new(length))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def self.match_simple(pattern, string, compile_options : GLib::RegexCompileFlags, match_options : GLib::RegexMatchFlags)
      __return_value = LibGLib.regex_match_simple(pattern.to_unsafe, string.to_unsafe, compile_options, match_options)
      __return_value
    end

    def self.split_simple(pattern, string, compile_options : GLib::RegexCompileFlags, match_options : GLib::RegexMatchFlags)
      __return_value = LibGLib.regex_split_simple(pattern.to_unsafe, string.to_unsafe, compile_options, match_options)
      PointerIterator.new(__return_value) {|__item| (raise "Expected string but got null" unless __item; ::String.new(__item)) }
    end

  end
end

