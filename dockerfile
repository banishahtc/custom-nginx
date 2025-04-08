# Use official Nginx image
FROM nginx:latest

# Remove the incorrect default nginx.conf (optional)
RUN rm /etc/nginx/nginx.conf

# Copy the corrected nginx.conf
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the corrected default.conf
COPY default.conf /etc/nginx/conf.d/default.conf

# Copy your website files (if any)
COPY ./html /usr/share/nginx/html

# Expose port 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

