require File.expand_path("#{ENV["DISCOURSE_DIR"]}/discourse/config/environment", __FILE__)

desc "Restores a local db dump"
task "db:restore", [:path] do |_, args|
  BackupRestore::DatabaseRestorer.new(Rails.logger, RailsMultisite::ConnectionManagement.current_db).restore(args[:path])
  SiteSetting.force_https = false
  SiteSetting.disable_digest_emails = true
end