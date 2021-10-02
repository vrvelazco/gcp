# gcp
Challenge

1- Crear una cuenta en https://cloud.google.com/

2- Crear una cuenta de servicio en https://console.cloud.google.com/ y asginar roles

3- Descargar credenciales en Formato json

4- Creación de la App (app.py)

5- Creación del archivo requirements.txt

6- Creación de la imagen /greeting /square:
docker build -t gcr.io/centering-aegis-327602/mypythonapp .

7- Subir la Imagen al Container Registry
docker push gcr.io/centering-aegis-327602/mypythonapp

8- Creación del Deployment  .yaml
   kubectl apply -f web-deployment.yaml
9- Creación del Servicio .yaml
   kubectl apply -f web-service.yaml

10- Aprovisonamiento de Kubernetes Engine por iaac usando terraform
    terraform init
    terraform plan
    terraform apply
11- Instalando Ansible
    pip install requests google-auth
    python -m pip install --user ansible
    apt-get install python
12- creación de Yaml para el aprovisionamiento de la instacia
    ansible-playbook vm.yaml
    
    


