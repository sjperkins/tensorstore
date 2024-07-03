# Copyright 2024 The TensorStore Authors
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

load("//third_party:repo.bzl", "third_party_http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")


def repo():
    maybe(
        third_party_http_archive,
        name = "com_github_aws_c_io",
        sha256 = "3a3b7236f70209ac12b5bafa7dd81b75cc68b691a0aa0686d6d3b7e4bbe5fbc9",
        strip_prefix = "aws-c-io-0.14.9",
        urls = [
            "https://github.com/awslabs/aws-c-io/archive/refs/tags/v0.14.9.tar.gz",
        ],
        build_file = Label("//third_party:com_github_aws_c_io/aws_c_io.BUILD.bazel"),
        #system_build_file = Label("//third_party:com_github_aws_c_io/system.BUILD.bazel"),
        cmake_name = "aws_c_io",
        cmake_target_mapping = {
            "@com_github_aws_c_io//:aws_c_io": "aws_c_io::aws_c_io",
        },
        bazel_to_cmake = {},
    )
