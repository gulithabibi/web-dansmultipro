@extends('layouts.main')

@section('container')
    <a href="/home" class="btn btn-link"><i class="bi bi-arrow-left-circle"></i>Back</a>
    <div class="border p-4">
    <span class="text-muted fw-lighter">{{ $data->type." / ".$data->location }}</span>
    <h3 class="text-primary">{{ $data->title }}</h3>
    <hr>
    <div class="row align-items-start">
        <div class="col-md-8">
        <?= $data->description?>
        </div>
        <div class="col-md-4">
            
            <div class="card">
                <div class="card-header">
                Logo Company
                </div>
                <div class="card-body">
                <img src="<?=$data->company_logo?>">
                </div>
            </div>

            <div class="card mt-4">
                <div class="card-header">
                How to Apply
                </div>
                <div class="card-body">
                <?=$data->how_to_apply?>
                </div>
            </div>
    </div>
    </div>
@endsection
