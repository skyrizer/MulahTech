<?php

namespace App\Http\Controllers;

use App\Models\Input;
use App\Http\Controllers\Controller;
use App\Http\Requests\StoreInputRequest;
use App\Http\Requests\UpdateInputRequest;

class InputController extends Controller
{
    public function getSortedData()
    {
        $data = Input::select('*')
            ->orderByRaw('CAST(SUBSTRING(Index_, 2) AS UNSIGNED) ASC')
            ->get();

        return response()->json($data);
    }
}
