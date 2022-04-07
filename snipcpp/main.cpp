/* ################################################################################ */
/* #   _________     _                 _____   _____      __  __      _           # */
/* #  |___   ___|   (_)  _________    |  __ \ / ____|    |  \/  |    | |          # */
/* #   ___| |___      _ |_________|   | |  | | |   ______| \  / | ___| | ___      # */
/* #  |___   ___|    (_)    | |       | |  | | |  |______| |\/| |/ _ \ |/ _ \     # */
/* #   ___| |___    /|   ___| |___    | |__| | |____     | |  | |  __/ | (_) |    # */
/* #  |_________|  (_)  |_________|   |_____/ \_____|    |_|  |_|\___|_|\___/     # */
/* #                                                                              # */
/* ################################################################################ */
/* code by 王江 DC-Melo */
#include <string>
#include <vector>
#include <chrono>
#include <iostream>
using namespace std;
class App
{
public:
    App() {}
    static int maxProfit(int currentValue[], int futureValue[], int n, int saving ){
        std::cout << "n:"<<n<<"saving"<<saving << std::endl;
        if(n==0||saving==0) return 0;
        if(currentValue[n-1]<saving){
            return max(futureValue[n-1]-currentValue[n-1]+maxProfit(currentValue,futureValue,n-1,saving-currentValue[n-1]), maxProfit(currentValue,futureValue,n-1,saving));
        }else {
            return maxProfit(currentValue,futureValue,n-1,saving);
        }
}
    ~App() {}
private:
};
int main() {
    int saving = 250;
    int current[] = {175,133,109,201,97};
    int future[] = {200,125,128,228,133};
    App app;

    std::cout << app.maxProfit(current,future,5,saving) << std::endl;
    return 0; 
}

/* code by 王江 DC-Melo */

class Solution {
public:
    int findLengthOfLCIS(vector<int>& nums) {
        if(nums.size() == 0)
            return 0;
      
        int max = 1;
      
        for(int i=0;i<nums.size();i++){
            // cout << "i=" << i << ':' << endl;
            int temp = 1;
            for(int j=i;j+1<nums.size();j++){
                // cout << "  j=" << j << ':' << nums[j] << "," << nums[j+1] << endl;
                if(nums[j+1] > nums[j])
                    temp += 1;
                else
                    break;
            }
            if(temp > max)
                max = temp;
        }
        return max;
    }
};


