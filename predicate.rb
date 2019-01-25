require "active_support/core_ext/object"
# .present? is a Rails method

def predicate(target)
  @scope = { as: "like scope" }
  options = { as: "like options" }

  options[:as] ||= @scope[:as] if @scope[:as].present?

  yield(eval(target.to_s))
end

predicate(:options) do |target|
  print target
  false
  if target
    true
  end
end


