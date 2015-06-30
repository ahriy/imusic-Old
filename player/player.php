<?php 				
	$_SESSION['player']='<div class="modal fade" id="%s" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title" id="myModalLabel">正在为您播放 %s</h4>
			      </div>
			      <div class="modal-body">
			<P align=center> <TABLE borderColor=#bc8f8f cellSpacing=1 width=315 border=1> <TBODY> <TR> <TD><EMBED style="FILTER: invert(); WIDTH: 500px; HEIGHT: 120px" src="http://countingstar-liuzhe.stor.sinaapp.com/music/%s.mp3"
			type=audio/mpeg autostart="true"></EMBED></TD></TR></TBODY></TABLE> <P align=center></P></P>
			      </div>
			    </div>
			  </div>
			</div>';
 ?>