#!/bin/bash

# Set common variables for OPT-1.3B
model="facebook/opt-125m"
sparsity_ratio=0.5
cuda_device=0

# Set CUDA device visibility
export CUDA_VISIBLE_DEVICES=$cuda_device

# Define function to run python command
run_python_command () {
    python main_opt.py \
    --model $model \
    --prune_method $1 \
    --sparsity_ratio $sparsity_ratio \
    --sparsity_type $2 \
    --save $3 \
    --save_model $4
}

# Now, repeat the same steps for OPT-125M
model="facebook/opt-125m"
echo "Running with wanda pruning method for OPT-125M"
run_python_command "wanda" "unstructured" "out/opt_125m/unstructured/wanda/log/" "out/opt_125m/unstructured/wanda/model/"
run_python_command "wanda" "2:4" "out/opt_125m/2-4/wanda/log/" "out/opt_125m/2-4/wanda/model/"
run_python_command "wanda" "4:8" "out/opt_125m/4-8/wanda/log/" "out/opt_125m/4-8/wanda/model/"
echo "Finished wanda pruning method for OPT-125M"

echo "Running with sparsegpt pruning method for OPT-125M"
run_python_command "sparsegpt" "unstructured" "out/opt_125m/unstructured/sparsegpt/log/" "out/opt_125m/unstructured/sparsegpt/model/"
run_python_command "sparsegpt" "2:4" "out/opt_125m/2-4/sparsegpt/log/" "out/opt_125m/2-4/sparsegpt/model/"
run_python_command "sparsegpt" "4:8" "out/opt_125m/4-8/sparsegpt/log/" "out/opt_125m/4-8/sparsegpt/model/"
echo "Finished sparsegpt pruning method for OPT-125M"

echo "Running with magnitude pruning method for OPT-125M"
run_python_command "magnitude" "unstructured" "out/opt_125m/unstructured/magnitude/log/" "out/opt_125m/unstructured/magnitude/model/"
run_python_command "magnitude" "2:4" "out/opt_125m/2-4/magnitude/log/" "out/opt_125m/2-4/magnitude/model/"
run_python_command "magnitude" "4:8" "out/opt_125m/4-8/magnitude/log/" "out/opt_125m/4-8/magnitude/model/"
echo "Finished magnitude pruning method for OPT-125M"

# Finally, repeat for OPT-350M
model="facebook/opt-350m"
echo "Running with wanda pruning method for OPT-350M"
run_python_command "wanda" "unstructured" "out/opt_350m/unstructured/wanda/log/" "out/opt_350m/unstructured/wanda/model/"
run_python_command "wanda" "2:4" "out/opt_350m/2-4/wanda/log/" "out/opt_350m/2-4/wanda/model/"
run_python_command "wanda" "4:8" "out/opt_350m/4-8/wanda/log/" "out/opt_350m/4-8/wanda/model/"
echo "Finished wanda pruning method for OPT-350M"

echo "Running with sparsegpt pruning method for OPT-350M"
run_python_command "sparsegpt" "unstructured" "out/opt_350m/unstructured/sparsegpt/log/" "out/opt_350m/unstructured/sparsegpt/model/"
run_python_command "sparsegpt" "2:4" "out/opt_350m/2-4/sparsegpt/log/" "out/opt_350m/2-4/sparsegpt/model/"
run_python_command "sparsegpt" "4:8" "out/opt_350m/4-8/sparsegpt/log/" "out/opt_350m/4-8/sparsegpt/model/"
echo "Finished sparsegpt pruning method for OPT-350M"

echo "Running with magnitude pruning method for OPT-350M"
run_python_command "magnitude" "unstructured" "out/opt_350m/unstructured/magnitude/log/" "out/opt_350m/unstructured/magnitude/model/"
run_python_command "magnitude" "2:4" "out/opt_350m/2-4/magnitude/log/" "out/opt_350m/2-4/magnitude/model/"
run_python_command "magnitude" "4:8" "out/opt_350m/4-8/magnitude/log/" "out/opt_350m/4-8/magnitude/model/"
echo "Finished magnitude pruning method for OPT-350M"