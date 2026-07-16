#ACID PROPERTIES
#---------------
# A - ATOMICITY
#   - execute all transations or no transactions at a time
# examples - ticket booking(confirm or fail)

# C - CONSISTENCY
#   - while reading data it might be recently updated
#examples - after ticket booking seat is confirmed

#I - ISOLATION
#  - change made in one transactions will not affect other transactions
#examples - software update,app update

#D - DURABILITY
#   -permanently saving the changes that one commited even though a power failure
#examples - history  of transactions