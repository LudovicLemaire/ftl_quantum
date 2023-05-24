FROM ubuntu:latest
RUN apt-get update && \
    apt-get install -y python3.9 \
    python3-pip \
    git
             
RUN pip3 install JPype1 jupyter pandas numpy seaborn matplotlib qiskit qiskit[visualization] qiskit-ibm-provider qiskit-ibm-runtime
RUN pip3 install git+https://github.com/qiskit-community/qiskit-textbook.git#subdirectory=qiskit-textbook-src
    
RUN useradd -ms /bin/bash jupyter
USER jupyter
WORKDIR home/jupyter 
EXPOSE 8888                                           
ENTRYPOINT ["jupyter", "notebook","--allow-root","--ip=0.0.0.0", "--NotebookApp.token=''", "--NotebookApp.password=''", "--port=8888","--no-browser"]
