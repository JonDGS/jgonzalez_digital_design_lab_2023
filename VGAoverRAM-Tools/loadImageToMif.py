from PIL import Image
import numpy as np
import os

def write_mif_file(img_array, filename, offset=0):
    # Open .mif file for writing, create if it doesn't exist
    with open(filename, 'a' if os.path.exists(filename) else 'w') as f:
        # Write header only if the file is newly created
        if f.tell() == 0:
            f.write('WIDTH=8;\n')
            f.write('DEPTH=%d;\n' % 65536)
            f.write('\n')
            f.write('ADDRESS_RADIX=UNS;\n')
            f.write('DATA_RADIX=UNS;\n')
            f.write('\n')
            f.write('CONTENT BEGIN\n')
        
        # Seek to the offset position
        f.seek(offset)

        # Write pixel values
        for i, pixel in enumerate(img_array.flat):
            if i == img_array.size - 1:
                f.write('    %d : %d;\n' % (i + offset, pixel))
            else:
                f.write('    %d : %d;\n' % (i + offset, pixel))

        # Write footer only if the file is newly created
        if f.tell() == offset:
            f.write('END;\n')

# Load image in grayscale
img = Image.open('laplace_filtered_image.png').convert('L')

# Convert image to numpy array
img_array = np.array(img)

# Output file path
output_file = 'ram_data1.mif'

# Offset to start writing from (you can change this as needed)
offset = 10001

# Write to the MIF file
write_mif_file(img_array, output_file, offset)
