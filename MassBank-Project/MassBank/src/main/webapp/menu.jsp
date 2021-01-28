<!-- Copyright (C) 2017 MassBank consortium -->

<!-- This file is part of MassBank. -->

<!-- MassBank is free software; you can redistribute it and/or -->
<!-- modify it under the terms of the GNU General Public License -->
<!-- as published by the Free Software Foundation; either version 2 -->
<!-- of the License, or (at your option) any later version. -->

<!-- This program is distributed in the hope that it will be useful, -->
<!-- but WITHOUT ANY WARRANTY; without even the implied warranty of -->
<!-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the -->
<!-- GNU General Public License for more details. -->

<!-- You should have received a copy of the GNU General Public License -->
<!-- along with this program; if not, write to the Free Software -->
<!-- Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA. -->
<!-- TODO:remove class msbkFont and style="display: inline" after full conversion to new layout -->
<div class="w3-bar w3-padding-small w3-border-bottom w3-border-dark-grey msbkFont">
	<a href="Index" class="w3-bar-item w3-mobile w3-round w3-text-blue w3-hover-blue w3-btn" title="${sitename}">${sitename}</a>
	<a href="Search" class="w3-bar-item w3-mobile w3-round w3-text-blue w3-hover-blue w3-btn" title="Search">Search</a>
	<a href="https://github.com/MassBank/MassBank-data/releases/latest" class="w3-bar-item w3-mobile w3-round w3-text-blue w3-hover-blue w3-btn" title="Download">Download</a>
	<a href="RecordIndex" class="w3-bar-item w3-mobile w3-round w3-text-blue w3-hover-blue w3-btn" title="Record Index">Record Index</a>
	<form action="RecordDisplay" style="display: inline">
		<input type="text" name="id" size="8" class="w3-bar-item w3-mobile w3-round w3-input w3-white w3-border" placeholder="MassBank ID"> 
		<input type="submit" class="w3-bar-item w3-mobile w3-round w3-btn w3-input w3-blue w3-border" value="Go">
	</form>
	<div class="w3-dropdown-hover">
		<button class="w3-btn w3-round w3-text-blue w3-hover-blue">More&#9660;</button>
			<div class="w3-dropdown-content w3-bar-block w3-border">
				<a href="https://massbank.github.io/MassBank-documentation/" target="_blank" class="w3-bar-item w3-button">Documentation</a>
				<a href="About" class="w3-bar-item w3-button">About MassBank</a>
				<a href="NewsArchive" class="w3-bar-item w3-button">News Archive</a>
				<a href="#" class="w3-bar-item w3-button">Imprint</a>
			</div>
	</div> 
</div>
