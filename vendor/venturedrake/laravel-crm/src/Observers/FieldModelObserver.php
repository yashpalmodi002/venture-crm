<?php

namespace VentureDrake\LaravelCrm\Observers;

use Ramsey\Uuid\Uuid;
use VentureDrake\LaravelCrm\Models\FieldModel;

class FieldModelObserver
{
    /**
     * Handle the fieldModel "creating" event.
     *
     * @param  \VentureDrake\LaravelCrm\Models\FieldModel  $fieldModel
     * @return void
     */
    public function creating(FieldModel $fieldModel)
    {
        $fieldModel->external_id = Uuid::uuid4()->toString();
    }

    /**
     * Handle the fieldModel "created" event.
     *
     * @param  \VentureDrake\LaravelCrm\Models\FieldModel  $fieldModel
     * @return void
     */
    public function created(FieldModel $fieldModel)
    {
        foreach ($fieldModel->model::all() as $model) {
            $model->fields()->create([
                'field_id' => $fieldModel->field_id,
                'value' => $fieldModel->field->default,
            ]);
        }
    }

    /**
     * Handle the fieldModel "updating" event.
     *
     * @param  \VentureDrake\LaravelCrm\Models\FieldModel  $fieldModel
     * @return void
     */
    public function updating(FieldModel $fieldModel)
    {
        //
    }

    /**
     * Handle the fieldModel "updated" event.
     *
     * @param  \VentureDrake\LaravelCrm\Models\FieldModel  $fieldModel
     * @return void
     */
    public function updated(FieldModel $fieldModel)
    {
        //
    }

    /**
     * Handle the fieldModel "deleting" event.
     *
     * @param  \VentureDrake\LaravelCrm\FieldModel  $fieldModel
     * @return void
     */
    public function deleting(FieldModel $fieldModel)
    {
        foreach ($fieldModel->model::all() as $model) {
            if($field =  $model->fields()->where('field_id', $fieldModel->field_id)->first()) {
                $field->delete();
            }
        }
    }

    /**
     * Handle the fieldModel "deleted" event.
     *
     * @param  \VentureDrake\LaravelCrm\Models\FieldModel  $fieldModel
     * @return void
     */
    public function deleted(FieldModel $fieldModel)
    {
        //
    }

    /**
     * Handle the fieldModel "restored" event.
     *
     * @param  \VentureDrake\LaravelCrm\Models\FieldModel  $fieldModel
     * @return void
     */
    public function restored(FieldModel $fieldModel)
    {
        //
    }

    /**
     * Handle the fieldModel "force deleted" event.
     *
     * @param  \VentureDrake\LaravelCrm\Models\FieldModel  $fieldModel
     * @return void
     */
    public function forceDeleted(FieldModel $fieldModel)
    {
        //
    }
}
