from math import erfc, sqrt

class LSFR_Analysis:
    def __init__(self, numbers : [int]) -> None:
        self.numbers = numbers
        self.size = len(numbers)
        self.median = self.get_median()

    def get_median(self) -> float:
        sorted_numbers = sorted(self.numbers)
        if self.size % 2 == 0:
            median1 = sorted_numbers[self.size//2]
            median2 = sorted_numbers[self.size//2 - 1]
            return (median1 + median2)/2
        else:
            return sorted_numbers[self.size//2]
    
    def less_more(self) -> [int]:
        return [int(x > self.median) for x in self.numbers]
    
    def runs_test(self) -> int:
        runs = 0
        numbers = self.less_more()
        for i in range(self.size-1):
            if(numbers[i] != numbers[i+1]):
                runs += 1
        return runs
    
    def p_test(self) -> float:
        n = self.size
        v_n = self.runs_test()+1
        pi = sum([x/n for x in self.less_more()])
        return erfc( abs(v_n - 2*n*pi*(1-pi)) / (2*sqrt(2*n)*pi*(1-pi)) )
    
    def test_random(self) -> None:
        if(self.p_test() > 0.01):
            print("Random")
        else:
            print("Not Random")

lsfr = LSFR_Analysis([3,6,5,7,2,7,5,3,2,5])
lsfr.test_random()