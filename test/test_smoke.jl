module TestSmoke

using Aqua

# test defaults
Aqua.test_all(
    Aqua;
    stale_deps = (; ignore = [:Compat]),  # conditionally loaded
    deps_compat = VERSION <= v"1.3-" ? (; ignore = [:Test]) : true,
)

# test everything else
Aqua.test_all(
    Aqua;
    ambiguities = false,
    unbound_args = false,
    undefined_exports = false,
    project_extras = false,
    stale_deps = false,
    deps_compat = false,
    project_toml_formatting = false,
    piracy = false,
)

end  # module
