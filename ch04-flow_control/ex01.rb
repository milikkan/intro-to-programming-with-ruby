# Write down whether the following expressions return true or false. 

(32 * 4) >= 129  # false
expression = (32 * 4) >= 129
p expression

false != !true  # false
expression = false != !true
p expression

true == 4  # false
expression = true == 4
p expression

false == (847 == '874')  # true
expression = false == (847 == '874')
p expression

(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false  # true
expression = (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false
p expression

# (false || (!20 == 20) || (82 == 82)) || false
# (false || (false == 20) || true) || false
# (false || false || true) || false
# true || false
# true 