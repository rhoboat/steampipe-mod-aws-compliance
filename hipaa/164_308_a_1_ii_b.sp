locals {
  hipaa_164_308_a_1_ii_b_common_tags = merge(local.hipaa_common_tags, {
    hipaa_item_id = "164_308_a_1_ii_b"
  })
}

benchmark "hipaa_164_308_a_1_ii_b" {
  title       = "164.308(a)(1)(ii)(B) Risk Management"
  description = "Implement security measures sufficient to reduce risks and vulnerabilities to a reasonable and appropriate level to comply with 164.306(a): Ensure the confidentiality, integrity, and availability of all electronic protected health information the covered entity or business associate creates, receives, maintains, or transmits."
  children = [
    control.apigateway_stage_cache_encryption_at_rest_enabled,
    control.autoscaling_group_with_lb_use_health_check,
    control.cloudtrail_trail_logs_encrypted_with_kms_cmk,
    control.cloudtrail_trail_validation_enabled,
    control.codebuild_project_plaintext_env_variables_no_sensitive_aws_values,
    control.dms_replication_instance_not_publicly_accessible,
    control.dynamodb_table_auto_scaling_enabled,
    control.dynamodb_table_point_in_time_recovery_enabled,
    control.ebs_snapshot_not_publicly_restorable,
    control.ebs_volume_encryption_at_rest_enabled,
    control.ec2_ebs_default_encryption_enabled,
    control.ec2_instance_in_vpc,
    control.ec2_instance_not_publicly_accessible,
    control.ec2_stopped_instance_30_days,
    control.efs_file_system_encrypt_data_at_rest,
    control.elasticache_redis_cluster_automatic_backup_retention_15_days,
    control.elb_application_lb_deletion_protection_enabled,
    control.elb_application_lb_redirect_http_request_to_https,
    control.elb_classic_lb_use_ssl_certificate,
    control.emr_cluster_master_nodes_no_public_ip,
    control.es_domain_encryption_at_rest_enabled,
    control.es_domain_in_vpc,
    control.iam_policy_no_star_star,
    control.iam_root_user_no_access_keys,
    control.kms_key_not_pending_deletion,
    control.lambda_function_in_vpc,
    control.lambda_function_restrict_public_access,
    control.log_group_encryption_at_rest_enabled,
    control.rds_db_instance_backup_enabled,
    control.rds_db_instance_encryption_at_rest_enabled,
    control.rds_db_instance_multiple_az_enabled,
    control.rds_db_snapshot_encrypted_at_rest,
    control.rds_db_snapshot_prohibit_public_access,
    control.redshift_cluster_encryption_in_transit_enabled,
    control.redshift_cluster_encryption_logging_enabled,
    control.redshift_cluster_prohibit_public_access,
    control.s3_bucket_cross_region_replication_enabled,
    control.s3_bucket_default_encryption_enabled,
    control.s3_bucket_enforces_ssl,
    control.s3_bucket_object_lock_enabled,
    control.s3_bucket_restrict_public_read_access,
    control.s3_bucket_restrict_public_write_access,
    control.s3_bucket_versioning_enabled,
    control.s3_public_access_block_account,
    control.sagemaker_endpoint_configuration_encryption_at_rest_enabled,
    control.sagemaker_notebook_instance_direct_internet_access_disabled,
    control.sagemaker_notebook_instance_encryption_at_rest_enabled,
    control.sns_topic_encrypted_at_rest,
    control.vpc_igw_attached_to_authorized_vpc,
    control.vpc_security_group_restrict_ingress_common_ports_all,
    control.vpc_security_group_restrict_ingress_ssh_all,
    control.vpc_security_group_restrict_ingress_tcp_udp_all,
    control.vpc_vpn_tunnel_up
  ]
  tags          = local.hipaa_164_308_a_1_ii_b_common_tags
}
