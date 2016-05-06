<?php

class ControllerModulepollishop2 extends Controller {
    
    private $error = array(); 
    
    public function index() {   
        //Load the language file for this module
        $language = $this->load->language('module/pollishop2');
        $this->data = array_merge($this->data, $language);

        //Set the title from the language file $_['heading_title'] string
        $this->document->setTitle($this->language->get('heading_title'));
        
        //Load the settings model. You can also add any other models you want to load here.
        $this->load->model('setting/setting');
        
        $this->load->model('tool/image');    
        
        //Save the settings if the user has submitted the admin form (ie if someone has pressed save).
        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
            $this->model_setting_setting->editSetting('pollishop2', $this->request->post);    

                
                    
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

        'pollishop2_status',

        'pollishop2_backgr_color',
		'pollishop2_custom_pattern',
		
		'pollishop2_borderactiv_color',
		'pollishop2_border_color',

        'pollishop2_bigtitle_color',
		'pollishop2_titleitem_color',
		'pollishop2_titleitemdark_color',
        'pollishop2_btext_color',

		'pollishop2_menulink_color',
		'pollishop2_hover_color',
		'pollishop2_menulink2_color',
		'pollishop2_hover2_color',
		'pollishop2_menulink3_color',
		'pollishop2_hover3_color',
		'pollishop2_multicolorbutton1',
		'pollishop2_multicolorbutton2',
		'pollishop2_multicolorbutton3',
		
		'pollishop2_categ_color',
		'pollishop2_hovercateg_color',
		'pollishop2_activline_color',
		
        'pollishop2_alllink_color',
		'pollishop2_footertitle_color',
		'pollishop2_footer_color',
		'pollishop2_footertext_color',
		
		'pollishop2_allactive_color',

        'pollishop2_button1_top_color',
        'pollishop2_button1_bottom_color',
        'pollishop2_button1_text_color',
		
	    'pollishop2_allprice2_color',
	    'pollishop2_oprice2_color', 
		'pollishop2_nprice2_color',
		
		'pollishop2_allprice_color',
	    'pollishop2_oprice_color', 
		'pollishop2_nprice_color',

        'pollishop2_button2_top_color',
        'pollishop2_bn2_bm_color',
        'pollishop2_button2_text_color', 
		
		'pollishop2_wishlist_top_color',
        'pollishop2_wishlist_bottom_color', 
		'pollishop2_compare_top_color',
        'pollishop2_compare_bottom_color',        

        'pollishop2_pattern_overlay',
        'pollishop2_image_preview',
        'pollishop2_pattern_preview',
        
        'pollishop2_title_font',
		'pollishop2_title_bigsize',
		'pollishop2_title_big2size',
		'pollishop2_title_big3size',
        'pollishop2_body_font',
		'pollishop2_title_bodysize',
		'pollishop2_title_pricesize',
		'pollishop2_title_toplinksize',
		'pollishop2_title_categorysize',

        'pollishop2_facebook_id',
        'pollishop2_twitter_username',
        'pollishop2_gplus_id',
		'pollishop2_flick_id',
        'pollishop2_linkedin_id',
        'pollishop2_rss_id',
		'pollishop2_youtube_id',
        'pollishop2_pinterest_id',
		'pollishop2_tweets_lenta',
		'pollishop2_facebook_lenta',
		'pollishop2_vcom_lenta',


		'pollishop2_footer_phone',
		'pollishop2_footer_skype',
		'pollishop2_footer_email',
	    'pollishop2_footer_address',

        'pollishop2_copyright',
		
		'pollishop2_home_enable',
		'pollishop2_account_enable',
		'pollishop2_contact_enable',
		'pollishop2_brand_enable',

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
            'href'      => $this->url->link('module/pollishop2', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => ' :: '
        );
        
        $this->data['action'] = $this->url->link('module/pollishop2', 'token=' . $this->session->data['token'], 'SSL');
        
        $this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

    
        //This code handles the situation where you have multiple instances of this module, for different layouts.
        if (isset($this->request->post['pollishop2_module'])) {
            $modules = explode(',', $this->request->post['pollishop2_module']);
        } elseif ($this->config->get('pollishop2_module') != '') {
            $modules = explode(',', $this->config->get('pollishop2_module'));
        } else {
            $modules = array();
        }           
                
        $this->load->model('design/layout');
        
        $this->data['layouts'] = $this->model_design_layout->getLayouts();
                
        foreach ($modules as $module) {
            if (isset($this->request->post['pollishop2_' . $module . '_layout_id'])) {
                $this->data['pollishop2_' . $module . '_layout_id'] = $this->request->post['pollishop2_' . $module . '_layout_id'];
            } else {
                $this->data['pollishop2_' . $module . '_layout_id'] = $this->config->get('pollishop2_' . $module . '_layout_id');
            }   
            
            if (isset($this->request->post['pollishop2_' . $module . '_position'])) {
                $this->data['pollishop2_' . $module . '_position'] = $this->request->post['pollishop2_' . $module . '_position'];
            } else {
                $this->data['pollishop2_' . $module . '_position'] = $this->config->get('pollishop2_' . $module . '_position');
            }   
            
            if (isset($this->request->post['pollishop2_' . $module . '_status'])) {
                $this->data['pollishop2_' . $module . '_status'] = $this->request->post['pollishop2_' . $module . '_status'];
            } else {
                $this->data['pollishop2_' . $module . '_status'] = $this->config->get('pollishop2_' . $module . '_status');
            }   
                        
            if (isset($this->request->post['pollishop2_' . $module . '_sort_order'])) {
                $this->data['pollishop2_' . $module . '_sort_order'] = $this->request->post['pollishop2_' . $module . '_sort_order'];
            } else {
                $this->data['pollishop2_' . $module . '_sort_order'] = $this->config->get('pollishop2_' . $module . '_sort_order');
            }               
        }
        

        
        $this->data['modules'] = $modules;
        
        if (isset($this->request->post['pollishop2_module'])) {
            $this->data['pollishop2_module'] = $this->request->post['pollishop2_module'];
        } else {
            $this->data['pollishop2_module'] = $this->config->get('pollishop2_module');
        }

        //Choose which template file will be used to display this request.
        $this->template = 'module/pollishop2.tpl';
        $this->children = array(
            'common/header',
            'common/footer',
        );

        if (isset($this->data['pollishop2_custom_pattern']) && $this->data['pollishop2_custom_pattern'] != "" && file_exists(DIR_IMAGE . $this->data['pollishop2_custom_pattern'])) {
            $this->data['pollishop2_pattern_preview'] = $this->model_tool_image->resize($this->data['pollishop2_custom_pattern'], 70, 70);
        } else {
            $this->data['pollishop2_pattern_preview'] = $this->model_tool_image->resize('no_image.jpg', 70, 70);
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
        if (!$this->user->hasPermission('modify', 'module/pollishop2')) {
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