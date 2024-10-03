<form role="search" method="get" action="@php

     if(strpos(Route::currentRouteName(), 'laravel-crm.leads') === 0 && auth()->user()->can('view crm leads')){
        echo url(route('laravel-crm.leads.search'));
        $currentAction = ucfirst(__('laravel-crm::lang.leads'));
     }elseif(strpos(Route::currentRouteName(), 'laravel-crm.deals') === 0 && auth()->user()->can('view crm deals')){
         echo url(route('laravel-crm.deals.search'));
         $currentAction = ucfirst(__('laravel-crm::lang.deals'));
     }elseif(strpos(Route::currentRouteName(), 'laravel-crm.quotes') === 0 && auth()->user()->can('view crm quotes')){
         echo url(route('laravel-crm.quotes.search'));
         $currentAction = ucfirst(__('laravel-crm::lang.quotes'));
     }elseif(strpos(Route::currentRouteName(), 'laravel-crm.orders') === 0 && auth()->user()->can('view crm orders')){
         echo url(route('laravel-crm.orders.search'));
         $currentAction = ucfirst(__('laravel-crm::lang.orders'));
     }elseif(strpos(Route::currentRouteName(), 'laravel-crm.clients') === 0  && auth()->user()->can('view crm clients')){
         echo url(route('laravel-crm.clients.search'));
         $currentAction = ucfirst(__('laravel-crm::lang.clients'));
     }elseif(strpos(Route::currentRouteName(), 'laravel-crm.people') === 0  && auth()->user()->can('view crm people')){
         echo url(route('laravel-crm.people.search'));
         $currentAction = ucfirst(__('laravel-crm::lang.people'));
     }elseif(strpos(Route::currentRouteName(), 'laravel-crm.organisations') === 0  && auth()->user()->can('view crm organisations')){
         echo url(route('laravel-crm.organisations.search'));
         $currentAction = ucfirst(__('laravel-crm::lang.organizations'));
     }elseif(strpos(Route::currentRouteName(), 'laravel-crm.products') === 0  && auth()->user()->can('view crm products')){
         echo url(route('laravel-crm.products.search'));
         $currentAction = ucfirst(__('laravel-crm::lang.products'));
     }elseif(strpos(Route::currentRouteName(), 'laravel-crm.invoices') === 0  && auth()->user()->can('view crm invoices')){
         echo url(route('laravel-crm.invoices.search'));
         $currentAction = ucfirst(__('laravel-crm::lang.invoices'));
     }elseif(strpos(Route::currentRouteName(), 'laravel-crm.deliveries') === 0  && auth()->user()->can('view crm deliveries')){
         echo url(route('laravel-crm.deliveries.search'));
         $currentAction = ucfirst(__('laravel-crm::lang.deliveries'));
     } elseif(strpos(Route::currentRouteName(), 'laravel-crm.purchase-orders') === 0  && auth()->user()->can('view crm purchase orders')){
         echo url(route('laravel-crm.purchase-orders.search'));
         $currentAction = ucfirst(__('laravel-crm::lang.purchase_orders'));
     }
 
    if(!isset($currentAction)){
         if(auth()->user()->can('view crm leads')){
            echo url(route('laravel-crm.leads.search'));
            $currentAction = ucfirst(__('laravel-crm::lang.leads'));
         }elseif(auth()->user()->can('view crm deals')){
             echo url(route('laravel-crm.deals.search'));
             $currentAction = ucfirst(__('laravel-crm::lang.deals'));
         }elseif(auth()->user()->can('view crm quotes')){
             echo url(route('laravel-crm.quotes.search'));
             $currentAction = ucfirst(__('laravel-crm::lang.quotes'));
         }elseif(auth()->user()->can('view crm orders')){
             echo url(route('laravel-crm.orders.search'));
             $currentAction = ucfirst(__('laravel-crm::lang.orders'));
         }elseif(auth()->user()->can('view crm clients')){
             echo url(route('laravel-crm.clients.search'));
             $currentAction = ucfirst(__('laravel-crm::lang.clients'));
         }elseif(auth()->user()->can('view crm people')){
             echo url(route('laravel-crm.people.search'));
             $currentAction = ucfirst(__('laravel-crm::lang.people'));
         }elseif( auth()->user()->can('view crm organisations')){
             echo url(route('laravel-crm.organisations.search'));
             $currentAction = ucfirst(__('laravel-crm::lang.organizations'));
         }elseif(auth()->user()->can('view crm products')){
             echo url(route('laravel-crm.products.search'));
             $currentAction = ucfirst(__('laravel-crm::lang.products'));
         }elseif(auth()->user()->can('view crm invoices')){
             echo url(route('laravel-crm.invoices.search'));
             $currentAction = ucfirst(__('laravel-crm::lang.invoices'));
         }elseif(auth()->user()->can('view crm deliveries')){
             echo url(route('laravel-crm.deliveries.search'));
             $currentAction = ucfirst(__('laravel-crm::lang.deliveries'));
         }elseif(auth()->user()->can('view crm purchase orders')){
             echo url(route('laravel-crm.purchase-orders.search'));
             $currentAction = ucfirst(__('laravel-crm::lang.purchase_orders'));
         }
    }

