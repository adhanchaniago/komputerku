<div class="main-container ace-save-state" id="main-container">
	<script type="text/javascript">
		try{ace.settings.loadState('main-container')}catch(e){}
	</script>

	<div id="sidebar" class="sidebar responsive ace-save-state">
		<script type="text/javascript">
			try{ace.settings.loadState('sidebar')}catch(e){}
		</script>

		<div class="sidebar-shortcuts" id="sidebar-shortcuts">
			<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
				<button class="btn btn-success">
					<i class="ace-icon fa fa-signal"></i>
				</button>

				<button class="btn btn-info">
					<i class="ace-icon fa fa-pencil"></i>
				</button>

				<button class="btn btn-warning">
					<i class="ace-icon fa fa-users"></i>
				</button>

				<button class="btn btn-danger">
					<i class="ace-icon fa fa-cogs"></i>
				</button>
			</div>

			<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
				<span class="btn btn-success"></span>

				<span class="btn btn-info"></span>

				<span class="btn btn-warning"></span>

				<span class="btn btn-danger"></span>
			</div>
		</div><!-- /.sidebar-shortcuts -->

		<?php 
      $parent_icon = parent_icon();
      $modul_icon = modul_icon();

      if ($this->session->userdata(sesi('menu'))) {
          $menu=$this->session->userdata(sesi('menu'));
      }else{
          $menu=array();
      }
      $parent_aktif['']='';
      foreach ($menu as $k0 => $v0) {
          foreach ($v0 as $k1 => $v1) {
              $aktif[$v1[1]]='';
              $parent[$v1[1]]=$k0;
              $parent_aktif[$k0]='';
          }
      }
      $aktif[$this->uri->segment(1).'/'.$this->uri->segment(2)]=' class="active"'; 
      if ($this->uri->segment(1) and $this->uri->segment(2)) {
          if (in_array($this->uri->segment(2), $this->config->item("white_list_url"))) {
              $parent_aktif['']=' active ';
          }else{
              $parent_aktif[$parent[$this->uri->segment(1).'/'.$this->uri->segment(2)]]=' active ';
          }
      }else{
          $parent_aktif['']=' active ';
      }
    ?>

		<ul class="nav nav-list">
			<li class="active">
				<a href="<?=base_url(); ?>dashboard">
					<i class="menu-icon fa fa-tachometer"></i>
					<span class="menu-text"> Dashboard </span>
				</a>

				<b class="arrow"></b>
			</li>

			<?php foreach ($menu as $k0 => $v0) { ?>
        <li class="<?=$parent_aktif[$k0] ?>">
          <a href="#">
            <?=$parent_icon[$k0] ?>
            <span><?=$k0 ?></span>
            <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="submenu">
            <?php foreach ($v0 as $k1 => $v1) { ?>
            <li<?=$aktif[$v1[1]] ?>><a href="<?=base_url($v1[1]) ?>"><i class="fa fa-circle-o"></i> <?=$v1[0] ?></a></li>
            <?php } ?>
          </ul>
        </li>            
      <?php } ?>

		</ul><!-- /.nav-list -->

		<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
			<i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
		</div>
	</div>