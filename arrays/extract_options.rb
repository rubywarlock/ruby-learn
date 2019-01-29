require "active_support"
require "active_support/core_ext/object"
# .extract_options! is a Rails method
# .present? is a Rails method

def extract_opt(target, *res)
  @scope = { as: "like scope" }
  # options = { as: "like options" }
  options = res.extract_options!

  options[:as] ||= @scope[:as] if @scope[:as].present?

  res.map!(&:to_sym)

  yield(eval(target.to_s))
end

def create_opts(*res)
  extract_opt(:options, *res) do |target|
    print target
  end
end

create_opts :h, :w
