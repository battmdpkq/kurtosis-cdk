constants = import_module("./src/package_io/constants.star")

DEFAULT_ARGS = {
    "deployment_suffix": "-001",
    "global_log_level": "info",
    "sequencer_type": "erigon",
    "deploy_agglayer": True,
    "data_availability_mode": "cdk-validium",
    "additional_services": [],
    "zkevm_prover_image": "hermeznetwork/zkevm-prover:v6.0.3-RC20",
    "zkevm_node_image": "hermeznetwork/zkevm-node:v0.7.0",
    "cdk_validium_node_image": "0xpolygon/cdk-validium-node:0.7.0-cdk",
    "cdk_node_image": "ghcr.io/0xpolygon/cdk:0.0.16",
    "zkevm_da_image": "0xpolygon/cdk-data-availability:0.0.9",
    "zkevm_contracts_image": "leovct/zkevm-contracts:v6.0.0-rc.1-fork.9",
    "zkevm_agglayer_image": "ghcr.io/agglayer/agglayer-rs:main",
    "zkevm_bridge_service_image": "hermeznetwork/zkevm-bridge-service:v0.5.0-RC10",
    "zkevm_bridge_ui_image": "leovct/zkevm-bridge-ui:multi-network",
    "zkevm_bridge_proxy_image": "haproxy:2.9.9-bookworm",
    "zkevm_sequence_sender_image": "hermeznetwork/zkevm-sequence-sender:v0.2.0-RC4",
    "cdk_erigon_node_image": "hermeznetwork/cdk-erigon:v2.0.0-beta18",
    "zkevm_pool_manager_image": "hermeznetwork/zkevm-pool-manager:v0.1.0-RC1",
    "zkevm_hash_db_port": 50061,
    "zkevm_executor_port": 50071,
    "zkevm_aggregator_port": 50081,
    "zkevm_pprof_port": 6060,
    "zkevm_prometheus_port": 9091,
    "zkevm_data_streamer_port": 6900,
    "zkevm_rpc_http_port": 8123,
    "zkevm_rpc_ws_port": 8133,
    "zkevm_bridge_rpc_port": 8080,
    "zkevm_bridge_grpc_port": 9090,
    "zkevm_bridge_ui_port": 80,
    "zkevm_agglayer_port": 4444,
    "zkevm_dac_port": 8484,
    "zkevm_pool_manager_port": 8545,
    "zkevm_l2_sequencer_address": "0x5b06837A43bdC3dD9F114558DAf4B26ed49842Ed",
    "zkevm_l2_sequencer_private_key": "0x183c492d0ba156041a7f31a1b188958a7a22eebadca741a7fe64436092dc3181",
    "zkevm_l2_aggregator_address": "0xCae5b68Ff783594bDe1b93cdE627c741722c4D4d",
    "zkevm_l2_aggregator_private_key": "0x2857ca0e7748448f3a50469f7ffe55cde7299d5696aedd72cfe18a06fb856970",
    "zkevm_l2_claimtxmanager_address": "0x5f5dB0D4D58310F53713eF4Df80ba6717868A9f8",
    "zkevm_l2_claimtxmanager_private_key": "0x8d5c9ecd4ba2a195db3777c8412f8e3370ae9adffac222a54a84e116c7f8b934",
    "zkevm_l2_timelock_address": "0x130aA39Aa80407BD251c3d274d161ca302c52B7A",
    "zkevm_l2_timelock_private_key": "0x80051baf5a0a749296b9dcdb4a38a264d2eea6d43edcf012d20b5560708cf45f",
    "zkevm_l2_admin_address": "0xE34aaF64b29273B7D567FCFc40544c014EEe9970",
    "zkevm_l2_admin_private_key": "0x12d7de8621a77640c9241b2595ba78ce443d05e94090365ab3bb5e19df82c625",
    "zkevm_l2_loadtest_address": "0x81457240ff5b49CaF176885ED07e3E7BFbE9Fb81",
    "zkevm_l2_loadtest_private_key": "0xd7df6d64c569ffdfe7c56e6b34e7a2bdc7b7583db74512a9ffe26fe07faaa5de",
    "zkevm_l2_agglayer_address": "0x351e560852ee001d5D19b5912a269F849f59479a",
    "zkevm_l2_agglayer_private_key": "0x1d45f90c0a9814d8b8af968fa0677dab2a8ff0266f33b136e560fe420858a419",
    "zkevm_l2_dac_address": "0x5951F5b2604c9B42E478d5e2B2437F44073eF9A6",
    "zkevm_l2_dac_private_key": "0x85d836ee6ea6f48bae27b31535e6fc2eefe056f2276b9353aafb294277d8159b",
    "zkevm_l2_proofsigner_address": "0x7569cc70950726784c8D3bB256F48e43259Cb445",
    "zkevm_l2_proofsigner_private_key": "0x77254a70a02223acebf84b6ed8afddff9d3203e31ad219b2bf900f4780cf9b51",
    "zkevm_l2_keystore_password": "pSnv6Dh5s9ahuzGzH9RoCDrKAMddaX3m",
    "l1_chain_id": 271828,
    "l1_preallocated_mnemonic": "code code code code code code code code code code code quality",
    "l1_funding_amount": "100ether",
    "l1_rpc_url": "http://el-1-geth-lighthouse:8545",
    "l1_ws_url": "ws://el-1-geth-lighthouse:8546",
    "l1_additional_services": [],
    "l1_preset": "minimal",
    "l1_seconds_per_slot": 1,
    "zkevm_rollup_chain_id": 10101,
    "zkevm_rollup_id": 1,
    "erigon_strict_mode": True,
    "erigon_pre_eip155_transactions": True,
    "polygon_zkevm_explorer": "https://explorer.private/",
    "l1_explorer_url": "https://sepolia.etherscan.io/",
    "zkevm_use_gas_token_contract": False,
    "trusted_sequencer_node_uri": "zkevm-node-sequencer-001:6900",
    "zkevm_aggregator_host": "zkevm-node-aggregator-001",
    "genesis_file": "templates/permissionless-node/genesis.json",
}

