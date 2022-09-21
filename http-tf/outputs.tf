# produces an output value named "space_heroes"
output "space_heroes" {
  description = "API that documents folks in space"
  value       = data.http.iss.response_body
}

# produces an output value named "space_heroes"
output "space_heroes2" {
  description = "API Pokemon"
  value       = data.http.iss2.response_body
}
