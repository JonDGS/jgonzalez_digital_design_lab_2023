from PIL import Image
import numpy as np

# Load image in grayscale
img = Image.open('image_gray_8bit.png').convert('L')

# Convert image to numpy array
img_array = np.array(img)

# Open .mif file for writing
with open('ram_data1.mif', 'w') as f:
    # Write header
    f.write('WIDTH=8;\n')
    f.write('DEPTH=%d;\n' % 65536)
    f.write('\n')
    f.write('ADDRESS_RADIX=UNS;\n')
    f.write('DATA_RADIX=UNS;\n')
    f.write('\n')
    f.write('CONTENT BEGIN\n')
    
    lastEqual = 0;
    lastEval = 0;

    # Write pixel values
    for i, pixel in enumerate(img_array.flat):
        if i == img_array.size-1:
            if lastEqual == i:
                f.write('    %d : %d;\n' % (i, pixel))
            else:
                f.write('    [%d..%d] : %d;\n' % (lastEqual, i, pixel))
            lastEqual = i;
        elif i == lastEqual:
            if pixel == img_array.flat[i+1]:
                continue
            else:
                lastEqual = i + 1
                f.write('    %d : %d;\n' % (i, pixel))
        else:
            if pixel == img_array.flat[i+1]:
                continue
            else:
                f.write('    [%d..%d] : %d;\n' % (lastEqual, i, pixel))
                lastEqual = i + 1

    # Write footer
    f.write('END;\n')
