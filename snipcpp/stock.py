################################################################################
#   _________     _                 _____   _____      __  __      _           #
#  |___   ___|   (_)  _________    |  __ \ / ____|    |  \/  |    | |          #
#   ___| |___      _ |_________|   | |  | | |   ______| \  / | ___| | ___      #
#  |___   ___|    (_)    | |       | |  | | |  |______| |\/| |/ _ \ |/ _ \     #
#   ___| |___    /|   ___| |___    | |__| | |____     | |  | |  __/ | (_) |    #
#  |_________|  (_)  |_________|   |_____/ \_____|    |_|  |_|\___|_|\___/     #
#                                                                              #
################################################################################
#!/usr/bin/env python
# coding=utf-8

class Solution:
    def maxProfit(self, prices):
        # if not prices:
        #     return 0
        min_p = prices[0]
        ans=0
        for i in prices:
            min_p=min(min_p,i)
            ans = max(ans,i-min_p)
            print(i,min_p,ans)
        return ans

sln = Solution()
an= sln.maxProfit([7,1,5,3,6,4])
print(an)

