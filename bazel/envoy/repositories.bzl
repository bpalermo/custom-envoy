load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

ENVOY_VERSION = "1.29.1"

ENVOY_SHA256 = "0aad4524fcd8bf8a936f2b798178926cf2d9da7db3aec187849492a2f41ea657"

def envoy_repositories():
    http_archive(
        name = "envoy",
        sha256 = ENVOY_SHA256,
        strip_prefix = "envoy-{}".format(ENVOY_VERSION),
        urls = [
            "https://github.com/envoyproxy/envoy/archive/refs/tags/v{}.tar.gz".format(ENVOY_VERSION),
        ],
    )
