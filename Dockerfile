# Use nginx as the base image for serving static files
FROM nginx:alpine

# Copy all files from current directory to nginx web root
COPY . /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start nginx server
CMD ["nginx", "-g", "daemon off;"]
