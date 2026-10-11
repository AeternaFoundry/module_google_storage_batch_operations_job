resource "google_storage_batch_operations_job" "storage_batch_operations_jobs" {
  for_each = var.storage_batch_operations_jobs

  delete_protection = each.value.delete_protection
  deletion_policy   = each.value.deletion_policy
  description       = each.value.description
  job_id            = each.value.job_id
  project           = each.value.project

  dynamic "bucket_list" {
    for_each = each.value.bucket_list != null ? [each.value.bucket_list] : []
    content {
      buckets {
        bucket = bucket_list.value.buckets.bucket
        dynamic "manifest" {
          for_each = bucket_list.value.buckets.manifest != null ? [bucket_list.value.buckets.manifest] : []
          content {
            manifest_location = manifest.value.manifest_location
          }
        }
        dynamic "prefix_list" {
          for_each = bucket_list.value.buckets.prefix_list != null ? [bucket_list.value.buckets.prefix_list] : []
          content {
            included_object_prefixes = prefix_list.value.included_object_prefixes
          }
        }
      }
    }
  }

  dynamic "delete_object" {
    for_each = each.value.delete_object != null ? [each.value.delete_object] : []
    content {
      permanent_object_deletion_enabled = delete_object.value.permanent_object_deletion_enabled
    }
  }

  dynamic "put_metadata" {
    for_each = each.value.put_metadata != null ? [each.value.put_metadata] : []
    content {
      cache_control       = put_metadata.value.cache_control
      content_disposition = put_metadata.value.content_disposition
      content_encoding    = put_metadata.value.content_encoding
      content_language    = put_metadata.value.content_language
      content_type        = put_metadata.value.content_type
      custom_metadata     = put_metadata.value.custom_metadata
      custom_time         = put_metadata.value.custom_time
    }
  }

  dynamic "put_object_hold" {
    for_each = each.value.put_object_hold != null ? [each.value.put_object_hold] : []
    content {
      event_based_hold = put_object_hold.value.event_based_hold
      temporary_hold   = put_object_hold.value.temporary_hold
    }
  }

  dynamic "rewrite_object" {
    for_each = each.value.rewrite_object != null ? [each.value.rewrite_object] : []
    content {
      kms_key = rewrite_object.value.kms_key
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

