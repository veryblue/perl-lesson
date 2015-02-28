#!/usr/bin/env perl
use Mojolicious::Lite;

# Documentation browser under "/perldoc"
plugin 'PODRenderer';

get '/' => sub {
  my $c = shift;
  $c->render(template => 'index');
};

get '/profile' => sub {
  my $c = shift;
  $c->stash(name => 'veryblue');
  $c->stash(hobby => 'camera');
  $c->stash(language => 'Perl');
  $c->render(template => 'profile');
};

get '/fizzbuzz' => sub {
  my $c = shift;
  $c->stash(num => 1000);
  $c->stash(title => 'FizzBuzz練習');
  $c->render(template => 'fizzbuzz');
};

app->start;
__DATA__

@@ index.html.ep
% layout 'default';
% title 'Welcome';
Welcome to the Mojolicious real-time web framework!

@@ layouts/default.html.ep
<!DOCTYPE html>
<html>
  <head><title><%= title %></title></head>
  <body><%= content %></body>
</html>

@@ profile.html.ep
<html>
<head><title><%= $name %>のプロフィール</title></head>
<body style='padding: 30px;'>
  私の名前は<%= $name %>です.<br>
  趣味は<%= $hobby %>で, 好きなプログラミング言語は<%= $language %>です.

  <h2>Perl入学式</h2>
  <img src="/papix.jpg">
</body>
</html>

@@ fizzbuzz.html.ep
<html>
<head><title><%= $title %></title></head>
<body style='padding: 30px;'>
 <% for my $i(1..$num) { %>
  <p>
  <% if ($i % 15 == 0) { %>
    <%= $i %> fizzbuzz
  <% } elsif ($i % 5 == 0) { %>
    <%= $i %> buzz
  <% } elsif ($i % 3 == 0) { %>
    <%= $i %> fizz
  <% } else { %>
    <%= $i %>
  <% } %>
  </p>
 <% } %>
</body>
</html>
