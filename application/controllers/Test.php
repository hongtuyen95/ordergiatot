
<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
require_once APPPATH . 'libraries/Crawler.php';
//require_once APPPATH . 'libraries/simple_html_dom.php';
//include APPPATH . "libraries/crawl/PHPCrawler.class.php";

class Test extends MY_Controller
{
    function __construct()
    {
        parent::__construct();
        $CI =& get_instance();
        $this->load->model('tag_model');
        $this->load->library('pagination');
    }

    public function abc(){
        $url = "https://item.taobao.com/item.htm?spm=a21wu.241046-global.4691948847.15.41ca55e5EPrOSz&scm=1007.15423.84311.100200300000005&id=562117330650&pvid=d119e0e7-d35c-4131-b2ec-28a72c73a979";

        $ch = curl_init();

        curl_setopt($ch, CURLOPT_URL, $url);

        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

        curl_setopt($ch, CURLOPT_FOLLOWLOCATION,true);

        curl_setopt($ch, CURLOPT_MAXREDIRS,20);

        $file_contents = curl_exec($ch);

        $info = curl_getinfo($ch);

        echo $file_contents ;die;
    }
    public function index(){
        //$html = 'https://detail.1688.com/offer/575395808780.html';
        $html = 'https://item.taobao.com/item.htm?spm=a21wu.241046-global.4691948847.7.41ca55e5Hu4MId&scm=1007.15423.84311.100200300000005&id=537984218542&pvid=0359a7e0-1345-4bc1-8fa0-148d8f3126a8';
        //$html = file_get_html('https://www.tmall.com/');
        $site_data = $this->get_site_data($html, 1, 0);


        echo "<pre>";print_r($site_data);die;
    }

    private function get_site_data($site_url, $max_depth = 1, $current_depth = 0){
        $current_depth++;
        $this->load->library('crawler');
        $site_data = array();
        if($this->crawler->set_url($site_url) !== false){
            $site_data['title'] = $this->crawler->get_title();
            $site_data['description'] = $this->crawler->get_description();
            $site_data['keywords'] = $this->crawler->get_keywords();
            $site_data['text'] = $this->crawler->get_text();
            $site_data['links'] = $this->crawler->get_links();
            //$site_data['html'] = $this->crawler->get_html();
            $site_data['image'] = $this->crawler->getImageByClass('.box-img');
            $site_data['price'] = $this->crawler->getPrice();
            if($current_depth <= $max_depth){
                foreach($site_data['links'] as $link_key => &$link){
                    $link['data'] = $this->get_site_data($link, $max_depth, $current_depth);
                }
            }
            return $site_data;
        }
        else{
            return false;
        }
    }

    public function crawl(){
        error_reporting( E_ALL );
        /**$html = file_get_html('https://detail.1688.com/offer/575395808780.html');
        $html = file_get_html('https://www.tmall.com/');
        echo $html;
        $img = $html->find('a');
         **/
        header('Content-Type: text/html; charset=UTF-8');
        $url = "https://detail.1688.com/offer/575395808780.html";

        $html = file_get_html($url);

        echo $html;
    }

    public function abx(){
        $crawler = new MyCrawler();

        // set URL mà ta muốn crawler
        //$crawler->setURL("https://detail.1688.com/offer/575395808780.html");
        $crawler->setURL("https://item.taobao.com/item.htm?spm=a21wu.241046-global.4691948847.15.41ca55e5EPrOSz&scm=1007.15423.84311.100200300000005&id=562117330650&pvid=d119e0e7-d35c-4131-b2ec-28a72c73a979");

        // Chỉ lấy các file mà nội dung là "text/html"
        $crawler->addContentTypeReceiveRule("#text/html#");

        // Một bộ lọc cho phép ta không lấy các link ảnh, css hoặc javascript

        // Trong quá trình crawler, lưu trữ và gửi cookie giống như ta vào bằng trinh duyệt
        $crawler->enableCookieHandling(true);

        // Thiết lập dung lượng(bytes) thu thập được trong quá trình crawler
        $crawler->setTrafficLimit(1000 * 1024);

        // Nào, chạy thôi, hehe, :))
        $crawler->go();

        // Sau khi quá trình crawler kết thúc, ghi lại báo cáo!!

        $report = $crawler->getProcessReport();

        if (PHP_SAPI == "cli") $lb = "\n";

        else $lb = "<br />";
    }
}