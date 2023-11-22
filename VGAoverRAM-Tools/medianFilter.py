from PIL import Image
import numpy as np

def apply_median_filter(image_path, filter_size):
    # Open the image
    image = Image.open(image_path)
    
    # Convert the image to a NumPy array
    img_array = np.array(image)

    # Get image shape
    height, width = img_array.shape[:2]

    # Create an empty array for the filtered image
    filtered_array = np.zeros_like(img_array)

    # Iterate over the image pixels
    for i in range(height):
        for j in range(width):
            # Extract the neighborhood
            start_i = max(0, i - filter_size // 2)
            end_i = min(height, i + filter_size // 2 + 1)
            start_j = max(0, j - filter_size // 2)
            end_j = min(width, j + filter_size // 2 + 1)

            # Flatten the neighborhood and find the median
            neighborhood = img_array[start_i:end_i, start_j:end_j].flatten()
            median_value = np.median(neighborhood)

            # Assign the median value to the filtered array
            filtered_array[i, j] = median_value

    # Create a new image from the filtered array
    filtered_image = Image.fromarray(filtered_array.astype(np.uint8))

    return filtered_image

def main():
    # Input image path
    image_path = "image_gray_8bit.png"

    # Filter size (specify an odd number for the filter size)
    filter_size = 3

    # Apply the median filter
    filtered_image = apply_median_filter(image_path, filter_size)

    # Save the filtered image
    filtered_image.save("filtered_image.png")

if __name__ == "__main__":
    main()
