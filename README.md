# Live Doc

Is a way to create living documentation with various resources throughout an organization


# Inputs


**Runtime**
| Variable Name | Description | Required | Default |
|:--------------|:------------|:--------:|:-------:|
| `LIVEDOC_NGINX_SERVER_NAME` | The nginx servername to respond to | No | `localhost` |
| `LIVEDOC_SCHEDULE` | Cron expression for when to run your account scans | No | |
| `LIVEDOC_SITE_STAGE` | Determines whether to build the documentation site or not. Setting this to `prod` will build and enable your site | No | `dev` |
| `LIVEDOC_SUMMARY_ENABLED` | Enable or disable the summary of data collected. This will overwrite the default index | No | `true` |


<br>

**AWS**
| Variable Name | Description | Required | Default |
|:--------------|:------------|:--------:|:-------:|
| `LIVEDOC_AWS_ASSUME_ARNS` | Space delimeted list aws of arns to assume and search `="arn1 arn2 ..."` | No | |
| `LIVEDOC_AWS_COLLECTOR_ENABLED` | Enabled or disable all AWS collectors | No | `false` |
| `LIVEDOC_AWS_EC2_COLLECTOR` | Enable or disabled AWS ec2 collection | No | `true` |
| `LIVEDOC_AWS_ECS_COLLECTOR` | Enable or disabled AWS ecs collection | No | `true` |
| `LIVEDOC_AWS_ENVIRONMENT_TAG_NAME` | The tag used to identify environments running in your aws account(s) | No | `environment` |
| `LIVEDOC_AWS_REGIONS` | Space or newline separated value of regions to search in aws. Leaving this blank will search all regions | No | |
| `LIVEDOC_AWS_RDS_COLLECTOR` | Enable or disabled AWS rds collection | No | `true` |
| `LIVEDOC_AWS_ROUTE53_COLLECTOR` | Enable or disabled AWS route53 collection | No | `true` |
| `LIVEDOC_AWS_VPC_COLLECTOR` | Enable or disabled AWS vpc collection | No | `true` |

<br>

**MkDocs**
| Variable Name | Description | Required | Default |
|:--------------|:------------|:--------:|:-------:|
| `LIVEDOC_MKDOCS_SITE_NAME` | The title of your site to appear on the home screen | No | `Live Doc` |

<br>

**Change Control**
| Variable Name | Description | Required | Default |
|:--------------|:------------|:--------:|:-------:|
| `LIVEDOC_CHANGE_CONTROL_TIMESTAMP_INFRA_TAG_NAME` | The tag used to identify the infrastructure deployment time, This is more easily identifiable as the resources itself like a VM, Instance, or other hosted hardware as opposed to the operating system change control. Think 'Terraform' in this case | No | `infra_timestamp` |
| `LIVEDOC_CHANGE_CONTROL_TIMESTAMP_OS_TAG_NAME` | The tag used to identify the operating system and application deployment time, This is more easily identifiable as the operating system configuration or application code as opposed to the VM, Instance, or other hosted hardware. Think 'Ansible' in this case | No | `os_timestamp` |
| `LIVEDOC_CHANGE_CONTROL_URL` | The url for your change control platform | No | |

<br>

**Monitoring**
| Variable Name | Description | Required | Default |
|:--------------|:------------|:--------:|:-------:|
| `LIVEDOC_MONITOR_URL` | The url for your monitoring platform | No | |

<br>

**Source Control**
| Variable Name | Description | Required | Default |
|:--------------|:------------|:--------:|:-------:|
| `LIVEDOC_SOURCE_CONTROL_DEFAULT_BRANCH` | The default branch for source of truth | No | `master` |
| `LIVEDOC_SOURCE_CONTROL_INFRA_TAG_NAME` | The tag used to identify the source code that was used to deploy the resource | No | `infra_file` |
| `LIVEDOC_SOURCE_CONTROL_OS_TAG_NAME` | The tag used to identify the source code that was used to configure the os and applications on the deployed resource | No | `os_file` |
| `LIVEDOC_SOURCE_CONTROL_URL` | The url for your source control (infrastructure as code). This is used to link relevant source code to your inventory. Defined by `source_control_infra_tag_name` and `source_control_os_tag_name`. Example: `terragrunt_file = ${basename(get_terragrunt_dir())}/terragrunt.hcl` | No | |

<br>

**Documentation**
| Variable Name | Description | Required | Default |
|:--------------|:------------|:--------:|:-------:|
| `LIVEDOC_WIKI_URL` | The url for your documentation. This is used to find related docs for your inventory. Calls made to this endpoint will contain the instance name, so organize your documentation in a methodical way to really gain full use of the tool. url/<instance_name> - should return 1 or many results pertaining the <instance_name> specified | No | |

<br>

