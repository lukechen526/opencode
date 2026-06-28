function Code(elem)
  if elem.text:match("^packages/") or elem.text:match("^~/") or elem.text:match("^guides/") or elem.text:match("^specs/") or elem.text:match("^infra/") then
    return pandoc.RawInline('latex', '\\path{' .. elem.text .. '}')
  end
  return nil
end
