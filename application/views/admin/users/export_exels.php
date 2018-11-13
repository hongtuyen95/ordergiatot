<meta http-equiv='Content-Type' content='text/html; charset=utf-8'/>

<table id="example" class="table table-bordered table-striped">
    <thead>
        <tr>
            <th width="5%" class="no-sort">STT</th>
            <th class="text-bar-left">Tên thành viên</th>
            <th width="15%">Email</th>
            <th width="10%" class="no-sort">Điện thoại</th>
            <th width="20%" class="no-sort">Địa chỉ</th>
            <th width="5%" class="text-center no-sort">Phí</th>
        </tr>
    </thead>
    <tbody>
    <?php if (isset($lists)) {
        $stt=1;
        foreach ($lists as $v) {  ?>
            <tr>
                <td><?= $stt++; ?></td>
                <td class="todo-list">
                    <a style="color:#13a1e4;font-weight: bold" href="<?=base_url('vnadmin/users/editUser?id='.base64_encode($v->id));?>">
                        <?= @$v->fullname ?>
                    </a>
                </td>
                <td><?= @$v->email ?></td>
                <td><?= @$v->phone ?></td>
                <td><?= @$v->address; ?></td>
                <td class="text-center">
                    <?=@$v->fee;?> %
                </td>
            </tr>

        <?php }  } ?>

    </tbody>

</table>