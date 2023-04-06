<!-- Modal -->
<div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h5 class="modal-title" id="exampleModalLabel">Create Division</h5>
            </div>
            <div class="modal-body">
                <form method="POST" action="<?= site_url('division/create') ?>">
                    <div class="form-group">
                        <label>Division Name</label>
                        <input type="text" class="form-control" placeholder="Enter Division" name="division" required>
                    </div>
                    <div class="form-group">
                        <label>Description</label>
                        <input type="text" class="form-control" placeholder="Enter Description" name="description">
                    </div>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Create</button>
            </div>
            </form>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h5 class="modal-title" id="exampleModalLabel">Edit Division</h5>
            </div>
            <div class="modal-body">
                <form method="POST" action="<?= site_url('division/update') ?>">
                    <div class="form-group">
                        <label>Division Name</label>
                        <input type="text" class="form-control" id="division" placeholder="Enter Division"
                            name="division" required>
                    </div>
                    <div class="form-group">
                        <label>Description</label>
                        <input type="text" class="form-control" id="description" placeholder="Enter Description"
                            name="description">
                    </div>

            </div>
            <div class="modal-footer">
                <input type="hidden" class="form-control" id="division_id" name="division_id">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Update</button>
            </div>
            </form>
        </div>
    </div>
</div>