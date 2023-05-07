#docker file
#kéo phiên bản node image từ dockerhub về
FROM node:16-alpine

#tạo thư mục là việc app
WORKDIR /app

#copy file package.json và packagelog.json vào thư mục gốc của container
COPY  package*.json ./

#chạy npm install
RUN npm install

#copy source vào thu mục làm việc của docker
COPY . .

#chạy npm start
CMD ["npm", "start"]  

#chạy lệnh docker build -t appname .
#Trong đó, . (dấu chấm) ở cuối câu lệnh cho biết rằng Docker sẽ tìm kiếm Dockerfile trong thư mục hiện tại.
#-t là tag cho phép đặt tên cho app