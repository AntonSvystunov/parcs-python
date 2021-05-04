# PARCS client implementation

This module is non mandatory to use, but that will give a hint on how to automize running and testing PARCS jobs.
## Installation
Copy files to your project folder. If you are using an old version of Docker image use *parcs_client_old.py*.
## Example
``` python
from parcs_client import ParcsClient

client = ParcsClient(master_ip='localhost',master_port='8080',scheme='http')
info, result = client.run_job(
    job_name='triangulation', 
    solution_file='./solver.py', 
    data_file='./points-temp.json'
)
print(info)
print(result)
```