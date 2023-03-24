exec { 'kill-process':
  command => 'pkill killmenow',
  path    => '/usr/bin:/bin',
}
