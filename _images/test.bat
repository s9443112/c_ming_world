Get-ChildItem *.md | ForEach-Object -Begin {
  $count = 1
} -Process {
  Rename-Item $_ -NewName "$count.md"
  $count++
}