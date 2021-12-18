@extends('layouts.main')

@section('container')
<div class="border bg-light mt-2 p-4">
<form class="row g-3 needs-validation" action="/search" method="get" novalidate>
<div class="row align-items-start">
    <div class="col-md-4">
        <label for="job_desc" class="form-label">Job Description</label>
        <div class="input-group has-validation">
            <span class="input-group-text" id="inputGroupPrepend">@</span>
            <input type="text" class="form-control" id="job_desc" name="job_desc" required>
            <div class="valid-feedback">
            Looks good!
            </div>
        </div>
    </div>

    <div class="col-md-4">
        <label for="location" class="form-label">Location</label>
        <div class="input-group has-validation">
            <span class="input-group-text" id="inputGroupPrepend">@</span>
            <input type="text" class="form-control" id="location" name="location" required>
            <div class="valid-feedback">
            Looks good!
            </div>
        </div>
    </div>
    <div class="col-md-2">
        <div class="form-check mt-4">
            <input class="form-check-input" type="checkbox" id="is_fulltime" name="is_fulltime" required>
            <label class="form-check-label" for="invalidCheck">
                Full Time Only
            </label>
            <div class="invalid-feedback">
                You must agree before submitting.
            </div>
        </div>
    </div>
    <div class="col-md-2">
        <button class="btn btn-dark mt-4" type="submit">Search</button>
    </div>
</div>
</form>
</div>

<div class="list-group mt-4">
  <?php foreach($positions as $item) {
      if($item!=null){
      ?>
  <a href="/detail/<?php echo $item->id?>" class="list-group-item list-group-item-action" aria-current="true">
    <div class="d-flex w-100 justify-content-between">
      <h5 class="mb-1">{{  $item->title  }}</h5>
      <small>{{  $item->location  }}<br>{{  $item->created_at  }}</small>
    </div>
    <p class="mb-1">{{  $item->company  }} - {{  $item->type  }}</p>
  </a>
  
  <?php }}?>
</div>

<nav aria-label="Page navigation example" class="mt-4">
  <ul class="pagination">
    <!-- <li class="page-item">
      <a class="page-link" href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li> -->
    <?php 
    if($pagination!=""){
    for($i=0; $i<$pagination['total_page']; $i++){
        $page=$i+1;
        ?>
    <li class="page-item <?php echo $page==$pagination["current_page"]?"active":"";?> "><a class="page-link" href="/page/{{ $page }}">{{ $page }}</a></li>
    <?php }}?>
    <!-- <li class="page-item">
      <a class="page-link" href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li> -->

  </ul>
</nav>

@endsection