@endphp" name="formSearch" class="navbar-form-custom">
    @csrf
    <input type="hidden" name="type" value="{!! Route::current()->getName() !!}">
    <div class="input-group">
        <input type="text" class="form-control" name="search" aria-label="Search" value="{{ old('search') ?? Request::input('search') ?? $searchValue ?? null }}">
        <div class="input-group-append">
            <button class="btn btn-outline-secondary" type="submit"><i class="fa fa-search"></i> <span class="action-current">{{ $currentAction ?? ucfirst(__('laravel-crm::lang.leads')) }}</span></button>
            <button class="btn btn-outline-secondary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></button>
            <div class="dropdown-menu dropdown-menu-right">
                @hasleadsenabled
                @can('view crm leads')
                <a class="dropdown-item" href="#leads" data-type="leads" data-action="{{ url(route('laravel-crm.leads.search')) }}">{{ ucfirst(__('laravel-crm::lang.leads')) }}</a>
                @endcan
                @endhasleadsenabled
                @hasdealsenabled
                @can('view crm deals')
                <a class="dropdown-item" href="#deals" data-type="deals" data-action="{{ url(route('laravel-crm.deals.search')) }}">{{ ucfirst(__('laravel-crm::lang.deals')) }}</a>
                @endcan
                @endhasdealsenabled
                @hasquotesenabled
                @can('view crm quotes')
                    <a class="dropdown-item" href="#quotes" data-type="quotes" data-action="{{ url(route('laravel-crm.quotes.search')) }}">{{ ucfirst(__('laravel-crm::lang.quotes')) }}</a>
                @endcan
                @endhasquotesenabled
                @hasordersenabled
                @can('view crm orders')
                    <a class="dropdown-item" href="#orders" data-type="orders" data-action="{{ url(route('laravel-crm.orders.search')) }}">{{ ucfirst(__('laravel-crm::lang.orders')) }}</a>
                @endcan
                @endhasordersenabled
                @hasinvoicesenabled
                @can('view crm invoices')
                    <a class="dropdown-item" href="#invoices" data-type="invoices" data-action="{{ url(route('laravel-crm.invoices.search')) }}">{{ ucfirst(__('laravel-crm::lang.invoices')) }}</a>
                @endcan
                @endhasinvoicesenabled
                @hasdeliveriesenabled
                @can('view crm deliveries')
                    <a class="dropdown-item" href="#deliveries" data-type="deliveries" data-action="{{ url(route('laravel-crm.deliveries.search')) }}">{{ ucfirst(__('laravel-crm::lang.deliveries')) }}</a>
                @endcan
                @endhasdeliveriesenabled
                @haspurchaseordersenabled
                @can('view crm purchase orders')
                    <a class="dropdown-item" href="#purchase-orders" data-type="purchaseOrders" data-action="{{ url(route('laravel-crm.purchase-orders.search')) }}">{{ ucfirst(__('laravel-crm::lang.purchase_orders')) }}</a>
                @endcan
                @endhaspurchaseordersenabled
                @can('view crm clients')
                    <a class="dropdown-item" href="#clients" data-type="clients" data-action="{{ url(route('laravel-crm.clients.search')) }}">{{ ucfirst(__('laravel-crm::lang.clients')) }}</a>
                @endcan
                @can('view crm organisations')    
                <a class="dropdown-item" href="#organisations" data-type="organisations" data-action="{{ url(route('laravel-crm.organisations.search')) }}">{{ ucfirst(__('laravel-crm::lang.organizations')) }}</a>
                @endcan
                @can('view crm people')
                    <a class="dropdown-item" href="#people" data-type="people" data-action="{{ url(route('laravel-crm.people.search')) }}">{{ ucfirst(__('laravel-crm::lang.people')) }}</a>
                @endcan
                @can('view crm products')
                <a class="dropdown-item" href="#products" data-type="products" data-action="{{ url(route('laravel-crm.products.search')) }}">{{ ucfirst(__('laravel-crm::lang.products')) }}</a>
                @endcan
            </div>
        </div>
    </div>
</form>