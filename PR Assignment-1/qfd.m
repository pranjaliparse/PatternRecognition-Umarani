 b = [0.5; 0.5; -0.5; -0.25; -0.25]
 A= [1 0.135 .195 .137 .157; .135 1 .2 .309 .143; .195 .2 1 .157 .122; .137 .309 .157 1 .195; .157 .143 .122 .195 1]
 z=b'*A
 z=z*b
 sqrt(z)
