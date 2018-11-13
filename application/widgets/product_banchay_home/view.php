<section class="qts_box_sp">

        

              <h2 class="title_home"><a>Sản phẩm bán chạy</a></h2>



   			 <div class="clearfix-10"></div>

             

             

                <div class="slider_box">

                    <div class="row">

                    

                    

                      <?php if (count($pros)):

            foreach ($pros as $key => $pro):?> 

            <!-- begin tem pro home -->

                    

                        <div class="col-lg-220 col-md-3 col-sm-4 col-xs-6 col-480-12">

                        <!-- begin sub temp pro -->

                            <div class="product-box">

                                <div class="product-thumbnail"><span class="sale_count"><span class="bf_">- 10%</span></span>

                                   

                                    <a href="<?= base_url('san-pham/' . $pro->alias . '.html') ?>" class="image_link display_flex h_9958">

                                        <img  alt="<?= $pro->name ?>" src="<?= base_url('upload/img/products/' . $pro->pro_dir . '/thumbnail_1_' . @$pro->image) ?>" class="w_100">

                                    </a>

                                    <div class="product-action-grid hidden clearfix">

                                        <form>

                                            <div>

                                                <a href="<?= base_url('san-pham/' . $pro->alias . '.html') ?>" class="button_wh_40 btn_view right-to quick-view"><i class="fa fa-search-plus"></i>

                                                    <span class="tooltips qv"><span>Xem chi tiết</span></span>

                                                </a>

                                            </div>

                                        </form>

                                    </div>

                                </div>

                                <div class="product-info a-center">

                                    

                                    <h3 class="product-name"><a class="text2line" href="<?= base_url('san-pham/' . $pro->alias . '.html') ?>">Nước hoa Chloé Eau de Parfum</a></h3>



                                    <div class="reviews-product-list grid_reviews">

                                        <div class="bizweb-product-reviews-badge"></div>

                                    </div>

                                    <div class="price-box clearfix"><span class="price product-price-old"><?= number_format($pro->price)?>₫</span>

                                        <span class="price product-price"><?= number_format($pro->price_sale)?>₫</span>

                                    </div>

                                    <div class="action_axxx">

                                        <form>

                                            <div>

                                                <input type="hidden" name="variantId">

                                                <a href="<?= base_url("addCart_now?id=".$pro->id)?>" class=" cart_button_style btn-cart left-to add_to_cart">

                                                    <span><span class="ti-bag"></span></span>

                                                    Giỏ hàng

                                                </a>

                                            </div>

                                        </form>

                                    </div>

                                </div>

                            </div>

                             <!-- end sub temp pro -->

                        </div>

                        <!-- end tem pro home -->

                         <?php endforeach; endif; ?>

                        

                 

                        

                        

                    </div>

                </div>

           

    </section>

    

    





