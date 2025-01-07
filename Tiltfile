docker_build('fyc-backend', '.', dockerfile='Dockerfile', live_update=[sync("./**/*", "/app")])
k8s_yaml('deployment.yml')
k8s_resource('fyc-backend', port_forwards='8000:8000')
