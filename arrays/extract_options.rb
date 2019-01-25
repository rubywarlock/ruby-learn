require "active_support"
require "active_support/core_ext/object"
# .extract_options! is a Rails method
# .present? is a Rails method

def extract_options(target, *res)
  @scope = { as: "like scope" }
  options = { as: "like options" }
  options = res.extract_options!

  options[:as] ||= @scope[:as] if @scope[:as].present?

  yield(eval(target.to_s))
end

extract_options(:options, :hello => :world) do |target|
  print target
end

