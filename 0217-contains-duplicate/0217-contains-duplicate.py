class Solution(object):
    def containsDuplicate(self, nums):
        count = {}
        
        for  num in nums:

            if num in count:
                return True
            else:
                count[num] = 1
            
        return False
        

        