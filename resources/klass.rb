#
# Cookbook Name:: mogilefs
# Resource:: klass
#
# Author:: Jamie Winsor (<jamie@vialstudios.com>)
#
# Copyright 2011, En Masse Entertainment, Inc.
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

actions :create, :delete, :update

attribute :klass, :kind_of => String, :name_attribute => true
attribute :domain, :kind_of => String, :required => true
attribute :mindevcount, :kind_of => Integer, :default => 2
attribute :trackers, :kind_of => Array, :required => true
attribute :exists, :default => false

def initialize(*args)
  super
  @action = :create
end
