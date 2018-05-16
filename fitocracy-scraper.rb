require 'rubygems'
require 'commander/import'
require 'terminal-notifier'
require 'terminal-table'

table_styles = { margin_left: ' ' * 6, width: 39 }

program :name, 'Fitocracy Scraper'
program :version, '1.0.0'
program :description, 'An application that syncs data from Fitocracy to a local postgresql server.'
program :help, 'Usage:', "Script useage is very simplistic, provide a valid fitocracy user name and password and this
    will login and parse through html streams to copy data into a postgresql database. Once completed, a system
    notification will be sent.

      Sample Schema:

#{Terminal::Table.new(title: 'exercises', rows: [%w[id name]], style: table_styles)}

#{Terminal::Table.new(title: 'workouts', rows: [%w[id date set_ids super_set_ids]], style: table_styles)}

#{Terminal::Table.new(title: 'super_sets', rows: [%w[id set_ids]], style: table_styles)}

#{Terminal::Table.new(title: 'sets', rows: [%w[id exercise_id reps pr]], style: table_styles)}"

global_option('-u', '--user username', 'REQUIRED: You must provider a user name')
global_option('-p', '--password password', 'REQUIRED: You must provider the corresponding password')
global_option('-d', '--database database_name', 'The default database name is fitocracy_dump, this will override that')

default_command :run

command :run do |command|
  command.action do |_args, options|
    return puts 'You must provide a username: -u username' unless options.default[:user]
    return puts 'You must provide a password: -p password' unless options.default[:password]
  end
end
