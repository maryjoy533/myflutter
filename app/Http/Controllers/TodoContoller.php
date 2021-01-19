<?php

namespace App\Http\Controllers;

use App\Todo;
use Illuminate\Http\Request;

class TodoContoller extends Controller
{
    public function index()
    {
        $record = Todo::all();

        return response()->json($record);
    }

    public function create_todo(Request $request)
    {
        $record = new Todo;
        $record->desciption = $request->desciption;
        $record->save();

        return response()->json(['status' => true, 'message' =>'Record created']);

    
    }

    public function update_todo(Request $request, $id)
    {
        try {
            $record = Todo::findOrFail($id);
            $record->desciption=$request->desciption;
            $record->save();

            return response()->json(['status' => true, 'message' => 'Successfully updated']);
        } catch (\Exception $e) {
            return response()->json(['status' => false]);
        } 

    }

    public function delete_todo($id)
    {
        try {
            $record = Todo::findOrFail($id);
            $record->delete();

            return response()->json(['status' => true, 'message' => 'Successfully deleted']); 
            
        } catch (\Exception $e) {
            return response()->json(['status' => false]);
        } 

    }



}
