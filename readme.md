## Thesis - Middleware Interpreter

<div style="text-align: justify;margin-bottom:15px">
This is one out of four repositories that cover the project created for my bachelors thesis. Briefly summarized, this project allows an Internet of Things (IoT) device to be managed indirectly via a smart contract on the Ethereum blockchain. IoT devices are able to function autonomously through a custom written middleware that interprets payloads received from the blockchain and converts them into actions. The usage of the system is streamlined through a react-based distributed frontend application.
</div>

##### The projects repositories:
<div style="padding: 10px;padding-left: 15px;padding-right: 15px;background: #F1F1F1;margin-bottom:20px;">
    <div style="display:flex;">
        <div style="flex:1">Smart Contract Backend</div>
        <div style="font-style:italic;text-align:right">
        	<a href="https://github.com/wickstjo/oracle-manager">https://github.com/wickstjo/oracle-manager</a>
        </div>
    </div>
    <div style="display:flex;">
        <div style="flex:1">Middleware Interpreter</div>
        <div style="font-style:italic;text-align:right">
        	<a href="https://github.com/wickstjo/iot-manager">https://github.com/wickstjo/iot-manager</a>
        </div>
    </div>
    <div style="display:flex;">
        <div style="flex:1">Frontend Application</div>
        <div style="font-style:italic;text-align:right">
        	<a href="https://github.com/wickstjo/distributed-task-manager">https://github.com/wickstjo/distributed-task-manager</a>
        </div>
    </div>
    <div style="display:flex;">
        <div style="flex:1">Private Blockchain</div>
        <div style="font-style:italic;text-align:right">
        	<a href="https://github.com/wickstjo/thesis-chain">https://github.com/wickstjo/thesis-chain</a>
        </div>
    </div>
</div>

##### Content:
<div style="text-align: justify;margin-bottom:15px">
The middleware consists of a <b>launcher</b> and <b>patcher</b> that are developed in Jupyter notebooks, but converted down to python scripts and compiled into a neat standalone package that does not require an installation to use. This package is created by running the <b>compiler</b> notebook, and the result can be downloaded from the repository's releases.
</div>

##### Points of Interest:
- The middleware's base configuration files can be located in the <b>resources directory</b>.
- How the middleware performs tasks is defined in the <b>main.py</b> file in the <b>oracle directory</b>.