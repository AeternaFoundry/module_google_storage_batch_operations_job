output "storage_batch_operations_jobs_id" {
  description = "Map of id values across all storage_batch_operations_jobs, keyed the same as var.storage_batch_operations_jobs except keys with no id are omitted"
  value       = { for k, v in google_storage_batch_operations_job.storage_batch_operations_jobs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "storage_batch_operations_jobs_bucket_list" {
  description = "Map of bucket_list values across all storage_batch_operations_jobs, keyed the same as var.storage_batch_operations_jobs except keys with no bucket_list are omitted"
  value       = { for k, v in google_storage_batch_operations_job.storage_batch_operations_jobs : k => one(v.bucket_list) if v.bucket_list != null && length(v.bucket_list) > 0 }
}
output "storage_batch_operations_jobs_complete_time" {
  description = "Map of complete_time values across all storage_batch_operations_jobs, keyed the same as var.storage_batch_operations_jobs except keys with no complete_time are omitted"
  value       = { for k, v in google_storage_batch_operations_job.storage_batch_operations_jobs : k => v.complete_time if v.complete_time != null && length(v.complete_time) > 0 }
}
output "storage_batch_operations_jobs_create_time" {
  description = "Map of create_time values across all storage_batch_operations_jobs, keyed the same as var.storage_batch_operations_jobs except keys with no create_time are omitted"
  value       = { for k, v in google_storage_batch_operations_job.storage_batch_operations_jobs : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "storage_batch_operations_jobs_delete_object" {
  description = "Map of delete_object values across all storage_batch_operations_jobs, keyed the same as var.storage_batch_operations_jobs except keys with no delete_object are omitted"
  value       = { for k, v in google_storage_batch_operations_job.storage_batch_operations_jobs : k => one(v.delete_object) if v.delete_object != null && length(v.delete_object) > 0 }
}
output "storage_batch_operations_jobs_delete_protection" {
  description = "Map of delete_protection values across all storage_batch_operations_jobs, keyed the same as var.storage_batch_operations_jobs except keys with no delete_protection are omitted"
  value       = { for k, v in google_storage_batch_operations_job.storage_batch_operations_jobs : k => v.delete_protection if v.delete_protection != null }
}
output "storage_batch_operations_jobs_deletion_policy" {
  description = "Map of deletion_policy values across all storage_batch_operations_jobs, keyed the same as var.storage_batch_operations_jobs except keys with no deletion_policy are omitted"
  value       = { for k, v in google_storage_batch_operations_job.storage_batch_operations_jobs : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "storage_batch_operations_jobs_description" {
  description = "Map of description values across all storage_batch_operations_jobs, keyed the same as var.storage_batch_operations_jobs except keys with no description are omitted"
  value       = { for k, v in google_storage_batch_operations_job.storage_batch_operations_jobs : k => v.description if v.description != null && length(v.description) > 0 }
}
output "storage_batch_operations_jobs_job_id" {
  description = "Map of job_id values across all storage_batch_operations_jobs, keyed the same as var.storage_batch_operations_jobs except keys with no job_id are omitted"
  value       = { for k, v in google_storage_batch_operations_job.storage_batch_operations_jobs : k => v.job_id if v.job_id != null && length(v.job_id) > 0 }
}
output "storage_batch_operations_jobs_project" {
  description = "Map of project values across all storage_batch_operations_jobs, keyed the same as var.storage_batch_operations_jobs except keys with no project are omitted"
  value       = { for k, v in google_storage_batch_operations_job.storage_batch_operations_jobs : k => v.project if v.project != null && length(v.project) > 0 }
}
output "storage_batch_operations_jobs_put_metadata" {
  description = "Map of put_metadata values across all storage_batch_operations_jobs, keyed the same as var.storage_batch_operations_jobs except keys with no put_metadata are omitted"
  value       = { for k, v in google_storage_batch_operations_job.storage_batch_operations_jobs : k => one(v.put_metadata) if v.put_metadata != null && length(v.put_metadata) > 0 }
}
output "storage_batch_operations_jobs_put_object_hold" {
  description = "Map of put_object_hold values across all storage_batch_operations_jobs, keyed the same as var.storage_batch_operations_jobs except keys with no put_object_hold are omitted"
  value       = { for k, v in google_storage_batch_operations_job.storage_batch_operations_jobs : k => one(v.put_object_hold) if v.put_object_hold != null && length(v.put_object_hold) > 0 }
}
output "storage_batch_operations_jobs_rewrite_object" {
  description = "Map of rewrite_object values across all storage_batch_operations_jobs, keyed the same as var.storage_batch_operations_jobs except keys with no rewrite_object are omitted"
  value       = { for k, v in google_storage_batch_operations_job.storage_batch_operations_jobs : k => one(v.rewrite_object) if v.rewrite_object != null && length(v.rewrite_object) > 0 }
}
output "storage_batch_operations_jobs_schedule_time" {
  description = "Map of schedule_time values across all storage_batch_operations_jobs, keyed the same as var.storage_batch_operations_jobs except keys with no schedule_time are omitted"
  value       = { for k, v in google_storage_batch_operations_job.storage_batch_operations_jobs : k => v.schedule_time if v.schedule_time != null && length(v.schedule_time) > 0 }
}
output "storage_batch_operations_jobs_state" {
  description = "Map of state values across all storage_batch_operations_jobs, keyed the same as var.storage_batch_operations_jobs except keys with no state are omitted"
  value       = { for k, v in google_storage_batch_operations_job.storage_batch_operations_jobs : k => v.state if v.state != null && length(v.state) > 0 }
}
output "storage_batch_operations_jobs_update_time" {
  description = "Map of update_time values across all storage_batch_operations_jobs, keyed the same as var.storage_batch_operations_jobs except keys with no update_time are omitted"
  value       = { for k, v in google_storage_batch_operations_job.storage_batch_operations_jobs : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

