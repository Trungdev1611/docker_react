#file này dùng vite tạo react nên sẽ hơi khác, nếu như bình thường thì sẽ như file dockerfile2 kia

FROM node

WORKDIR /app

# . là đại diện cho thư mục đang làm việc, thư mục app -wookdir
COPY package.json .   

RUN yarn 

# copy toàn bộ file trong thư mục (dấu .) docker này vào file app workdir (dấu chấm thứ 2)
COPY . . 

EXPOSE 5173

CMD ["yarn", "run", "dev"]

# gõ docker build in terminal: docker build -t appname .

#gõ docker image ls để tìm docker vừa tạo
#xóa docker nào đó thì ta sẽ chạy docker image rm iddocker

#docker run -d --rm -p 5173:5173 --name [name of the container] [your docker image name]

#Flag used in the command

#-d - To run the container in the background (Detach Mode )
#--rm - To delete the container, when you stop the container
#-p - Port Mapping between container and outside world.
# 5173:5173 - [Port access from Browser]: [Port exposed from the container]

# tùy chọn tiếp theo có thể chạy container từ terminal hoặc mở docker desktop lên và run