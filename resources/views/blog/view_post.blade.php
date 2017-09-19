@extends('layouts.viewPostTemplate')

@section('title', 'View Post #'. $id)

@section('content')

	<div class="row">
		<a href="">Go back to Home</a>
	</div>

	<h1>{{ $post->title }}</h1>
	<p>{{ $post->body }}</p>

@endsection