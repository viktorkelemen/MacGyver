# Show the latest files changed
mdfind -onlyin ~/ '(kMDItemFSContentChangeDate >= $time.today)'