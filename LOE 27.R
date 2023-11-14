data=datasets::women
height_f=cut(data$height,3)
print(table(height_f))