function hex_escape(c::Char)::String
    tchar = first(transcode(UInt8, string(c)))
    string("\\x", string(tchar; pad = sizeof(tchar)<<1, base = 16))
end

hex_escape(s::String)::String = join([hex_escape(c) for c in s])

hex_escape(s) = hex_escape(string(s))

