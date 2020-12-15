# Bài thu hoạch cuối khóa học Devops

## Trắc nhiệm

### Phần 1 : Git, Docker, Jenkins
**1A, 2C, 3B, 4D, 5C,  6C, 7D,  8C, 9D, 10C, 11C, 12B, 13A, 14D, 15C, 16A,17D,18B,19C**
### Phần 2 : Kubernetes
**1A, 2B, 3C, 4C,  5C, 6B ,7C, 8C,9C,10,11,12,13,14,15        x**

## Yêu cầu triển khai ứng dụng NodeJS + MongoDB

### Yêu cầu 1: Viết Dockerfile
:white_check_mark: Dockerfile chạy trên base image **node:12-alpine**  
:white_check_mark: Build ra 1 Docker Image có tên là **demo-service** 

### Yêu cầu 2: Viết file docker-compose.yml
File docker-compose.yml gồm 2 service có tên là **mongodb** và **nodejs**

:white_check_mark: Cấu hình service mongodb:
- Sử dụng image **mongo:latest**
- Mount volume thư mục **/data/db** ra 1 thư mục bên ngoài host

:white_check_mark: Cấu hình service nodejs:
- Chạy sau service mongodb
- Sử dụng Docker Image **demo-service** vừa build ở yêu cầu 1
- Expose cổng 3000 của ứng dụng ra cổng 8000 của ngoài host
- Định nghĩa 2 biến môi trường: MONGODB_URI=mongodb://mongodb:27017/demo, PORT=3000


## Triển khai ứng dụng lên Kubernetes

:white_check_mark: **1.** Build docker image từ dockerfile và push lên docker hub (public). Lấy image name (ví dụ minhpq331/node-app)

:white_check_mark:  **2.** Tạo file deployment-mongo.yaml để triển khai mongodb với replica=1

:white_check_mark: **3.** Tạo file service-mongo.yaml với service name là mongodb-svc dạng ClusterIP để expose mongodb cho app khác sử dụng qua port 27017

:white_check_mark: **4.** Tạo file deployment-nodejs.yaml để triển khai image app ở trên với cấu hình biến môi trường: MONGODB_URI=mongodb://mongodb-svc:27017/demo  
Trong đó mongodb-svc là tên service mongodb vừa tạo ở trên.

:white_check_mark: **5.** Tạo file service-nodejs.yaml dạng NodePort để expose ứng dụng ra port của host (trong khoảng 30000 - 32767 tùy ý)