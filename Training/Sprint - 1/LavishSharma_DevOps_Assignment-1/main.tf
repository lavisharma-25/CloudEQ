resource "local_file" "practice" {
    filename = var.filename_file
    content = var.file_content
    file_permission = var.permissions
}

output "local_file_path" {
    value = local_file.practice.content
}