% map = stoplight(length)
%
%       Returns a custom green-yellow-red colormap by taking only the first
%       third of what would otherwise be MATLAB's standard hsv colormap,
%       and making it slightly darker.
%
% In:
%       length - the length of the colormap.
%
% Out:
%       map - the generated colormap.
% 
%                       Copyright 2017 Laurens R Krol
%                       Team PhyPA, Biological Psychology and Neuroergonomics,
%                       Berlin Institute of Technology

% 2017-03-13 First version

% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
%
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>.

function map = stoplight(length)

if nargin < 1
    length = size(get(gcf,'colormap'),1);
end

h = (0:length-1)' / (length-1) / 3;

if isempty(h)
	map = [];
else
	map = hsv2rgb([h ones(length, 1) repmat(.9, length, 1)]);
end

end
