require 'calabash-android/management/adb'
require 'calabash-android/operations'

Before do |scenario|
  `#{adb_command} logcat -c` # clears logcat output
  start_test_server_in_background
end

After do |scenario|
  # save logs from adb
  `#{adb_command} logcat -v time -d \
  > #{scenario.name.downcase.tr(' ', '_')}_sys_log.out.txt \
  2> #{scenario.name.downcase.tr(' ', '_')}_sys_log.err.txt`
  
  if scenario.failed?
    screenshot_embed
  end
  shutdown_test_server
end