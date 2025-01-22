ports_package = import_module("../src/package_io/ports.star")


def create_aggkit_service_config(
    args,
    config_artifact,
    genesis_artifact,
    keystore_artifact,
):
    cdk_aggoracle_name = "cdk-aggkit" + args["deployment_suffix"]
    (ports, public_ports) = get_aggkit_ports(args)
    service_command = get_cdk_aggoracle_cmd(args)
    cdk_aggoracle_service_config = ServiceConfig(
        image=args["cdk_aggkit_image"],
        ports=ports,
        public_ports=public_ports,
        files={
            "/etc/cdk": Directory(
                artifact_names=[
                    config_artifact,
                    genesis_artifact,
                    keystore_artifact.aggoracle,
                    keystore_artifact.sovereignadmin,
                    keystore_artifact.claimtx,
                ],
            ),
            "/data": Directory(
                artifact_names=[],
            ),
        },
        entrypoint=["sh", "-c"],
        cmd=service_command,
    )

    return {cdk_aggoracle_name: cdk_aggoracle_service_config}


def get_aggkit_ports(args):
    ports = {
        "rpc": PortSpec(
            args["zkevm_cdk_node_port"],
            application_protocol="http",
            wait=None,
        ),
    }

    public_ports = ports_package.get_public_ports(ports, "cdk_node_start_port", args)
    return (ports, public_ports)


def get_cdk_aggoracle_cmd(args):
    service_command = [
        "sleep 20 && aggkit run "
        + "--cfg=/etc/cdk/config.toml "
        + "--components=aggsender,aggoracle"
    ]

    return service_command
