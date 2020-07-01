//mod frame_allocator;
mod first_fit_alloc;
use buddy_system_allocator::LockedHeap;
//use frame_allocator::SEGMENT_TREE_ALLOCATOR as FRAME_ALLOCATOR;
use first_fit_alloc::First_Fit_Allocator as FRAME_ALLOCATOR;
use riscv::addr::{
    VirtAddr,
    PhysAddr,
    Page,
    Frame
};
use crate::consts::*;

pub fn init(l: usize, r: usize) {
    FRAME_ALLOCATOR.lock().init(l, r);
    init_heap();
    println!("++++ setup memory!    ++++");
}
pub fn init_allocator(l: usize, r: usize) {
    FRAME_ALLOCATOR.lock().init(l, r);
}

/*
pub fn alloc_frame() -> Option<Frame> {
    Some(Frame::of_ppn(FRAME_ALLOCATOR.lock().alloc()))
}*/
// 分配 cnt 块连续的帧
pub fn alloc_frames(cnt: usize) -> Option<Frame> {
    FRAME_ALLOCATOR.lock().alloc(cnt).map(|ppn| Frame::of_ppn(ppn))
    
}
pub fn alloc_frame() -> Option<Frame> {
    alloc_frames(1)
}
/*
pub fn dealloc_frame(f: Frame) {
    FRAME_ALLOCATOR.lock().dealloc(f.number())
}*/


// 释放以 f 为起始地址，cnt 块连续的帧
pub fn dealloc_frames(f: Frame, cnt: usize) {
    FRAME_ALLOCATOR.lock().dealloc(f.number(), cnt)
}

pub fn dealloc_frame(f: Frame) {
    dealloc_frames(f, 1)
}



// Malloc
fn init_heap() {
    static mut HEAP: [u8; KERNEL_HEAP_SIZE] = [0; KERNEL_HEAP_SIZE];
    unsafe {
        DYNAMIC_ALLOCATOR
            .lock()
            .init(HEAP.as_ptr() as usize, KERNEL_HEAP_SIZE);
    }
}

#[global_allocator]
static DYNAMIC_ALLOCATOR: LockedHeap = LockedHeap::empty();

#[alloc_error_handler]
fn alloc_error_handler(_: core::alloc::Layout) -> ! {
    panic!("alloc_error_handler do nothing but panic!");
}