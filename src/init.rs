global_asm!(include_str!("boot/entry64.asm"));
use crate::consts::*;

#[no_mangle]
pub extern "C" fn rust_main() -> ! {
    /*crate::interrupt::init();
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
    */
    extern "C"{
        fn end();
    }
    println!(
        "free physical memory paddr = [{:#x}, {:#x})",
        end as usize - KERNEL_BEGIN_VADDR + KERNEL_BEGIN_PADDR,
        PHYSICAL_MEMORY_END
    );
    crate::interrupt::init();
    crate::timer::init();

    //panic!("end of rust_main");
    loop{}
}