<li class="media">
    <div class="card w-100 mb-2">
        <div class="card-body">
            {{--<img src="..." class="mr-3" alt="...">--}}
            <div class="media-body">
                <h5 class="mt-0 mb-1">{{ $task->name }} @include('laravel-crm::livewire.components.partials.task.actions', ['task' => $task])</h5>
                @if($showRelated)
                    <p class="pb-0 mb-2">
                        @if($task->taskable instanceof \VentureDrake\LaravelCrm\Models\Person)
                            <span class="fa fa-user-circle" aria-hidden="true"></span> <a
                                    href="{{ route('laravel-crm.people.show', $task->taskable) }}">{{ $task->taskable->name }}</a>
                        @elseif($task->taskable instanceof \VentureDrake\LaravelCrm\Models\Organisation)
                            <span class="fa fa-building" aria-hidden="true"></span> <a
                                    href="{{ route('laravel-crm.organisations.show', $task->taskable) }}">{{ $task->taskable->name }}</a>
                        @endif
                    </p>
                @endif
                @include('laravel-crm::livewire.components.partials.task.content', ['task' => $task])
            </div>
        </div>
    </div>
    @push('livewire-js')
        <script>
            $(document).ready(function () {
                $(document).on("change", "input[name='due_at']", function () {
                    @this.set('due_at', $(this).val());
                });
            });
        </script>
    @endpush
</li>

