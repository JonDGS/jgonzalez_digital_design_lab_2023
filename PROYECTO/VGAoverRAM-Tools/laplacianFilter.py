from PIL import Image
import numpy as np

def apply_laplace_filter(image_path):
    # Open the image
    image = Image.open(image_path)
    
    # Convert the image to a NumPy array
    img_array = np.array(image)

    # Laplace filter kernel
    laplace_kernel = np.array([[0, 1, 0],
                               [1, -4, 1],
                               [0, 1, 0]])

    # Apply the Laplace filter using convolution
    filtered_array = np.zeros_like(img_array)

    height, width = img_array.shape[:2]

    for i in range(1, height - 1):
        for j in range(1, width - 1):
            # Extract the neighborhood
            neighborhood = img_array[i-1:i+2, j-1:j+2]

            # Apply Laplace filter
            laplace_value = np.sum(neighborhood * laplace_kernel)

            # Clip the resulting value to [0, 255]
            filtered_array[i, j] = np.clip(laplace_value, 0, 255)

    # Create a new image from the filtered array
    filtered_image = Image.fromarray(filtered_array.astype(np.uint8))

    return filtered_image

def main():
    # Input image path
    image_path = "image_gray_8bit.png"

    # Apply the Laplace filter
    filtered_image = apply_laplace_filter(image_path)

    # Save the filtered image
    filtered_image.save("laplace_filtered_image.png")

if __name__ == "__main__":
    main()
