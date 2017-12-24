Param(
  [string]$build_version,
  [string]$image_name
)
docker build --no-cache -t ${image_name}:latest -t ${image_name}:${build_version} -m 2g .