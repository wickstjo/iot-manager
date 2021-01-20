## Thesis - Middleware Interpreter

This is one out of four repositories that cover the project created for my bachelors thesis. Briefly summarized, this project allows an Internet of Things (IoT) device to be managed indirectly via a smart contract on the Ethereum blockchain. IoT devices are able to function autonomously through a custom written middleware that interprets payloads received from the blockchain and converts them into actions. The usage of the system is streamlined through a react-based distributed frontend application.

#### The projects repositories:
- Smart Contract Backend: *[https://github.com/wickstjo/oracle-manager](https://github.com/wickstjo/oracle-manager)*
- Middleware Interpreter: *[https://github.com/wickstjo/oracle-manager](https://github.com/wickstjo/iot-manager)*
- Frontend Application: *[https://github.com/wickstjo/distributed-task-manager](https://github.com/wickstjo/distributed-task-manager)*
- Private Blockchain: *[https://github.com/wickstjo/thesis-chain](https://github.com/wickstjo/thesis-chain)*

#### Content:

The middleware consists of a **launcher** and **patcher** that are developed in *Jupyter Notebooks*, but converted down to python scripts and compiled into a neat standalone package that does not require an installation to use. This package is created by running the **compiler** notebook, and the result can be downloaded from the repository's releases.

- The middleware's base configuration files can be located in the **resources directory**.
- How the middleware performs tasks is defined in the **main.py** file in the **oracle directory**.