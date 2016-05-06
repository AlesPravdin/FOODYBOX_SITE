<?php

class ControllerModulepollishop extends Controller {
    
    private $error = array(); 
    
    public function index() {   
        //Load the language file for this module
        $language = $this->load->language('module/pollishop');
        $this->data = array_merge($this->data, $language);

        //Set the title from the language file $_['heading_title'] string
        $this->document->setTitle($this->language->get('heading_title'));
        
        //Load the settings model. You can also add any other models you want to load here.
        $this->load->model('setting/setting');
        
        $this->load->model('tool/image');    
        
        //Save the settings if the user has submitted the admin form (ie if someone has pressed save).
        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
            $this->model_setting_setting->editSetting('pollishop', $this->request->post);    

                
                    
            $this->session->data['success'] = $this->language->get('text_success');
        
                        
            $this->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
        }
        
            $this->data['text_image_manager'] = 'Image manager';
                    $this->data['token'] = $this->session->data['token'];       
        
        $text_strings = array(
                'heading_title',
                'text_enabled',
                'text_disabled',
                'text_content_top',
                'text_content_bottom',
                'text_column_left',
                'text_column_right',
                'entry_status',
                'entry_sort_order',
                'button_save',
                'button_cancel',
				'entry_home_enable',
				'entry_account_enable',
				'entry_contact_enable',
				'entry_brand_enable',
        );
        
        foreach ($text_strings as $text) {
            $this->data[$text] = $this->language->get($text);
        }
        

        // store config data
        
        $config_data = array(

        'pollishop_status',

        'pollishop_backgr_color',
		'pollishop_custom_pattern',
		
		'pollishop_borderactiv_color',

        'pollishop_bigtitle_color',
		'pollishop_titleitem_color',
		'pollishop_titleitemdark_color',
        'pollishop_btext_color',

		'pollishop_menulink_color',
		'pollishop_hover_color',
		'pollishop_menulink2_color',
		'pollishop_hover2_color',
		'pollishop_menulink3_color',
		'pollishop_hover3_color',
		'pollishop_multicolorbutton1',
		'pollishop_multicolorbutton2',
		'pollishop_multicolorbutton3',
		
		'pollishop_categ_color',
		'pollishop_hovercateg_color',
		'pollishop_activline_color',
		
        'pollishop_alllink_color',
		'pollishop_footertitle_color',
		'pollishop_footer_color',
		'pollishop_footertext_color',
		
		'pollishop_allactive_color',

        'pollishop_button1_top_color',
        'pollishop_button1_bottom_color',
        'pollishop_button1_text_color',
		
	    'pollishop_allprice2_color',
	    'pollishop_oprice2_color', 
		'pollishop_nprice2_color',
		
		'pollishop_allprice_color',
	    'pollishop_oprice_color', 
		'pollishop_nprice_color',

        'pollishop_button2_top_color',
        'pollishop_bn2_bm_color',
        'pollishop_button2_text_color', 
		
		'pollishop_wishlist_top_color',
        'pollishop_wishlist_bottom_color', 
		'pollishop_compare_top_color',
        'pollishop_compare_bottom_color',        

        'pollishop_pattern_overlay',
        'pollishop_image_preview',
        'pollishop_pattern_preview',
        
        'pollishop_title_font',
		'pollishop_title_bigsize',
		'pollishop_title_big2size',
		'pollishop_title_big3size',
        'pollishop_body_font',
		'pollishop_title_bodysize',
		'pollishop_title_pricesize',
		'pollishop_title_toplinksize',
		'pollishop_title_categorysize',

        'pollishop_facebook_id',
        'pollishop_twitter_username',
        'pollishop_gplus_id',
		'pollishop_flick_id',
        'pollishop_linkedin_id',
        'pollishop_rss_id',
		'pollishop_youtube_id',
        'pollishop_pinterest_id',
		'pollishop_tweets_lenta',
		'pollishop_facebook_lenta',
		'pollishop_vcom_lenta',


		'pollishop_footer_phone',
		'pollishop_footer_skype',
		'pollishop_footer_email',
	    'pollishop_footer_address',

        'pollishop_copyright',
		
		'pollishop_home_enable',
		'pollishop_account_enable',
		'pollishop_contact_enable',
		'pollishop_brand_enable',

        );
        
