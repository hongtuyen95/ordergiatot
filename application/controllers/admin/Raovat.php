<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Raovat extends MY_Controller
{
    //protected $module_name="Raovat";
    public function __construct() {
        parent::__construct();
        $this->load->model('raovat_model');
        $this->load->library('pagination');
        if(!$this->check->is_logined($this->session->userdata('sessionUserAdmin'), $this->session->userdata('sessionGroupAdmin')))
        {
            redirect(base_url().'vnadmin', 'location');
            die();
        }
    }
	protected $pagination_config= array(
        'full_tag_open'=>"<ul class='pagination pagination-sm'>",
        'full_tag_close'=>"</ul>",
        'num_tag_open'=>'<li>',
        'num_tag_close'=>'</li>',
        'cur_tag_open'=>"<li class='disabled'><li class='active'><a href='#'>",
        'cur_tag_close'=>"<span class='sr-only'></span></a></li>",
        'next_tag_open'=>"<li>",
        'next_tagl_close'=>"</li>",
        'prev_tag_open'=>"<li>",
        'prev_tagl_close'=>"</li>",
        'first_tag_open'=>"<li>",
        'first_tagl_close'=>"</li>",
        'last_tag_open'=>"<li>",
        'last_tagl_close'=>"</li>",
    );
    public function listraovat(){
		$this->check_acl();
		if($this->input->get()){
            $where = array(
                'code' => $this->input->get('code')?$this->input->get('code'):'',
                'name' => $this->input->get('name'),
                'cate' => $this->input->get('cate'),
                'view' => $this->input->get('view'),
                'lang' => $this->input->get('lang'),
            );
            $config['page_query_string']    = TRUE;
            $config['enable_query_strings'] = TRUE;
            $config['base_url']             = base_url('vnadmin/raovat/listraovat?code='
                . $this->input->get('code')
                . '&name=' . $this->input->get('name')
                . '&cate=' . $this->input->get('cate')
                . '&view=' . $this->input->get('view')
                . '&lang=' . $this->input->get('lang')
            );
            $config['total_rows']           = $this->raovat_model->count_listraovat($where);
            $config['per_page']             = 20;
            $config['uri_segment'] = 4;
            $config=array_merge($config,$this->pagination_config);
            $this->pagination->initialize($config);
            $data['list'] = $this->raovat_model->getListraovat($where, $config['per_page'], $this->input->get('per_page'));

		}else{
            $where = array(
                'lang' => $this->language
            );
            $config['base_url'] = base_url('vnadmin/raovat/listraovat');
            $config['total_rows'] = $this->raovat_model->count_listraovat($where); // xác định tổng số record
            $config['per_page'] =20; // xác định số record ở mỗi trang
            $config['uri_segment'] = 4; // xác định segment chứa page number
            $config=array_merge($config,$this->pagination_config);
            $this->pagination->initialize($config);
            $data['list'] = $this->raovat_model->getListraovat($where, $config['per_page'],
                $this->uri->segment(4));
        }

		foreach ($data['list'] as $key => $cat) {

			$data['list'][$key]->cat_name = $this->raovat_model->getField('raovat_category',
				array('name'),array('id' => $cat->category_id,));
			$data['list'][$key]->full_name = $this->raovat_model->getField('users',
				array('fullname'),array('id' => $cat->user_id,));

		}
		$data['raovat_all'] = $this->raovat_model->get_data('raovat',array('lang' => $this->language),array('id' => 'desc'));
		$auto_code = '';
		$auto_name = '';
        foreach ($data['raovat_all'] as $nameget) {
            $subname = $nameget->name;
            $subcode = $nameget->code;
            if ($auto_code == null) {
                $auto_code = $subcode;
            } else {
                $auto_code = $auto_code . "," . $subcode;
            }
			if ($auto_name == null) {
                $auto_name = $subname;
            } else {
                $auto_name = $auto_name . "," . $subname;
            }
        }

        $data['auto_code'] = $auto_code;
        $data['auto_name'] = $auto_name;
		$data['cate'] = $this->raovat_model->get_data('raovat_category',array('lang' => $this->language),array('id' => 'desc'));
        $data['show_home'] = $this->raovat_model->getFirstRowWhere('config_checkpro',array('type' => 'raovat','field' => 'home',));
        $data['show_hot'] = $this->raovat_model->getFirstRowWhere('config_checkpro',array('type' => 'raovat','field' => 'hot',));
        $data['show_focus'] = $this->raovat_model->getFirstRowWhere('config_checkpro',array('type' => 'raovat','field' => 'focus',));
        $data['headerTitle'] = "Tin rao";
        $this->LoadHeaderAdmin($data);
        $this->load->view('admin/raovat/list', $data);
        $this->load->view('admin/footer');
    }
	#achor add
    public function add($id_edit=null)
    {
		$this->check_acl();
		$data['admin'] = $this->session->userdata('adminid');
        $this->load->helper('thumbnail_helper');
        $data['btn_name']='Thêm';
        $data['btn_demo'] = "Upload file demo";
        $data['max_sort']=$max_sort=$this->raovat_model->SelectMax('raovat','sort')+1;
        if($id_edit!=null){
			$data['edit']=$this->raovat_model->getFirstRowWhere('raovat',array('id'=>$id_edit));

			$data['cate_selected'] = $this->raovat_model->getField_array('raovat_to_category','id_category',
                array('id_raovat'=>$id_edit));
			// danh sách ảnh hụ
			$data['listimg'] = $this->raovat_model->get_data('raovat_images',array('id_item'=>$id_edit));
            $data['btn_name']='Cập nhật';
			$data['max_sort']=$max_sort=$data['edit']->sort;
        }
		if (isset($_POST['addnews'])) {
            $id_start  = (int)$this->input->post('downloaded');
            $arrTags = explode(",",$this->input->post('tags'));
            $price       = str_replace(array(';','.',',',' '),'',$this->input->post('price'));
            $price_sale      = str_replace(array(';','.',',',' '),'',$this->input->post('price_sale'));
            $alias = make_alias($this->input->post('alias'));
			$arr = array(
                'name'            => $this->input->post('name'),
                'alias'			  => make_alias($this->input->post('alias')),
                'description'     => $this->input->post('description'),
                'code'            => $this->input->post('code'),
                'detail'          => $this->input->post('detail'),
                'price'           => $price,
                'price_sale'      => $price_sale,
                'status'       => $this->input->post('status'),
                'home'            => $this->input->post('home'),
                'hot'             => $this->input->post('hot'),
                'focus'           => $this->input->post('focus'),
                'active'          => $this->input->post('active'),
                'description_seo' => $this->input->post('description_seo'),
                'title_seo'       => $this->input->post('title_seo'),
                'keyword_seo'     => $this->input->post('keyword_seo'),
                'caption_3'     => $this->input->post('caption_3'),
                'brand'            => $this->input->post('brand'),
                'style'           => $this->input->post('style'),
                'caption_2'       => $this->input->post('caption_2'),
                'locale'          => $this->input->post('locale'),
                'view'            => $this->input->post('view'),
                'sort'            => $max_sort,
                'lang'            => $this->language,
                'tags'          => $this->input->post('tags'),
                'time'			=>time(),
                'user_id'			=>$data['admin']->id,
            );
			if (!empty($_POST['edit'])){
				$id = $this->raovat_model->Update_where('raovat', array('id'=>$id_edit), $arr);
				$this->session->set_flashdata("mess", "Cập nhật thành công!");
			} else {
				$id = $this->raovat_model->Add('raovat', $arr);
				$this->session->set_flashdata("mess", "Thêm mới thành công!");
			}
			if ($id_edit != null) {
					$id = $id_edit;
				} else $id = $id;
            $checkAlias = $this->raovat_model->getFirstRowWhere('alias',array(
                'services' => $id
            ));
            if(empty($checkAlias)){
                $this->raovat_model->Add('alias',array(
                    'services' => $id,
                    'type' => 'services',
                    'alias' => $alias
                ));
            }else{
                $this->raovat_model->Update_where('alias',array('services' => $id),array(
                    'alias' => $alias
                ));
            }
			/*
             * tags
             */
            $this->raovat_model->Delete_where('raovat_tag',array(
                'raovat_id' => $id
            ));
            foreach($arrTags as $tag)
            {
                $tag = trim($tag);
                if($tag !=='')
                {
                    $this->raovat_model->Add('raovat_tag',array(
                        'raovat_id' => $id_edit,
                        'tag' => $tag,
                        'lang'  => $this->language,
                        'alias' => make_alias($tag)
                    ));
                }
            }

            if (isset($_POST['category']) && sizeof($_POST['category']) > 0) {
                $post_cat = $_POST['category'];
                $this->raovat_model->Delete_where('raovat_to_category', array('id_raovat' => $id));
                for ($i = 0; $i < sizeof($post_cat); $i++) {
                    $ca = array('id_raovat' => $id, 'id_category' => $post_cat[$i]);
                    $this->raovat_model->Add('raovat_to_category', $ca);
                }

               $a= $this->raovat_model->Update_where('raovat', array('id'=>$id), array('category_id' => end($post_cat)));

			}
			// cap nhat màu sắc
			if (isset($_POST['color']) && sizeof($_POST['color']) > 0) {
                $post_color = $_POST['color'];

				$this->raovat_model->Delete_where('raovat_to_color', array('id_raovat' => $id_edit));
                for ($i = 0; $i < sizeof($post_color); $i++) {
                    $color = array('id_raovat' => $id_edit, 'id_color' => $post_color[$i]);
                    $this->raovat_model->Add('raovat_to_color', $color);
                }
                $this->raovat_model->Update_where('raovat', array('id'=>$id_edit), array('color' => end($post_color)));
            }

            //upload images ảnh đại diện
            $this->load->library('upload');
            $pathImage = "upload/img/raovats/";
            $dir_image = date('dmY');
            if(!is_dir($pathImage.$dir_image))
            {
                @mkdir($pathImage.$dir_image);
                $this->load->helper('file');
                @write_file($pathImage.$dir_image.'/index.html', '<p>Directory access is forbidden.</p>');
            }
            $config['upload_path'] = $pathImage.$dir_image.'/';
            $config['allowed_types'] = 'gif|jpg|png|JPG|PNG|GIF';
            $config['max_size'] = '*';
            $config['max_width'] = '5000';
            $config['max_height'] = '5000';
            $config['encrypt_name'] = true;
            $this->upload->initialize($config);
            $image = '';
            if($this->upload->do_upload('userfile'))
            {
                $uploadData = $this->upload->data();
                if($uploadData['is_image'] == TRUE)
                {
                    $image = $uploadData['file_name'];
                }
                elseif(file_exists($pathImage.$dir_image.'/'.$uploadData['file_name']))
                {
                    @unlink($pathImage.$dir_image.'/'.$uploadData['file_name']);
                }
                unset($uploadData);
				// xoa anh dai dien cũ và anh thumb cu
				$item=$this->raovat_model->getFirstRowWhere('raovat',array('id'=>$id));
				$dir_image_old = $item->raovat_dir;

				// xoa anh san pham
				if(file_exists($pathImage.$dir_image_old.'/'.$item->image))
				{
					@unlink($pathImage.$dir_image_old.'/'.$item->image);
				}
				// xoa anh thumb
				for($j = 1; $j <= 3; $j++)
				{
					if(file_exists($pathImage.$dir_image_old.'/thumbnail_'.$j.'_'.$item->image))
					{
						@unlink($pathImage.$dir_image_old.'/thumbnail_'.$j.'_'.$item->image);
					}
				}

            }

            if($image !='')
            {
                #BEGIN: Create thumbnail tạo anh thumb chen chữ
                $wm_font_size = 28;
                if(file_exists($pathImage.$dir_image.'/'.$image))
                {
                    $this->load->helper('email_helper');
                    $link =  $pathImage.$dir_image.'/'.$image;
                    $mt = add_water_mark($link,$this->option->WM_text,$this->option->WM_color, $this->option->WM_size);

                    if(!$mt){
                        show_404('lỗi upload ảnh');
                    }
                    for($j = 1; $j <= 3; $j++)
                    {
                        switch($j)
                        {
                            case 1:
                                $maxWidth = 300;#px
                                $maxHeight = 300;#px
                                $wm_font_size = 28;
                                break;
                            case 3:
                                $maxWidth = 63;#px
                                $maxHeight = 63;#px
                                $wm_font_size = 9;
                                break;
                            default:
                                $maxWidth = 600;#px
                                $maxHeight = 600;#px
                        }
                        $sizeImage = size_thumbnail($pathImage.$dir_image.'/'.$image, $maxWidth, $maxHeight);
                        $configImage['source_image'] = $pathImage.$dir_image.'/'.$image;
                        $configImage['new_image'] = $pathImage.$dir_image.'/thumbnail_'.$j.'_'.$image;
                        $configImage['maintain_ratio'] = TRUE;
                        $configImage['width'] = $sizeImage['width'];
                        $configImage['height'] = $sizeImage['height'];
                        $this->image_lib->initialize($configImage);
                        $this->image_lib->resize();
                        $this->image_lib->clear();
                    }
                }
				// cap nhat anh moi
				$this->raovat_model->Update_where('raovat', array('id'=>$id), array(
					'image' => @$image,
					'raovat_dir' => $dir_image,
				));
            }
            if(@$image == 'none.gif')
            {
                #Remove dir
                $this->load->library('file');
                if(trim($dir_image) != '' && trim($dir_image) != 'default' && is_dir('upload/img/raovat/'.$dir_image) && count($this->file->load('upload/img/raovat/'.$dir_image,'index.html')) == 0)
                {
                    if(file_exists('upload/img/raovats/'.$dir_image.'/index.html'))
                    {
                        @unlink('upload/img/raovats/'.$dir_image.'/index.html');
                    }
                    @rmdir('upload/img/raovats/'.$dir_image);
                }
                $dir_image = 'default';
            }

            //upload multi images
            $config2['upload_path'] = './upload/img/raovats_multi/';
            $config2['allowed_types'] = 'gif|jpg|png|jpeg|JPEG|JPG|PNG|GIF';
            $config2['max_size'] = '*';
            $config2['max_width'] = '2000';
            $config2['max_height'] = '1400';
            $config2['encrypt_name'] = true;
            $this->upload->initialize($config2);
            if(!empty($_FILES['images'])){
                $name_array = array();
                $count = count(@$_FILES['images']['size']);
                foreach ($_FILES as $key => $value) {
                    for ($s = 0; $s <= $count - 1; $s++) {
                        $_FILES['images']['name'] = $value['name'][$s];
                        $_FILES['images']['type'] = $value['type'][$s];
                        $_FILES['images']['tmp_name'] = $value['tmp_name'][$s];
                        $_FILES['images']['error'] = $value['error'][$s];
                        $_FILES['images']['size'] = $value['size'][$s];

                        if($this->upload->do_upload('images')){
                            $fileData = $this->upload->data();
                            $uploadData[$i]['file_name'] = $fileData['file_name'];
                            $link = 'upload/img/raovats_multi/' . $fileData['file_name'];
                            $id_i = $this->raovat_model->Add('raovat_images',array(
                                'image' => $link,
                                'id_item' => $id,
                            ));
                            //watermark
                            $this->load->helper('email_helper');
                            $mt = add_water_mark($link,$this->option->WM_text,$this->option->WM_color, $this->option->WM_size);
                        }

                    }
                }
            }
            redirect(base_url('vnadmin/raovat/listraovat'));
        }
        $data['cate'] = $this->raovat_model->get_data('raovat_category',array(
            'lang' => $this->language
        ),array('sort'=>''));
		// thương hiệu
        $data['cat_brand'] = $this->raovat_model->get_data('product_brand',array(
            'lang' => $this->language
        ),null);
		// trường xuất sứ
		$data['cat_locales'] = $this->raovat_model->get_data('product_locale',array(
            'lang' => $this->language
        ),null);
        $data['show_home'] = $this->raovat_model->getFirstRowWhere('config_checkpro',array('type' => 'raovat','field' => 'home',));
        $data['show_hot'] = $this->raovat_model->getFirstRowWhere('config_checkpro',array('type' => 'raovat','field' => 'hot',));
        $data['show_focus'] = $this->raovat_model->getFirstRowWhere('config_checkpro',array('type' => 'raovat','field' => 'focus',));
        $data['headerTitle'] = $data['btn_name']." Tin rao";
        $this->LoadHeaderAdmin($data);
        $this->load->view('admin/raovat/add', $data);
        $this->load->view('admin/footer');
    }
    #achor edit
	 public function edit($id){
	   $this->add($id);
	}
	//Xóa nhieu ban ghi
    public function deletes()
    {
        if($this->input->post('checkone') && is_array($this->input->post('checkone')) && count($this->input->post('checkone')) > 0)
        {
            $ids = $this->input->post('checkone');
            foreach($ids as $id)
            {
                $this->delete_raovat_once($id);
            }
        }
		$this->session->set_flashdata("mess", "Xóa thành công!");
        redirect($_SERVER['HTTP_REFERER']);
    }
    public function delete_raovat_once($id){
        if (is_numeric($id)) {
            $item=$this->raovat_model->getFirstRowWhere('raovat',array('id'=>$id));
            $pathImage = "upload/img/raovats/";
            $dir_image = $item->raovat_dir;
			// xoa anh san pham
            if(file_exists($pathImage.$dir_image.'/'.$item->image))
            {
                @unlink($pathImage.$dir_image.'/'.$item->image);
            }
			// xoa anh thumb
            for($j = 1; $j <= 3; $j++)
            {
                if(file_exists($pathImage_thumb.$dir_image.'/thumbnail_'.$j.'_'.$item->image))
                {
                    @unlink($pathImage_thumb.$dir_image.'/thumbnail_'.$j.'_'.$item->image);
                }
            }
			$this->raovat_model->Delete_where('raovat',array('id' => $id));
            $item_alias =$this->raovat_model->getFirstRowWhere('alias',array('pro'=>$id));
            if(!empty($item_alias)){
                $this->raovat_model->Delete_where('alias',array('pro' => $id));
            }
            $this->raovat_model->Delete_where('raovat_to_category',array('id_raovat'=>$id));
            $this->raovat_model->Delete_where('pro_values',array('pro_id'=>$id));
            //delete more image
            $m_images = $this->raovat_model->getFields('p_images','id,image',array(
                'id_item' => $id
            ));
            foreach($m_images as $image){
                @unlink($image->image);
                $this->raovat_model->Delete_where('p_images', array('pro_id'=>$image->id));
            }
        } else return false;
    }
	// xoa 1 ban ghi
	public function delete($id)
    {
		$this->delete_raovat_once($id);
		$this->session->set_flashdata("mess", "Xóa thành công!");
        redirect($_SERVER['HTTP_REFERER']);
    }
	//Them anh cho tin rao===========================
    public function images($id)
    {
        $config['upload_path'] = './upload/img/raovats_multi/';
        $config['allowed_types'] = 'gif|jpg|png|jpeg|JPEG|JPG|PNG|GIF';
        $config['max_size'] = '*';
        $config['max_width'] = '2000';
        $config['max_height'] = '1400';
        $this->load->library('upload', $config);
        $pro = $this->raovat_model->getFirstRowWhere('raovat', array('id' => $id));
        $data['raovat_name'] = $pro->name;

        if (isset($_POST['Upload']))
        {
            $db_data = array(
                'link' => '',
                'name' => $this->input->post('title'),
                'id_item' => $id
            );
            if (isset($_POST['edit'])&&$_POST['edit']!=null)
            {
                $this->raovat_model->Update_where('p_images', array('id' => $_POST['edit']), array('name' => $this->input->post('title'),));
                $id_img = $_POST['edit'];
            }
            else{
                $id_img = $this->raovat_model->Add('p_images', $db_data);
            }
            if (!$this->upload->do_upload('userfile')) {
                $data['error'] = 'Ảnh không thỏa mãn';
            } else {
                $upload = array('upload_data' => $this->upload->data());
                $image = 'upload/img/raovats_multi/' . $upload['upload_data']['file_name'];
                $this->load->helper('email_helper');
                $mt = add_water_mark($image,$this->option->WM_text,$this->option->WM_color, $this->option->WM_size);
                $abd = $this->raovat_model->Update_where('p_images', array('id' => $id_img), array('image' => $image));
            }
			$this->session->set_flashdata("mess", "Thêm ảnh thành công!");
            redirect($_SERVER['HTTP_REFERER']);
        }

        $data['pro_image'] = $this->raovat_model->getProImage($id);
        $data['id'] = $id;

        $data['headerTitle'] = "Tải thêm ảnh cho tour";
        $this->load->view('admin/header', $data);
        $this->load->view('admin/raovats/view_raovat/view_images', $data);
        $this->load->view('admin/footer');
    }
// xoa anh multi san pham
	public function delete_images($id){
        $img = $this->raovat_model->getFirstRowWhere('p_images',array(
            'id' => $id
        ));
        if(file_exists($img->image)){
            unlink(($img->image));
        }
		$this->raovat_model->Delete_where('p_images',array('id' => $id));
        $this->session->set_flashdata("mess", "Xóa thành công!");
		redirect($_SERVER['HTTP_REFERER']);
    }
//******* danh muc ********************************************************
    public function categories()
    {
		$this->check_acl();
        $data['cate'] = $this->raovat_model->get_data('raovat_category',array(
            'lang' => $this->language
        ),array('sort'=>'desc'));
         $data['show_home'] = $this->raovat_model->getFirstRowWhere('config_checkpro',array('type' => 'raovat_category','field' => 'home',));
        $data['show_hot'] = $this->raovat_model->getFirstRowWhere('config_checkpro',array('type' => 'raovat_category','field' => 'hot',));
        $data['show_focus'] = $this->raovat_model->getFirstRowWhere('config_checkpro',array('type' => 'raovat_category','field' => 'focus',));
        $data['headerTitle'] = 'Danh mục rao vặt';
        $this->LoadHeaderAdmin($data);
        $this->load->view('admin/raovat/list_cat', $data);
        $this->load->view('admin/footer');
    }
    public function cat_add($id_edit=null)
    {
		$this->check_acl();
        $config['upload_path'] = './upload/img/category/';
        $config['allowed_types'] = 'gif|jpg|jpeg|png|GIF|JPG|JPEG|PNG';
        $config['max_size']      = '1000';
		$config['max_width']     = '1200';
		$config['max_height']    = '1000';
        $this->load->library('upload', $config);
        $data['btn_name']='Thêm';
        $data['max_sort']=$max_sort=$this->raovat_model->SelectMax('raovat_category','sort')+1;
		if($id_edit!=null){
			$data['edit']=$this->raovat_model->get_data('raovat_category',array('id'=>$id_edit),array(),true);
			$data['max_sort']=$max_sort=$data['edit']->sort;
			$data['btn_name']='Cập nhật';
		}
        if (isset($_POST['addnews'])) {
			$alias = make_alias($this->input->post('alias'));
            $arr = array(
                'name' => $this->input->post('name'),
                'description' => $this->input->post('description'),
                'parent_id' => $this->input->post('parent'),
                'alias' => $alias,
                'home' => $this->input->post('home'),
                'hot' => $this->input->post('hot'),
                'focus' => $this->input->post('focus'),
                'sort' => $max_sort,
                'title_seo' => $this->input->post('title_seo'),
                'keyword_seo' => $this->input->post('keyword'),
                'description_seo' => $this->input->post('description_seo'),
                'lang'            => $this->language,
            );
			if (!empty($_POST['edit'])){
				$id = $this->raovat_model->Update_where('raovat_category', array('id'=>$id_edit), $arr);
				$this->session->set_flashdata("mess", "Cập nhật thành công!");
			} else {
				$id = $this->raovat_model->Add('raovat_category', $arr);
				$this->session->set_flashdata("mess", "Thêm mới thành công!");
			}
			if ($id_edit != null) {
				$id = $id_edit;
			} else $id = $id;
			// check alias
			$checkAlias = $this->raovat_model->getFirstRowWhere('alias',array(
				'services_cat'=> $id
			));
			if(empty($checkAlias)){
				$this->raovat_model->Add('alias', array(
					'alias' => $alias,
					'services_cat' => $id,
					'type'  => 'cate-ser'
				));
			}else{
				$this->raovat_model->Update_where('alias',array('services_cat'=>$id),array(
					'alias' => $alias
				));
			}

            if ($_FILES['userfile']['name'] != '') {
                if (!$this->upload->do_upload()) {
                    $data['error'] = 'Ảnh không thỏa mãn';
                } else {
                    $upload = array('upload_data' => $this->upload->data());
                    $image = 'upload/img/category/' . $upload['upload_data']['file_name'];
                    $this->raovat_model->Update_where('raovat_category',array('id'=>$id),array('image'=>$image));
                }
            }
            if ($_FILES['banner']['name'] != '') {
                if (!$this->upload->do_upload('banner')) {
                    $data['error'] = 'Ảnh không thỏa mãn';
                } else {
                    $upload = array('upload_data' => $this->upload->data());
                    $image = 'upload/img/category/' . $upload['upload_data']['file_name'];

                    $this->raovat_model->Update_where('raovat_category',array('id'=>$id),array('banner'=>$image));
                }
            }
            redirect(base_url('vnadmin/raovat/categories'));
        }
        $data['cate'] = $this->raovat_model->get_data('raovat_category',array(
            'lang' => $this->language
        ),array('sort'=>'asc'));
         $data['show_home'] = $this->raovat_model->getFirstRowWhere('config_checkpro',array('type' => 'raovat_category','field' => 'home',));
        $data['show_hot'] = $this->raovat_model->getFirstRowWhere('config_checkpro',array('type' => 'raovat_category','field' => 'hot',));
        $data['show_focus'] = $this->raovat_model->getFirstRowWhere('config_checkpro',array('type' => 'raovat_category','field' => 'focus',));
        $data['headerTitle'] = $data['btn_name']." danh mục tin rao";
		$this->LoadHeaderAdmin($data);
        $this->load->view('admin/raovat/cat_add', $data);
        $this->load->view('admin/footer');
    }
    public function cat_edit($id){
		$this->cat_add($id);
    }
	public function deletes_category(){
        $ids = $this->input->post('checkone');
        foreach($ids as $id)
        {
            $this->del_cattinrao_once($id);
        }
		$this->session->set_flashdata("mess", "Xóa thành công!");
        redirect($_SERVER['HTTP_REFERER']);
    }
    public function del_cattinrao_once($id){
		$this->check_acl();
		$cat_parent =$this->raovat_model->getFirstRowWhere('raovat_category',array('parent_id'=>$id));
		if(empty($cat_parent)){
			// xoa ban ghi trong raovat_category
			$item = $this->raovat_model->getFirstRowWhere('raovat_category',array(
				'id' => $id
			));
			// xoa anh trong thu muc
			if(file_exists($item->image)){ @unlink($item->image);}
			$this->raovat_model->Delete_where('raovat_category',array('id' => $id));
			$item_alias =$this->raovat_model->getFirstRowWhere('alias',array('services_cat'=>$id));
			if(!empty($item_alias)){
				$this->raovat_model->Delete_where('alias',array('services_cat' => $id));
			}
		}
    }
    public function deletecategory($id)
    {
        if (is_numeric($id)&&$id>1) {
			$cat_parent =$this->raovat_model->getFirstRowWhere('raovat_category',array('parent_id'=>$id));
			 if(empty($cat_parent)){
				$this->del_cattinrao_once($id);
				$this->session->set_flashdata("mess", "Xóa danh mục thành công!");
			 }else{
				$this->session->set_flashdata("mess_err", "Xóa không thành công ! <br />Còn danh mục con");
			 }
        }
        redirect($_SERVER['HTTP_REFERER']);
    }
}