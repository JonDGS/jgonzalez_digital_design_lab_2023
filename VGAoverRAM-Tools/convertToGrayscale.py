from PIL import Image
import numpy as np

n = 200
m = 200

# Load image
img = Image.open('image.png')

# Resize image to n by m pixels
img_resized = img.resize((n, m))

# Convert image to 8-bit grayscale
img_gray = img_resized.convert('L')

# Convert image to numpy array
img_array = np.array(img_gray)

# Normalize pixel values to 8-bit range
#img_array = (img_array / 256).astype(np.uint8)

# Save image as 8-bit grayscale
img_gray_8bit = Image.fromarray(img_array)
img_gray_8bit.save('image_gray_8bit.png')
