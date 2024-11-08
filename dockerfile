# Use the official TensorFlow image with Jupyter support
FROM tensorflow/tensorflow:2.12.0-jupyter

# Set the working directory
WORKDIR /app

# Install additional dependencies
RUN pip install --upgrade pip && \
    pip install transformers tqdm

# Copy the Jupyter notebooks into the container
COPY . /app

# Expose port 8888 (default Jupyter port)
EXPOSE 8888

# Start Jupyter Notebook when the container is run
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
