
			Copyright 2012 Terry Walters

   ------------------------------------------------------------------------
   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.

   ------------------------------------------------------------------------

	Theses scripts:
		* downloads haproxy as per http://haproxy.1wt.eu/ instructions
		* replaces the 127.0.0.1 with the eth0 ip addy


	1) Create a master node:
		launch_haproxy.sh -i ami-00000021 -g nimbus -k apifoundry-dev-ewr1 -t m1.small
	2) Get master node ip address: 
		euca-describe-instances i-00000bbc | grep INSTANCE | awk {'print $4'}
		10.0.44.55


	haproxy_instance.txt contains the instance id and description for the node.

	
