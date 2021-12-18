@extends('layouts.main')

@section('container')
    <div class="border p-4">
    <h3>{{ $data->title }}</h3>
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
