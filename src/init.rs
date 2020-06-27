global_asm!(include_str!("boot/entry64.asm"));

#[no_mangle]
pub extern "C" fn rust_main() -> ! {
    crate::interrupt::init();
    crate::timer::init();
    //println!("_start vaddr = 0x{:x}", _start as usize);
    //println!("bootstacktop vaddr = 0x{:x}", bootstacktop as usize);
    println!("hello world!");
    unsafe{
        llvm_asm!("mret"::::"volatile");
    }
    unsafe {
        llvm_asm!("ebreak"::::"volatile");       
    }
    
    panic!("end of rust_main");
    loop{}
}