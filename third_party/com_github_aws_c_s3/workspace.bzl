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
        name = "com_github_aws_c_s3",
        sha256 = "28c03a19e52790cfa66e8d63c610734112edb36cc3c525712f18da4f0990a7b8",
        strip_prefix = "aws-c-s3-0.5.10",
        urls = [
            "https://github.com/awslabs/aws-c-s3/archive/refs/tags/v0.5.10.tar.gz",
        ],
        build_file = Label("//third_party:com_github_aws_c_s3/aws_c_s3.BUILD.bazel"),
        system_build_file = Label("//third_party:com_github_aws_c_s3/system.BUILD.bazel"),
        cmake_name = "aws_c_s3",
        cmake_target_mapping = {
            "@com_github_aws_c_s3//:aws_c_s3": "aws_c_s3::aws_c_s3",
        },
        bazel_to_cmake = {},
    )