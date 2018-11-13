<div class="full_box_sp_news ">
        <div class="content_right">
        <h2 class="title">
            <span>Sản phẩm nổi bật</span>
        </h2>
        <div class="box_sp_news">
            <ul class="product_list_widget">
                <?php foreach ($pros as $pro) : ?>
                    <li>
                        <a href="<?= base_url($pro->alias . '.html') ?> " title="<?= $pro->name; ?>">
                            <img src="<?= base_url('upload/img/products/' . $pro->pro_dir . '/' . @$pro->image) ?>"
                                 alt="<?= $pro->name; ?>">
                            <span class="product-title"><?= $pro->name; ?></span>
                        </a>
                    <span class="woocommerce-Price-amount amount"><?= $pro->price_sale; ?>
                        <span class="woocommerce-Price-currencySymbol">₫</span>
                    </span>
                    </li>
                <?php endforeach; ?>
            </ul>
        </div>
        </div>
    </div>