        foreach ($config_data as $conf) {
            if (isset($this->request->post[$conf])) {
                $this->data[$conf] = $this->request->post[$conf];
            } else {
                $this->data[$conf] = $this->config->get($conf);
            }
        }
    
        //This creates an error message. The error['warning'] variable is set by the call to function validate() in this controller (below)
        if (isset($this->error['warning'])) {
            $this->data['error_warning'] = $this->error['warning'];
        } else {
            $this->data['error_warning'] = '';
        }
        
        //SET UP BREADCRUMB TRAIL. YOU WILL NOT NEED TO MODIFY THIS UNLESS YOU CHANGE YOUR MODULE NAME.
        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'text'      => $this->language->get('text_home'),
            'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => false
        );

        $this->data['breadcrumbs'][] = array(
            'text'      => $this->language->get('text_module'),
            'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => ' :: '
        );
        
        $this->data['breadcrumbs'][] = array(
            'text'      => $this->language->get('heading_title'),
            'href'      => $this->url->link('module/pollishop', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => ' :: '
        );
        
        $this->data['action'] = $this->url->link('module/pollishop', 'token=' . $this->session->data['token'], 'SSL');
        
        $this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

    
        //This code handles the situation where you have multiple instances of this module, for different layouts.
        if (isset($this->request->post['pollishop_module'])) {
            $modules = explode(',', $this->request->post['pollishop_module']);
        } elseif ($this->config->get('pollishop_module') != '') {
            $modules = explode(',', $this->config->get('pollishop_module'));
        } else {
            $modules = array();
        }           
                
        $this->load->model('design/layout');
        
        $this->data['layouts'] = $this->model_design_layout->getLayouts();
                
        foreach ($modules as $module) {
            if (isset($this->request->post['pollishop_' . $module . '_layout_id'])) {
                $this->data['pollishop_' . $module . '_layout_id'] = $this->request->post['pollishop_' . $module . '_layout_id'];
            } else {
                $this->data['pollishop_' . $module . '_layout_id'] = $this->config->get('pollishop_' . $module . '_layout_id');
            }   
            
            if (isset($this->request->post['pollishop_' . $module . '_position'])) {
                $this->data['pollishop_' . $module . '_position'] = $this->request->post['pollishop_' . $module . '_position'];
            } else {
                $this->data['pollishop_' . $module . '_position'] = $this->config->get('pollishop_' . $module . '_position');
            }   
            
            if (isset($this->request->post['pollishop_' . $module . '_status'])) {
                $this->data['pollishop_' . $module . '_status'] = $this->request->post['pollishop_' . $module . '_status'];
            } else {
                $this->data['pollishop_' . $module . '_status'] = $this->config->get('pollishop_' . $module . '_status');
            }   
                        
            if (isset($this->request->post['pollishop_' . $module . '_sort_order'])) {
                $this->data['pollishop_' . $module . '_sort_order'] = $this->request->post['pollishop_' . $module . '_sort_order'];
            } else {
                $this->data['pollishop_' . $module . '_sort_order'] = $this->config->get('pollishop_' . $module . '_sort_order');
            }               
        }
        

        
        $this->data['modules'] = $modules;
        
        if (isset($this->request->post['pollishop_module'])) {
            $this->data['pollishop_module'] = $this->request->post['pollishop_module'];
        } else {
            $this->data['pollishop_module'] = $this->config->get('pollishop_module');
        }

        //Choose which template file will be used to display this request.
        $this->template = 'module/pollishop.tpl';
        $this->children = array(
            'common/header',
            'common/footer',
        );

        if (isset($this->data['pollishop_custom_pattern']) && $this->data['pollishop_custom_pattern'] != "" && file_exists(DIR_IMAGE . $this->data['pollishop_custom_pattern'])) {
            $this->data['pollishop_pattern_preview'] = $this->model_tool_image->resize($this->data['pollishop_custom_pattern'], 70, 70);
        } else {
            $this->data['pollishop_pattern_preview'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
        }
        
        

        $this->data['no_image'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);

        //Send the output.
        $this->response->setOutput($this->render());
    }
    
    /*
     * 
     * This function is called to ensure that the settings chosen by the admin user are allowed/valid.
     * You can add checks in here of your own.
     * 
     */
    
    private function validate() {
        if (!$this->user->hasPermission('modify', 'module/pollishop')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }
        
        if (!$this->error) {
            return TRUE;
        } else {
            return FALSE;
        }   
    }


}
?>