index=banking_soc sourcetype=windows_auth_training
| where EventCode IN ("4624","4648","4672","5140")
| table_time, EventCode, AccountName, SourceIP, WorkstationName, TargetServerName
| sort_time
