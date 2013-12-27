#
# Cookbook Name:: skype
# Attributes:: default
#
# Copyright 2013, Thomas Boerger
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default["skype"]["version"] = "4.2.0.11"
default["skype"]["package_file"] = value_for_platform_family(
  "debian" => "skype-debian_#{node["skype"]["version"]}-1_i386.deb",
  "ubuntu" => "skype-debian_#{node["skype"]["version"]}-1_i386.deb",
  "suse" => "skype-#{node["skype"]["version"]}-suse.i586.rpm"
)
default["skype"]["package_url"] = "http://download.skype.com/linux/#{node["skype"]["package_file"]}"
