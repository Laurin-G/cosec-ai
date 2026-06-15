Topic: Integration of Security Countermeasures


### CVE-2003-0078 (OpenSSL)
NVD Description:
> ssl3_get_record in s3_pkt.c for OpenSSL before 0.9.7a and 0.9.6 before 0.9.6i does not perform a MAC computation if an incorrect block cipher padding is used, which causes an information leak (timing discrepancy) that may make it easier to launch cryptographic attacks that rely on distinguishing between padding and MAC verification errors, possibly leading to extraction of the original plaintext, aka the "Vaudenay timing attack."


- Vulnerable file: `unpatched/openssl-OpenSSL_0_9_7/ssl/s3_pkt.c` (early exit around line 350/357)





### CVE-2019-10071 (Apache Tapestry)
NVD Description:
> The code which checks HMAC in form submissions used String.equals() for comparisons, which results in a timing side channel for the comparison of the HMAC signatures. This could lead to remote code execution if an attacker is able to determine the correct signature for their payload. The comparison should be done with a constant time algorithm instead.


- Vulnerable file: `unpatched/tapestry-5-5.4.3/tapestry-core/src/main/java/org/apache/tapestry5/internal/services/ClientDataEncoderImpl.java` (line 129)
- Fix: https://github.com/apache/tapestry-5/commit/d3928ad44714b949d247af2652c84dae3c27e1b1




### CVE-2016-6210 (OpenSSH)
NVD Description:
> sshd in OpenSSH before 7.3, when SHA256 or SHA512 are used for user password hashing, uses BLOWFISH hashing on a static password when the username does not exist, which allows remote attackers to enumerate users by leveraging the timing difference between responses when a large password is provided.


- Vulnerable file: `unpatched/openssh-portable-V_7_2_P2/auth-passwd.c` (atleast line 206)
- Fix: https://github.com/openssh/openssh-portable/commit/9286875a73b2de7736b5e50692739d314cd8d9dc











### CVE-2025-68621 (Trilium Notes)
NVD Description:
> Trilium Notes is an open-source, cross-platform hierarchical note taking application with focus on building large personal knowledge bases. Prior to 0.101.0, a critical timing attack vulnerability in Trilium's sync authentication endpoint allows unauthenticated remote attackers to recover HMAC authentication hashes byte-by-byte through statistical timing analysis. This enables complete authentication bypass without password knowledge, granting full read/write access to victim's knowledge base. This vulnerability is fixed in 0.101.0.


- Vulnerable file: `unpatched/Trilium-0.100.0/apps/server/src/routes/api/login.ts` (line 111)
- Fix: https://github.com/TriliumNext/Trilium/pull/8129/commits
- Writeup + PoC: https://github.com/TriliumNext/Trilium/security/advisories/GHSA-hxf6-58cx-qq3x 