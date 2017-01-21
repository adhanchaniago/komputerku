<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Dynamic_menu
{
	private $ci;
	private $id_menu        = 'id="menu"';
    private $class_menu        = 'class="menu"';
    private $class_parent    = 'class="parent"';
    private $class_last        = 'class="last"';

    function __construct()
    {
    	$this->ci =& get_instance();
    }

    function build_menu($table = 'dyn_menu')
    {
    	$menu = array();
    	$query = $this->ci->db->get($table);

    	if ($query->num_rows() > 0)
    	{
    		foreach ($query->result() as $row)
    		{
    			$menu[$row->id]['id']            = $row->id;
                $menu[$row->id]['title']        = $row->title;
                $menu[$row->id]['link']            = $row->link_type;
                $menu[$row->id]['page']            = $row->page_id;
                $menu[$row->id]['module']        = $row->module_name;
                $menu[$row->id]['url']            = $row->url;
                $menu[$row->id]['uri']            = $row->uri;
                $menu[$row->id]['dyn_group']    = $row->dyn_group_id;
                $menu[$row->id]['position']        = $row->position;
                $menu[$row->id]['target']        = $row->target;
                $menu[$row->id]['parent']        = $row->parent_id;
                $menu[$row->id]['is_parent']    = $row->is_parent;
                $menu[$row->id]['show']            = $row->show_menu;
    		}
    	}

    	$query->free_result();
    	$html_out  = "\t".'<div '.$this->id_menu.'>'."\n";
    	$html_out .= "\t\t".'<ul '.$this->class_menu.'>'."\n";
    	for ($i = 1; $i <= count($menu); $i++)
    	{
    		if (is_array($menu[$i]))
    		{
    			if ($menu[$i]['show'] && $menu[$i]['parent'] == 0)
    			{
    				if ($menu[$i]['is_parent'] == TRUE)
    				{
    					$html_out .= "\t\t\t".'<li>'.anchor('#', '<span>'.$menu[$i]['title'].'</span>');
    				}
    				else
    				{
    					$html_out .= "\t\t\t\t".'<li>'.anchor($menu[$i]['url'], '<span>'.$menu[$i]['title'].'</span>');
    				}

    				$html_out .= $this->get_childs($menu, $i);
    				$html_out .= '</li>'."\n";
    			}
    		}
    		else
    		{
    			exit (sprintf('menu nr %s must be an array', $i));
    		}
    	}

    	$html_out .= "\t\t".'</ul>' . "\n";
        $html_out .= "\t".'</div>' . "\n";
        return $html_out;
    }

    function get_childs($menu, $parent_id)
    {
    	$has_subcats = FALSE;
        $html_out  = '';
        $html_out .= "\n\t\t\t\t".'<div>'."\n";
        $html_out .= "\t\t\t\t\t".'<ul>'."\n";

        for ($i = 1; $i <= count($menu); $i++)
        {
        	if ($menu[$i]['show'] && $menu[$i]['parent'] == $parent_id)    // are we allowed to see this menu?
            {
                $has_subcats = TRUE;
                if ($menu[$i]['is_parent'] == TRUE)
                {
                    $html_out .= "\t\t\t\t\t\t".'<li>'.anchor('#', '<span>'.$menu[$i]['title'].'</span>');
                }
                else
                {
                    $html_out .= "\t\t\t\t\t\t".'<li>'.anchor($menu[$i]['url'], '<span>'.$menu[$i]['title'].'</span>');
                }
                // Recurse call to get more child submenus.
                $html_out .= $this->get_childs($menu, $i);
                $html_out .= '</li>' . "\n";
            }
        }
        $html_out .= "\t\t\t\t\t".'</ul>' . "\n";
        $html_out .= "\t\t\t\t".'</div>' . "\n";
        return ($has_subcats) ? $html_out : FALSE;
    }
}

// ------------------------------------------------------------------------
// End of Dynamic_menu Library Class.
// ------------------------------------------------------------------------
/* End of file Dynamic_menu.php */
/* Location: ../application/libraries/Dynamic_menu.php */  