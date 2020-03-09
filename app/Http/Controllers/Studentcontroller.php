<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Student;

class Studentcontroller extends Controller
{
    public function index(){
      $students = Student::paginate(3);
    	return view('welcome')->with('students',$students);
    }
    public function create(){
   	return view('layouts.create');
    }
    public function store(Request $request){

    $this->validate($request,[
      'firstName' => 'required',
      'lastName' => 'required',
      'email' => 'required|email|unique:students',
      'phone' => 'required'

    ]);
   	
   	$student = new Student;

   	$student->first_name = $request->firstName;
   	$student->last_name = $request->lastName;
   	$student->email = $request->email;
   	$student->phone = $request->phone;
   	$student->save();

   	return redirect(route('home'))->with('successMsg', 'Student added Successgully');






    }

    public function edit($id){

      $student = Student::find($id);
      return view('layouts.edit',compact('student'));
      
    }
    public function update(Request $request,$id){

    $this->validate($request,[
      'firstName' => 'required',
      'lastName' => 'required',
      'email' => 'required',
      'phone' => 'required'

    ]);
    
    $student = Student::find($id);

    $student->first_name = $request->firstName;
    $student->last_name = $request->lastName;
    $student->email = $request->email;
    $student->phone = $request->phone;
    $student->save();

    return redirect(route('home'))->with('successMsg', 'Student Updated Successgully');






    }


    public function delete($id){

      Student::find($id)->delete();
      return redirect(route('home'))->with('successMsg', 'Student Deleted Successgully');
      
    }
}
