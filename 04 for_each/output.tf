output "Output_List" {
    value = [for instance in aws_instance.SurajEc2: instance.public_dns]
  
}

output "for_output_map" {
    value = {for instance in aws_instance.SurajEc2: instance.id => instance.public_dns}
    # when u r using the map u have to define key: value , here instead of 
    # instance.id u can give any parameter of instance
}
output "For-Output_map_advance" {
    value = {for c, instance in aws_instance.SurajEc2: c => instance.public_dns}
  
}

output "Legecy_Splat" {
    value = aws_instance.SurajEc2.*.public_dns
}

output "Advanced_Splat" {
    value = aws_instance.SurajEc2[*].public_dns
}