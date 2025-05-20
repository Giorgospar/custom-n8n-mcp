FROM n8nio/n8n:latest

# Switch to root user to install global npm packages
USER root

# Install the desired npm packages globally
RUN npm install --no-save n8n-nodes-mcp

# Allow AI-Agent “Tool” access to community nodes
ENV N8N_COMMUNITY_PACKAGES_ALLOW_TOOL_USAGE=true

# Revert to the node user for security purposes
USER node
