#
# Cookbook Name:: mogilefs
# Library:: mogilefs
#
# Author:: Jamie Winsor (<jamie@enmasse.com>)
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

begin
  require 'mogilefs'
rescue LoadError
  Chef::Log.warn("Missing gem 'mogilefs'")
end

module EnMasse
  module MogileFS
    module Admin
      def connection
        @@connection ||= ::MogileFS::Admin.new(:hosts => new_resource.trackers)
      end
    end
  end
end
