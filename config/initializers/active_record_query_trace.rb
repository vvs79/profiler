if Rails.env.development?
  ActiveRecordQueryTrace.enabled = true
  ActiveRecordQueryTrace.lines = 5
  ActiveRecordQueryTrace.colorize = true
end
