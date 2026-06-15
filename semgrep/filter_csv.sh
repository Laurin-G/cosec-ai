


head -n1 semgrep_all.csv > openssh.csv
tail -n +2 semgrep_all.csv | grep -i 'openssh-portable' >> openssh.csv

head -n1 semgrep_all.csv > openssl.csv
tail -n +2 semgrep_all.csv | grep -i 'openssl-OpenSSL_0_9_7' >> openssl.csv

head -n1 semgrep_all.csv > tapestry.csv
tail -n +2 semgrep_all.csv | grep -i 'tapestry' >> tapestry.csv

head -n1 semgrep_all.csv > trilium.csv
tail -n +2 semgrep_all.csv | grep -i 'trilium' >> trilium.csv

