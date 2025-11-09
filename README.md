cat > README.md << 'EOF'
# RPi Infra

This repository defines the infrastructure for the Raspberry Pi homelab:
- LocalStack (S3 + SQS emulation)
- TVOC collector service (Python) built from the `rpi-tvoc-collector` repository

Later this stack can be extended with:
- A Kotlin/Java processor service
- Prometheus + Grafana for monitoring

## Repository layout on the Raspberry Pi

Assuming everything is under `~/projects`:

```text
~/projects/
  rpi-infra/           # this repo
  rpi-tvoc-collector/  # Python TVOC collector
  rpi-tvoc-processor/  # Kotlin/Java processor (to be added later)

The docker-compose.yml in this repo expects rpi-tvoc-collector to be cloned
as a sibling directory.