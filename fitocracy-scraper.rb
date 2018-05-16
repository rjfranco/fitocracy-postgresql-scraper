require 'rubygems'
require 'commander/import'
require 'terminal-notifier'

program :name, 'Fitocracy Scraper'
program :version, '1.0.0'
program :description, 'An application that syncs data from Fitocracy to a local postgresql server.'
program :help, 'Usage:', "Script useage is very simplistic, provide a valid fitocracy user name and password and this
    will login and parse through html streams to copy data into a postgresql database. Once completed, a system
    notification will be sent.

      Sample Schema:

      ===================================
      exercises
      -----------------------------------
      id | name
      ===================================

      ===================================
      workouts
      -----------------------------------
      id | date | set_ids | super_set_ids
      ===================================

      ===================================
      super_sets
      -----------------------------------
      id | set_ids
      ===================================

      ===================================
      sets
      -----------------------------------
      id | exercise_id | reps | pr
      ==================================="

global_option('-u', '--user username', 'REQUIRED: You must provider a user name')
global_option('-p', '--password password', 'REQUIRED: You must provider the corresponding password')
global_option('-d', '--database database_name', 'The default database name is fitocracy_dump, this will override that')

default_command :run

command :run do
  TerminalNotifier.notify('This is running!')
end
