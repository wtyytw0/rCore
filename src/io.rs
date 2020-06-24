use crate::sbi;
use core::fmt::{ self, Write };
//print a char
pub fn putchar(ch: char){
    sbi::console_putchar(ch as u8 as usize)
}

//print a string
pub fn puts(s: &str){
    for ch in s.chars(){
        putchar(ch);
    }
}