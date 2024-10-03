@component('laravel-crm::components.card')

    @component('laravel-crm::components.card-header')

        @slot('title')
            {{ $invoice->title }}
            @if($invoice->sent == 1)
                <small><span class="badge badge-success">{{ ucfirst(__('laravel-crm::lang.sent')) }}</span></small>
            @endif
            @if($invoice->fully_paid_at)
                <small><span class="badge badge-success">{{ ucfirst(__('laravel-crm::lang.paid')) }}</span></small>
            @elseif(! $invoice->fully_paid_at && $invoice->due_date->diffinDays() > 0  && $invoice->due_date >= \Carbon\Carbon::now()->timezone($timezone))
                <small><span class="badge badge-secondary">{{ ucfirst(__('laravel-crm::lang.due_in')) }} {{ $invoice->due_date->diffForHumans(false, true) }} </span></small>
            @elseif(! $invoice->fully_paid_at && $invoice->due_date->diffinDays() <= 0  && $invoice->due_date >= \Carbon\Carbon::now()->timezone($timezone))
                <small><span class="badge badge-secondary">{{ ucfirst(__('laravel-crm::lang.due_tomorrow')) }}</span></small>
            @elseif(! $invoice->fully_paid_at && $invoice->due_date->diffinDays() > 0  && $invoice->due_date < \Carbon\Carbon::now()->timezone($timezone))
                <small><span class="badge badge-danger">{{ $invoice->due_date->diffForHumans(false, true) }} {{ ucfirst(__('laravel-crm::lang.overdue')) }} </span></small>
            @endif
        @endslot

        @slot('actions')
            <span class="float-right">
                @include('laravel-crm::partials.return-button',[
                    'model' => $invoice,
                    'route' => 'invoices'
                ]) | 
                @livewire('send-invoice',[
                    'invoice' => $invoice
                ])
                <a class="btn btn-outline-secondary btn-sm" href="{{ route('laravel-crm.invoices.download', $invoice) }}">{{ ucfirst(__('laravel-crm::lang.download')) }}</a>
                @if(! $invoice->xeroInvoice)
                    @if(! $invoice->fully_paid_at)
                        @livewire('pay-invoice',[
                            'invoice' => $invoice
                        ])
                    @endif
                @endif
                @include('laravel-crm::partials.navs.activities') @if($invoice->amount_paid <= 0) |
                @if(! $invoice->xeroInvoice)
                    @can('edit crm invoices')
                    <a href="{{ url(route('laravel-crm.invoices.edit', $invoice)) }}" type="button" class="btn btn-outline-secondary btn-sm"><span class="fa fa-edit" aria-hidden="true"></span></a>
                    @endcan
                    @can('delete crm invoices')
                    <form action="{{ route('laravel-crm.invoices.destroy', $invoice) }}" method="POST" class="form-check-inline mr-0 form-delete-button">
                        {{ method_field('DELETE') }}
                        {{ csrf_field() }}
                        <button class="btn btn-danger btn-sm" type="submit" data-model="{{ __('laravel-crm::lang.invoice') }}"><span class="fa fa-trash-o" aria-hidden="true"></span></button>
                    </form>
                    @endcan
                    @endif  
                @endif
                @if($invoice->xeroInvoice)
                    <img src="/vendor/laravel-crm/img/xero-icon.png" height="30" />
                @endif  
            </span>
        @endslot

    @endcomponent

    @component('laravel-crm::components.card-body')

        <div class="row card-show card-fa-w30">
            <div class="col-sm-6 border-right">
                <h6 class="text-uppercase">{{ ucfirst(__('laravel-crm::lang.details')) }}</h6>
                <hr />
                <dl class="row">
                    <dt class="col-sm-3 text-right">Number</dt>
                    <dd class="col-sm-9">{{ $invoice->xeroInvoice->number ?? $invoice->invoice_id }}</dd>
                    <dt class="col-sm-3 text-right">Reference</dt>
                    <dd class="col-sm-9">{{ $invoice->xeroInvoice->reference ?? $invoice->reference }}</dd>
                    @hasordersenabled
                        @if($invoice->order)
                            <dt class="col-sm-3 text-right">Order</dt>
                            <dd class="col-sm-9">
                                <a href="{{ route('laravel-crm.orders.show', $invoice->order) }}">{{ $invoice->order->order_id }}</a>
                            </dd>
                        @endif
                    @endhasordersenabled
                    <dt class="col-sm-3 text-right">Issue Date</dt>
                    <dd class="col-sm-9">{{ ($invoice->issue_date) ? $invoice->issue_date->format($dateFormat) : null }}</dd>
                    <dt class="col-sm-3 text-right">Due Date</dt>
                    <dd class="col-sm-9">{{ ($invoice->due_date) ? $invoice->due_date->format($dateFormat) : null }}</dd>
                    <dt class="col-sm-3 text-right">Terms</dt>
                    <dd class="col-sm-9">{{ $invoice->terms }}</dd>
                </dl>
                <h6 class="mt-4 text-uppercase">{{ ucfirst(__('laravel-crm::lang.organization')) }}</h6>
                <hr />
                <p><span class="fa fa-building" aria-hidden="true"></span> @if($invoice->organisation)<a href="{{ route('laravel-crm.organisations.show',$invoice->organisation) }}">{{ $invoice->organisation->name }}</a>@endif</p>
                <p><span class="fa fa-map-marker" aria-hidden="true"></span> {{ ($organisation_address) ? \VentureDrake\LaravelCrm\Http\Helpers\AddressLine\addressSingleLine($organisation_address) : null }} </p>
                <h6 class="mt-4 text-uppercase">{{ ucfirst(__('laravel-crm::lang.contact_person')) }}</h6>
                <hr />
                <p><span class="fa fa-user" aria-hidden="true"></span> @if($invoice->person)<a href="{{ route('laravel-crm.people.show',$invoice->person) }}">{{ $invoice->person->name }}</a>@endif </p>
                @isset($email)
                    <p><span class="fa fa-envelope" aria-hidden="true"></span> <a href="mailto:{{ $email->address }}">{{ $email->address }}</a> ({{ ucfirst($email->type) }})</p>
                @endisset
                @isset($phone)
                    <p><span class="fa fa-phone" aria-hidden="true"></span> <a href="tel:{{ $phone->number }}">{{ $phone->number }}</a> ({{ ucfirst($phone->type) }})</p>
                @endisset
                @can('view crm products')
                <h6 class="text-uppercase mt-4 section-h6-title-table"><span>{{ ucfirst(__('laravel-crm::lang.invoice_lines')) }} ({{ $invoice->invoiceLines->count() }})</span></h6>
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th scope="col">{{ ucfirst(__('laravel-crm::lang.item')) }}</th>
                        <th scope="col">{{ ucfirst(__('laravel-crm::lang.price')) }}</th>
                        <th scope="col">{{ ucfirst(__('laravel-crm::lang.quantity')) }}</th>
                        <th scope="col">{{ $taxName }}</th>
                        <th scope="col">{{ ucfirst(__('laravel-crm::lang.amount')) }}</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($invoice->invoiceLines()->whereNotNull('product_id')->get() as $invoiceLine)
                        <tr>
                            <td>
                                {{ $invoiceLine->product->name }}
                                @if($invoiceLine->product->code)
                                    <br /><small>{{ $invoiceLine->product->code }}</small>
                                @endif
                            </td>
                            <td>{{ money($invoiceLine->price ?? null, $invoiceLine->currency) }}</td>
                            <td>{{ $invoiceLine->quantity }}</td>
                            <td>{{ money($invoiceLine->tax_amount ?? null, $invoiceLine->currency) }}</td>
                            <td>{{ money($invoiceLine->amount ?? null, $invoiceLine->currency) }}</td>
                        </tr>
                        @if($invoiceLine->comments)
                            <tr>
                                <td colspan="5" class="border-0 pt-0">
                                    <strong>{{ ucfirst(__('laravel-crm::lang.comments')) }}</strong><br />
                                    {{ $invoiceLine->comments }}
                                </td>
                            </tr>
                        @endif    
                    @endforeach
                    </tbody>
                    <tfoot>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td><strong>{{ ucfirst(__('laravel-crm::lang.sub_total')) }}</strong></td>
                        <td>{{ money($invoice->subtotal, $invoice->currency) }}</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td><strong>{{ $taxName }}</strong></td>
                        <td>{{ money($invoice->tax, $invoice->currency) }}</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td><strong>{{ ucfirst(__('laravel-crm::lang.total')) }}</strong></td>
                        <td>{{ money($invoice->total, $invoice->currency) }}</td>
                    </tr>
                    </tfoot>
                </table>
                @endcan
            </div>
            <div class="col-sm-6">
                @include('laravel-crm::partials.activities', [
                    'model' => $invoice
                ])
            </div>
        </div>

    @endcomponent

@endcomponent
