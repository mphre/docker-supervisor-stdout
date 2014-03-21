# supervisor-stdout
# Copyright (C) 2014  phre@gmx.com
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

FROM zumbrunnen/base
MAINTAINER phre phre@gmx.com

RUN apt-get -y install python-pip
RUN pip install supervisor-stdout
ADD sv_stdout.conf /etc/supervisor/conf.d/
