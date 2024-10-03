@extends('laravel-crm::layouts.app')

@section('content')

    <div class="container-fluid pl-0">
        <div class="row">
            <div class="col col-md-2">
                <div class="card">
                    <div class="card-body py-3 px-2">
                        @include('laravel-crm::layouts.partials.nav-settings')
                    </div>
                </div>
            </div>
            <div class="col col-md-10">
                <div class="card">
                    <div class="card-header">
                        <h3 class="mb-0">{{ ucfirst(__('laravel-crm::lang.custom_field')) }}: {{ $field->name }} <span class="float-right">
                            <a type="button" class="btn btn-outline-secondary btn-sm" href="{{ url(route('laravel-crm.fields.index')) }}"><span class="fa fa-angle-double-left"></span> {{ ucfirst(__('laravel-crm::lang.back_to_fields')) }}</a> | 
                            @can('edit crm fields')
                                                <a href="{{ url(route('laravel-crm.fields.edit', $field)) }}" type="button" class="btn btn-outline-secondary btn-sm {{ ($field->system == 1) ? 'disabled' : null }}"><span class="fa fa-edit" aria-hidden="true"></span></a>
                                            @endcan
                                            @can('delete crm fields')
                                                <form action="{{ route('laravel-crm.fields.destroy',$field) }}" method="POST" class="form-check-inline mr-0 form-delete-button">
                                {{ method_field('DELETE') }}
                                                    {{ csrf_field() }}
                                <button class="btn btn-danger btn-sm" type="submit" data-model="{{ __('laravel-crm::lang.field') }}" {{ ($field->system == 1) ? 'disabled' : null }}><span class="fa fa-trash-o" aria-hidden="true"></span></button>
                            </form>
                                            @endcan
                        </span>
                        </h3>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-6 border-right">
                                <h6 class="text-uppercase">{{ ucfirst(__('laravel-crm::lang.details')) }}</h6>
                                <hr />
                                <dl class="row">
                                    <dt class="col-sm-3 text-right">{{ ucfirst(__('laravel-crm::lang.type')) }}</dt>
                                    <dd class="col-sm-9">{{ ucwords(str_replace('_',' ',$field->type)) }}</dd>
                                    @if(in_array($field->type, ['select', 'checkbox_multiple', 'radio']))
                                        <dt class="col-sm-3 text-right">{{ ucfirst(__('laravel-crm::lang.options')) }}</dt>
                                        <dd class="col-sm-9">
                                            @foreach($field->fieldOptions as $option)
                                                {{ $option->label }}<br />
                                            @endforeach
                                        </dd>
                                    @endif
                                    <dt class="col-sm-3 text-right">{{ ucfirst(__('laravel-crm::lang.group')) }}</dt>
                                    <dd class="col-sm-9">{{ $field->fieldGroup->name ?? null }}</dd>
                                    <dt class="col-sm-3 text-right">{{ ucfirst(__('laravel-crm::lang.required')) }}</dt>
                                    <dd class="col-sm-9">{{ ($field->required == 1) ?  ucfirst(__('laravel-crm::lang.yes'))  : ucfirst(__('laravel-crm::lang.no')) }}</dd>
                                    <dt class="col-sm-3 text-right">{{ ucfirst(__('laravel-crm::lang.default')) }}</dt>
                                    <dd class="col-sm-9">{{ $field->default }}</dd>
                                    <dt class="col-sm-3 text-right">{{ ucfirst(__('laravel-crm::lang.system')) }}</dt>
                                    <dd class="col-sm-9">{{ ($field->system == 1) ?  ucfirst(__('laravel-crm::lang.yes'))  : ucfirst(__('laravel-crm::lang.no')) }}</dd>
                                    <dt class="col-sm-3 text-right">{{ ucfirst(__('laravel-crm::lang.handle')) }}</dt>
                                    <dd class="col-sm-9">{{ $field->handle }}</dd>
                                </dl>
                            </div>
                            <div class="col-sm-6">
                                <h6 class="text-uppercase section-h6-title"><span>{{ ucfirst(__('laravel-crm::lang.attached_to')) }}</span></h6>
                                <hr />
                                @foreach(\VentureDrake\LaravelCrm\Models\FieldModel::where('field_id', $field->id)->get() as $fieldModel)
                                    <p>{{ \Illuminate\Support\Str::plural(class_basename($fieldModel->model)) }}</p>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
@endsection