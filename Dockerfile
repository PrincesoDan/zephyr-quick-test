# Use the official Rust image as a base
FROM rust:latest

# Set the working directory
WORKDIR /workspace

# Install mercury-cli
RUN cargo install mercury-cli

# Add wasm target
RUN rustup target add wasm32-unknown-unknown

# Set the default entry point for the container
ENTRYPOINT ["bash"]