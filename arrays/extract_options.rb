require "active_support"
# extract_options! is a Rails method

def ext_opts(target, *res)
  @scope = { as: "like scope" }
  options = { as: "like options" }
  options = res.extract_options!

  options[:as] ||= @scope[:as] if @scope[:as].present?

  yield(eval(target.to_s))
end

ext_opts(:options, :hello => :world) do |target|
  print target
end

