require "./input_stream"

module Gio
  class UnixInputStream < InputStream
    @pointer : Void*
    def initialize(pointer : LibGio::UnixInputStream*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::UnixInputStream*)
    end

    # Implements FileDescriptorBased
    # Implements PollableInputStream
    def close_fd
      __return_value = LibGio.unix_input_stream_get_close_fd(to_unsafe.as(LibGio::UnixInputStream*))
      __return_value
    end

    def fd
      __return_value = LibGio.unix_input_stream_get_fd(to_unsafe.as(LibGio::UnixInputStream*))
      __return_value
    end

    def self.new(fd, close_fd) : self
      __return_value = LibGio.unix_input_stream_new(Int32.new(fd), close_fd)
      cast Gio::InputStream.new(__return_value)
    end

    def close_fd
      __return_value = LibGio.unix_input_stream_get_close_fd(@pointer.as(LibGio::UnixInputStream*))
      __return_value
    end

    def fd
      __return_value = LibGio.unix_input_stream_get_fd(@pointer.as(LibGio::UnixInputStream*))
      __return_value
    end

    def close_fd=(close_fd)
      LibGio.unix_input_stream_set_close_fd(@pointer.as(LibGio::UnixInputStream*), close_fd)
      nil
    end

  end
end

