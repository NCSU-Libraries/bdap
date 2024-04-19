# bdap
Docker files for born digital processing

# About
The bdap container packages and configures tools that will be useful to support born-digital archival processing. This approach will allow us to provide a consistent experience across computing platforms.

# What's included in the container
- tar
- brunnhilde
- bulk_extractor
- walk_to_dfxml
- clamav
- non-root user
- sudo for limited tasks for non-root user
- various Linux utilties

# Instructions
Refer to our [wiki](../../wiki) for instructions on building and using the image on Mac, Windows, and RHEL Linux.

# Deprecations
## Fedora 36-based image (end of life)
- We had selected Fedora because, at the time we were preparing the ARM image file, it would not build using Ubuntu
- We had been using 36 because it is the only version of Fedora that bulk_extractor installation scripts were written for
## Ubuntu 20 
- ARM and AMD files both build on Ubuntu 22 so we are deprecating 20
