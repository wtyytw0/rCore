use riscv::register::{
    scause::{
        self,
        Trap,
        Exception,
        Interrupt
    },
    sepc,
    stvec,
    sscratch,
    sstatus
};
use crate::context::TrapFrame;
use crate::timer::{
    TICKS,
    clock_set_next_event
};
global_asm!(include_str!("trap/trap.asm"));

pub fn init() {
    unsafe {
        extern "C" {
            fn __alltraps();
        }        
        sscratch::write(0);
        stvec::write(__alltraps as usize, stvec::TrapMode::Direct);
        sstatus::set_sie();
    }
    println!("++++ setup interrupt! ++++");
}

#[no_mangle]
pub fn rust_trap(tf: &mut TrapFrame) {
    /*
    println!("rust_trap!");
    let cause = scause::read().cause();
    let epc = sepc::read();
    println!("trap: cause: {:?}, epc: 0x{:#x}", cause, epc);

    tf.sepc += 2;*/
    match tf.scause.cause(){
        //break point
        Trap::Exception(Exception::Breakpoint) => breakpoint(&mut tf.sepc),
        //s
        Trap::Interrupt(Interrupt::SupervisorTimer) =>super_timer(),
        _ => panic!("undefined trao!")
    }
}

fn breakpoint(sepc: &mut usize){
    println!("a breakpoint set @0x{:x}", sepc);
    *sepc += 2;
}

fn super_timer(){
    clock_set_next_event();
    unsafe{
        TICKS += 1;
        if(TICKS == 100){
            TICKS = 0;
            println!("* 100 ticks *");
        }
    }
}