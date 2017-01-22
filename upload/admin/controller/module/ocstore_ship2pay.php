<?php

class ControllerModuleOcstoreShip2pay extends Controller
{
    private $error = array();

    private function _getExtensionData($type, $extensions)
    {
        $result = array();

        foreach ($extensions as $extension) {
            $this->load->language($type . '/' . $extension);
            $result[$extension] = $this->language->get('heading_title');
        }

        return $result;
    }

    public  function index()
    {
        $this->load->model('setting/setting');
        if ($this->request->server['REQUEST_METHOD'] == 'POST')
            $this->model_setting_setting->editSetting('ocstore', array("ocstore_ship2pay" => json_encode($_POST)));

        $ocstore = $this->model_setting_setting->getSetting('ocstore');
        if ($ocstore === array())
            $data['saved'] = array();
		else
			$data['saved'] = json_decode($ocstore['ocstore_ship2pay'], true);

        $this->load->language('module/ocstore_ship2pay');

        $this->document->setTitle(strip_tags($this->language->get('heading_title')));

        $this->load->model('setting/extension');

        $data['heading_title'] = $this->language->get('heading_title');
        $data['ocstore_header'] = $this->language->get('ocstore_header');
        $data['action'] = $this->url->link('module/ocstore_ship2pay', 'token=' . $this->session->data['token'], 'SSL');
		$data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');
        $data['button_save'] = $this->language->get('button_save');
        $data['button_cancel'] = $this->language->get('button_cancel');

        $data['token'] = $this->session->data['token'];

        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], 'SSL'),
			'separator' => false
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_module'),
            'href' => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
			'separator' => ' :: '
        );

        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->url->link('module/ocstore_ship2pay', 'token=' . $this->session->data['token'], 'SSL'),
			'separator' => ' :: '
        );

        // add scripts and styles
        $this->document->addScript('view/template/ocstore/js/select2.full.min.js');
        $this->document->addStyle('view/template/ocstore/css/select2.min.css');
		
		$this->template = 'ocstore/modules/ship2pay/ship2pay.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);


        $data['shipping'] = $this->_getExtensionData("shipping", $this->model_setting_extension->getInstalled('shipping'));
        $data['payment'] = $this->_getExtensionData("payment", $this->model_setting_extension->getInstalled('payment'));

		$this->data = $data;

        $this->response->setOutput($this->render());
    }
}