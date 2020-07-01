use crate::consts::MAX_PHYSICAL_PAGES;
use spin::Mutex;

pub struct FirstFitAllocator {
    a: [bool; MAX_PHYSICAL_PAGES],
    // 1 - available, 0 - occupied
    n: usize,
    // number of pages
    offset: usize,
}

impl FirstFitAllocator{
    pub fn init(&mut self, l: usize, r: usize){
        self.offset = l;
        self.n = r - l;
        for i in 0..self.n {
            self.a[i] = true;
        }
    }
    //first fit allocation
    pub fn alloc(&mut self, cnt: usize) -> Option<usize>{
        let mut result = 0;
        let mut j = 0;
        let mut i = 0;
        while j < self.n {
            if self.a[j] == true {
                j += 1;
                if j - i == cnt{
                    for k in i..j {
                        self.a[k] = false;
                    }
                    return Some(i + self.offset);
                }
            }
            else{
                j += 1;
                i = j;
            }
        }
        /*
        for i in 0..self.n {
            if self.a[i] == true {
                let mut flag = 0;
                for j in i..i+cnt{
                    if self.a[j] == false{
                        flag = j;
                        break;
                    }
                }
                if flag == 0{
                    for j in i..i+cnt{
                        self.a[i] == false;
                    }
                    result = i;
                    break
                }    
                else{
                    
                }
            }
        }
        result*/
        None
    }

    pub fn dealloc(&mut self, f_num: usize, cnt: usize) {
        let s = f_num - self.offset;
        assert!(s + cnt <= self.n);
        for i in s..s+cnt{
            if self.a[i]{
                panic!("Already dealloc");
            }
            else{
                self.a[i] = true;
            }
            
        }
    }
}

pub static First_Fit_Allocator: Mutex<FirstFitAllocator> = Mutex::new(FirstFitAllocator {
    a: [true; MAX_PHYSICAL_PAGES],
    n: 0,
    offset: 0
});