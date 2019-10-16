# Autogenerated wrapper script for Libcap_Ng_jll for i686-linux-gnu
export libcap_ng

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libcap_ng`
const libcap_ng_splitpath = ["lib", "libcap-ng.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libcap_ng_path = ""

# libcap_ng-specific global declaration
# This will be filled out by __init__()
libcap_ng_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libcap_ng = "libcap-ng.so.0"


"""
Open all libraries
"""
function __init__()
    global prefix = abspath(joinpath(@__DIR__, ".."))

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    global libcap_ng_path = abspath(joinpath(artifact"Libcap_Ng", libcap_ng_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libcap_ng_handle = dlopen(libcap_ng_path)
    push!(LIBPATH_list, dirname(libcap_ng_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

