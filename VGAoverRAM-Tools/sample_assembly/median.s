.section .text
.global _start

_start:
	

// Function to calculate the median of an array of 9 elements
// Input: r4 = address of the array
// Output: r0 = median value
// Registers used: r4 to r12
// Registers preserved: r4, lr
median:
    // Push r4 and lr to the stack
    push {r4, lr}
    
    // Initialize the loop counter r5 to 8
    mov r5, #8
    
    // Outer loop
median_outer_loop:
    // Initialize the loop index r6 to 0
    mov r6, #0
    
    // Inner loop
median_inner_loop:
    // Load the current element r7 from the array
    ldr r7, [r4, r6, lsl #2]
    
    // Load the next element r8 from the array
    mov r10, #4 // use r10 as a temporary register
	add r11, r6, r10 // use r11 as the offset register
	ldr r8, [r4, r11, lsl #2] // shift the offset register by 2
    
    // Compare r7 and r8
    cmp r7, r8
    
    // If r7 > r8, swap them
    bgt swap
    
    // Increment the loop index r6
    add r6, r6, #1
    
    // Compare r6 and r5
    cmp r6, r5
    
    // If r6 < r5, repeat the inner loop
    blt median_inner_loop
    
    // Decrement the loop counter r5
    sub r5, r5, #1
    
    // Compare r5 and 0
    cmp r5, #0
    
    // If r5 > 0, repeat the outer loop
    bgt median_outer_loop
    
    // Load the median element r0 from the array
    ldr r0, [r4, #16]
    
    // Pop r4 and lr from the stack
    pop {r4, lr}
    
    // Return from the function
    bx lr
    
swap:
    // Store r7 in r9
    mov r9, r7
    
    // Store r8 in r7
    mov r7, r8
    
    // Store r9 in r8
    mov r8, r9
    
    // Store r7 in the array
    str r7, [r4, r6, lsl #2]
    
    // Store r8 in the array
    str r8, [r4, r11, lsl #2] // use the same offset register as before
    
    // Continue the inner loop
    b median_inner_loop

// Function to apply median filter to a pixel array
// Input: r0 = address of the original pixel array
//        r3 = address of the filtered pixel array
//        r1 = width of the image
//        r2 = height of the image
// Output: none
// Registers used: r0 to r12
// Registers preserved: r0, r1, r2, r3, lr
apply_median_filter:
    // Push r0, r1, r2, r3, and lr to the stack
    push {r0, r1, r2, r3, lr}
    
    // Initialize the row index r4 to 1
    mov r4, #1
    
    // Outer loop
filter_outer_loop:
    // Initialize the column index r5 to 1
    mov r5, #1
    
    // Inner loop
filter_inner_loop:
    // Initialize the neighbor index r6 to 0
    mov r6, #0
    
    // Loop to get the neighboring pixel values
neighbor_loop:
    // Calculate the offset of the current neighbor r7
    // r7 = (r4 + i) * r1 + (r5 + j)
    // where i and j are -1, 0, or 1
    // r7 = r4 * r1 + r5 + i * r1 + j
    // r7 = r4 * r1 + r5 + (i << 2 + i) << 2 + j
    // r7 = r4 * r1 + r5 + (r8 << 2 + r8) << 2 + r9
    // r8 = i, r9 = j
    mul r7, r4, r1
    add r7, r7, r5
    add r7, r7, r8, lsl #2
    add r7, r7, r8
    add r7, r7, r7, lsl #2
    add r7, r7, r9
    
    // Load the pixel value from the original array
    ldr r10, [r0, r7, lsl #2]
    
    // Store the pixel value in the neighbor array
    str r10, [sp, r6, lsl #2]
    
    // Increment the neighbor index r6
    add r6, r6, #1
    
    // Increment the column offset r9
    add r9, r9, #1
    
    // If r9 > 1, reset r9 to -1 and increment the row offset r8
    cmp r9, #1
    ble skip
    mov r9, #-1
    add r8, r8, #1
skip:
    // If r6 < 9, repeat the neighbor loop
    cmp r6, #9
    blt neighbor_loop
    
    // Call the median function to calculate the median value
    // Pass the address of the neighbor array in r4
    mov r4, sp
    bl median
    
    // Store the median value in the filtered array
    // Calculate the offset of the current pixel r7
    // r7 = r4 * r1 + r5
    mul r7, r4, r1
    add r7, r7, r5
    str r0, [r3, r7, lsl #2]
    
    // Increment the column index r5
    add r5, r5, #1
    
    // Compare r5 and r1 - 1
    cmp r5, r1
    sub r5, r5, #1
    
    // If r5 < r1 - 1, repeat the inner loop
    blt filter_inner_loop
    
    // Increment the row index r4
    add r4, r4, #1
    
    // Compare r4 and r2 - 1
    cmp r4, r2
    sub r4, r4, #1
    
    // If r4 < r2 - 1, repeat the outer loop
    blt filter_outer_loop
    
    // Pop r0, r1, r2, r3, and lr from the stack
    pop {r0, r1, r2, r3, lr}
    
    // Return from the function
    bx lr

// Main function
main:
    // Example image dimensions (3x3 for simplicity)
    mov r1, #3 // width
    mov r2, #3 // height
    
    // Example pixel array (grayscale values)
    // Stored in memory starting from address 0x1000
    // 5 3 2
    // 8 7 1
    // 6 4 9
    mov r0, #0x1000 // address of the original pixel array
    
    // Allocate memory for the filtered pixel array
    // Stored in memory starting from address 0x2000
    mov r3, #0x2000 // address of the filtered pixel array
    
    // Call the apply_median_filter function
    bl apply_median_filter
    
    // End the program
    b end