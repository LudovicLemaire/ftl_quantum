ftl_quantum

Subject
https://docs.google.com/document/d/1jlpQKsuGarQtMo5QqaQWCGkM7RAUdBVojy6ukKKmotg/edit?usp=sharing


commands docker
build -t jupyter-qiskit .
docker run -d -p 8888:8888 --name ftl_quantum "jupyter-qiskit"