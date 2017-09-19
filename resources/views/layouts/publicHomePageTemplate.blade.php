<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">

	{{-- bootstrap css CDN --}}
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

	{{-- jquery CDN --}}
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"
  	integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  	crossorigin="anonymous"></script>

	{{-- bootstrap js CDN --}}
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	

	<title>@yield('title')</title>
</head>

<body>
	<div class="container">
			
		<!-- Authentication Links -->
			<div class="loginBox nav navbar-nav pull-right">
	                        @guest
	                            <li><a href="{{ route('login') }}">Login</a></li>
	                            <li><a href="{{ route('register') }}">Register</a></li>
	                        @else
	                            <li class="dropdown">
	                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
	                                    {{ Auth::user()->name }} <span class="caret"></span>
	                                </a>

	                                <ul class="dropdown-menu" role="menu">
	                                    <li>
	                                        <a href="{{ route('logout') }}"
	                                            onclick="event.preventDefault();
	                                                     document.getElementById('logout-form').submit();">
	                                            Logout
	                                        </a>

	                                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
	                                            {{ csrf_field() }}
	                                        </form>
	                                    </li>
	                                </ul>
	                            </li>
	                        @endguest
			</div>
		
		
		<div>
				<h1>Welcome to the Blog</h1>
			</div>
		{{-- menu for different post categories --}}
		<nav  class="navbar navbar-default">
			<div class="container-fluid">
				

			@if(Auth::check())
				<ul class="nav navbar-nav navbar-right">
					<li><a style="color: red;" href="{{ route('posts.index')}}">Manage Blog Posts</a></li>
				</ul>
			@endif

			</div>
		</nav>

		{{-- container for containing posts in specified categories --}}
		<div>
			
			
			@yield('content')

			<div class="footer text-center" style="margin: 20px 0 60px 0;">
    			<p>&copy; Laravel Programming</p>
  			</div>
	</div>
</body>
</html>