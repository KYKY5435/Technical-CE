#include <stdint.h>

// Returns true if `target` appears in the first `size` elements of `arr`.
template <typename T, typename U>
bool contains(const T* arr, size_t size, const U& target) {
    for (size_t i = 0; i < size; ++i) {
        if (arr[i] == target) {
            return true;
        }
    }
    return false;
}

/*

/*
Removes the first element in an array, fills last space with 0

Arguments:
uint8_t array[]: array
uint8_t size: sizeof(array)

Returns:
First element of the array before removal 

uint8_t pop(uint8_t arr[], uint8_t size) {
    uint8_t first = arr[0];
    for (uint8_t i = 0; i < size; i++) {
        if (i == size - 1) {
            arr[i] = 0;
        } else {
            arr[i] = arr[i+1];
        }
    }
    return first;
}


/*
Adds a value to the end of an array

ERASES ANY 0 VALUES

Arguments:
T array[]: array
uint8_t size: sizeof(array)
T value: value to add

Returns:
Index of newly added value or size-1 if failed

uint8_t push(T arr[], uint8_t size, T value) {
    uint8_t i = 0;
    for (i = 0; i < size; i++) {
        if (arr[i] == 0) {
            arr[i] = value;
            return i;
        }
    } 
    return size-1;
}
*/