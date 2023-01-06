#include <stdio.h>
#include "perceptron.h"

// represents a neural layer
typedef float Layer[HEIGHT][WIDTH];

static Layer weights;
static Layer inputs;


float get_output(Layer inputs, Layer weights);

int main() {

    printf("output = %.2f\n", get_output(inputs, weights));

    return 0;
}


float get_output(Layer inputs, Layer weights) {
    float out = 0;
    for (int i = 0; i < HEIGHT; i++) {
        for (int j = 0; j < WIDTH; j++) {
            out += inputs[i][j] * weights[i][j];
        }
    }
    return out;
}
