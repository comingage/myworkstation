Install multiple Cudas.<br>
* Download (choose runfile to ignore previous driver) from [Nvidia](https://developer.nvidia.com/cuda-toolkit)
* `cd` to installers<br>
`sudo dash <installer>.run`
* no need for /usr/local/cuda link
* using conda environment is able to switch between different cudas levereging LD\_LIBRARY\_PATH variable
* create conda env
```
mkdir -p ~/anaconda3/envs/tf_cu90/etc/conda/activate.d
touch ~/anaconda3/envs/tf_cu90/etc/conda/activate.d/activate.sh
vim ~/anaconda3/envs/tf_cu90/etc/conda/activate.d/activate.sh
chmod +x ~/anaconda3/envs/tf_cu90/etc/conda/activate.d/activate.sh
```
```
#!/bin/sh
ORIGINAL_LD_LIBRARY_PATH=$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/usr/local/cuda-9.0/lib64:/usr/local/cuda-9.0/extras/CUPTI/lib64:/lib/nccl/cuda-9:$LD_LIBRARY_PATH
```
```
mkdir -p ~/anaconda3/envs/tf_cu90/etc/conda/deactivate.d
touch ~/anaconda3/envs/tf_cu90/etc/conda/deactivate.d/deactivate.sh
vim ~/anaconda3/envs/tf_cu90/etc/conda/deactivate.d/deactivate.sh
chmod +x ~/anaconda3/envs/tf_cu90/etc/conda/deactivate.d/deactivate.sh
```
```
#!/bin/sh

export LD_LIBRARY_PATH=$ORIGINAL_LD_LIBRARY_PATH
unset ORIGINAL_LD_LIBRARY_PATH
```

* To verify `cd` to Nvidia samples<br>
`make`
* Find in created `bin` `deviceQuery` and run
* Expeceted result is `PASS`
