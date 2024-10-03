<div class="form-group @error($name) text-danger @enderror">
    @isset($label)<label for="{{ $name }}[]">{{ $label }}@isset($required)<span class="required-label"> *</span>@endisset</label>@endisset
    @isset($prepend)
    <div class="input-group">
    <div class="input-group-prepend">
        <span class="input-group-text" id="inputGroupPrepend">{!! $prepend !!}</span>
    </div>
    @endisset
        <select id="select_{{ $name }}" name="{{ $name }}[]" class="form-control @error($name) is-invalid @enderror" @include('laravel-crm::partials.form.attributes') multiple>
            @foreach($options as $optionKey => $optionName)
                <option value="{{ $optionKey }}" {{ ((isset($value) && in_array($optionKey,$value))) ? 'selected' : null }}>{{ $optionName }}</option>
            @endforeach    
        </select>
    @isset($prepend)
    </div>
    @endisset
    @error($name)
    <div class="text-danger invalid-feedback-custom">{{ $message }}</div>
    @enderror
</div>        