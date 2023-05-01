FROM ubuntu:latest
RUN apt-get update && \
    apt-get install -y python3.9 \
    python3-pip
            
RUN pip3 install JPype1 jupyter pandas numpy seaborn scipy matplotlib pyNetLogo SALib pylatexenc qiskit qiskit[visualization] qiskit-ibm-provider
    
RUN useradd -ms /bin/bash jupyter
USER jupyter
WORKDIR home/jupyter 
EXPOSE 8888                                           
ENTRYPOINT ["jupyter", "notebook","--allow-root","--ip=0.0.0.0", "--NotebookApp.token=''", "--NotebookApp.password=''", "--port=8888","--no-browser"]
