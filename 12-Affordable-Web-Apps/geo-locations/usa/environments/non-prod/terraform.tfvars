project      = "terraform-learn-369718"
//credentials  = "path to service account key json file"
region      = "us-west1"
zone        = "us-west1-a"

vpc_name = "affordable-webapplication-vpc-non-prod"
subnet_1 = "us-west1-non-prod"
subnet_2 = "us-east1-non-prod"

memory_storage_name = "memorystore-us-west1-non-prod"
memory_size_gb      = 1
tier                = "BASIC"

cloud_storage_name = "cloudstorage-us-west1-non-prod"
versioning         = false

cloud_sql_name   = "cloudsql-us-west1-non-prod"
database_version = "MYSQL_5_7"
db_tier          = "db-f1-micro"

gke_cluster_name                = "gke-us-west1-non-prod"
gke_num_nodes                   = 1
gke_machine_type                = "n1-standard-1"
pods_per_nodes                  = 50
google_container_node_pool_name = "node-pool-gke-us-west1-non-prod"