# A list of fork identifiers currently supported by Kurtosis CDK.
SUPPORTED_FORK_IDS = [9, 11, 12]


def parse_args(args):
    args = DEFAULT_ARGS | args
    validate_global_log_level(args["global_log_level"])
    fork_id = get_fork_id(args["zkevm_contracts_image"])
    return args | {
        "zkevm_rollup_fork_id": fork_id,
    }


def validate_global_log_level(global_log_level):
    if global_log_level not in (
        constants.GLOBAL_LOG_LEVEL.error,
        constants.GLOBAL_LOG_LEVEL.warn,
        constants.GLOBAL_LOG_LEVEL.info,
        constants.GLOBAL_LOG_LEVEL.debug,
        constants.GLOBAL_LOG_LEVEL.trace,
    ):
        fail(
            "Unsupported global log level: '{}', please use '{}', '{}', '{}', '{}' or '{}'".format(
                global_log_level,
                constants.GLOBAL_LOG_LEVEL.error,
                constants.GLOBAL_LOG_LEVEL.warn,
                constants.GLOBAL_LOG_LEVEL.info,
                constants.GLOBAL_LOG_LEVEL.debug,
                constants.GLOBAL_LOG_LEVEL.trace,
            )
        )


def get_fork_id(zkevm_contracts_image):
    """
    Extract the fork identifier from a zkevm contracts image name.

    The zkevm contracts tags follow the convention:
    v<SEMVER>-rc.<RC_NUMBER>-fork.<FORK_ID>

    Where:
    - <SEMVER> is the semantic versioning (MAJOR.MINOR.PATCH).
    - <RC_NUMBER> is the release candidate number.
    - <FORK_ID> is the fork identifier.

    Example:
    - v8.0.0-rc.2-fork.12
    - v7.0.0-rc.1-fork.10
    """
    result = zkevm_contracts_image.split("fork.")
    if len(result) != 2:
        fail(
            "The zkevm contracts image tag '{}' does not follow the standard v<SEMVER>-rc.<RC_NUMBER>-fork.<FORK_ID>".format(
                zkevm_contracts_image
            )
        )

    fork_id = int(result[1])
    if fork_id not in SUPPORTED_FORK_IDS:
        fail("The fork id '{}' is not supported by Kurtosis CDK".format(fork_id))
    return fork_id
