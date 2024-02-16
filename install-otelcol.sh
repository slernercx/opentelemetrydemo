helm repo add coralogix https://cgx.jfrog.io/artifactory/coralogix-charts-virtual
helm repo update
helm upgrade --install otel-coralogix-integration coralogix/otel-integration \
    --version=0.0.50 \
    --render-subchart-notes \
    --set global.domain="coralogix.us" \
    --set global.clusterName="sl-cluster" \
    -f override-otel.yaml