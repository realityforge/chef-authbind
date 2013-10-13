#
# Copyright 2011, Peter Donald
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

=begin
#<
Enable or disable authbind for a particular port.

@action add Enable authbind for a port.
@action remove Disable authbind for a port.

@section Examples

Allow the glassfish user to bind to port 80.

    authbind_port "AuthBind GlassFish Port 80" do
        port 80
        user 'glassfish'
    end
#>
=end

actions :add, :remove

attribute :port, :kind_of => Integer, :required => true
attribute :user, :kind_of => String, :required => true
attribute :group, :kind_of => String, :default => nil

default_action :add
