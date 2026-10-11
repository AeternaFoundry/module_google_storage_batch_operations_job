variable "storage_batch_operations_jobs" {
  description = <<EOT
Map of storage_batch_operations_jobs, attributes below
Optional:
    - delete_protection
    - deletion_policy
    - description
    - job_id
    - project
    - bucket_list (block):
        - buckets (required, block):
            - bucket (required)
            - manifest (optional, block):
                - manifest_location (optional)
            - prefix_list (optional, block):
                - included_object_prefixes (optional)
    - delete_object (block):
        - permanent_object_deletion_enabled (required)
    - put_metadata (block):
        - cache_control (optional)
        - content_disposition (optional)
        - content_encoding (optional)
        - content_language (optional)
        - content_type (optional)
        - custom_metadata (optional)
        - custom_time (optional)
    - put_object_hold (block):
        - event_based_hold (optional)
        - temporary_hold (optional)
    - rewrite_object (block):
        - kms_key (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    delete_protection = optional(bool)
    deletion_policy   = optional(string)
    description       = optional(string)
    job_id            = optional(string)
    project           = optional(string)
    bucket_list = optional(object({
      buckets = object({
        bucket = string
        manifest = optional(object({
          manifest_location = optional(string)
        }))
        prefix_list = optional(object({
          included_object_prefixes = optional(list(string))
        }))
      })
    }))
    delete_object = optional(object({
      permanent_object_deletion_enabled = bool
    }))
    put_metadata = optional(object({
      cache_control       = optional(string)
      content_disposition = optional(string)
      content_encoding    = optional(string)
      content_language    = optional(string)
      content_type        = optional(string)
      custom_metadata     = optional(map(string))
      custom_time         = optional(string)
    }))
    put_object_hold = optional(object({
      event_based_hold = optional(string)
      temporary_hold   = optional(string)
    }))
    rewrite_object = optional(object({
      kms_key = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.storage_batch_operations_jobs : (
        v.put_object_hold == null || (v.put_object_hold.event_based_hold == null || (contains(["SET", "UNSET"], v.put_object_hold.event_based_hold)))
      )
    ])
    error_message = "must be one of: \"SET\", \"UNSET\""
  }
  validation {
    condition = alltrue([
      for k, v in var.storage_batch_operations_jobs : (
        v.put_object_hold == null || (v.put_object_hold.temporary_hold == null || (contains(["SET", "UNSET"], v.put_object_hold.temporary_hold)))
      )
    ])
    error_message = "must be one of: \"SET\", \"UNSET\""
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

