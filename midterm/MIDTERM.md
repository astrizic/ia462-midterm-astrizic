**1**
This repository is my submission for IA462 Fall 2026 midterm. It contains several sections for the parts of the midterm.  It also contains a Dockerfile and an app that have been uploaded to GitHub. It also has rules for checking changes to the repository.

**2**
| Control Area | Linux | Windows | Docker |
|--------------|-------|---------|--------|
| Kernel Model | Linux kernel with full user-space isolation | Windows NT kernel with kernel/user space separation | Shares host OS kernel (Linux or Windows); containers share kernel but have isolated user-space via namespaces/cgroups |
| Access Control | Uses DAC (Discretionary Access Control) where the asset owner sets access permissions. Key differnce is the permision based bit system |Uses discretionary access control list (DACL), the system allows only the access that is explicitly allowed by the access control entries (ACEs) in the DACL. key differnce is teh use of ACEs to controll acess | simular to linux but each container is isolated from each other. key differnce is the containerization|
| Auditing / Logging | Uses sylogs to collect system data. key differnce is that linux uses seperate loggin and auditing services | Uses the centeralized event logging system. key differnce is how this is centeralized| Docker is similar to Linux, but logging is collected at the container level. The key difference is container specific monitoring|
| Hardening Standard | a common hardening standard is CIS Benchmarks. key difference is how this has to be figured out per distro | the common windows hardening standard is Microsoft Security Baselines. key differnce is that this is published by a centeral source, Microsoft| A common DOcker hardening standard is CIS Docker Benchmark. A key differnce is how the standards must take into account both the host and the container|
| Common Attack Surface | SSH is a common attack surface. key differnce is how its is open source and attackers can often see the source code | Active directory is a common attack surface. key diffence is the presnce of powershell | A common Docker attack surface is exposed container ports. Key differnce is t he need to protect the container images and dockerfiles|

**Linux:**
A common step in hardening Linux systems is disabling unused services, as noted on slide 11 of the week 3 slide deck. Linux systems are much more flexible than Windows and offer much more control of what is running. Many default services are unneeded; for example, a web server likely wouldn’t need CUPS for printing. Disabling unneeded services reduces the attack surface by limiting what an attacker could target.

**Windows:**
A common hardening step in hardening Windows machines is restricting local administrator accounts, as noted on slide 16 of the week 3 slide deck. The number of accounts that have local admin privileges should be reduced to the minimum possible. In addition, passwords should be randomized. This can be managed through the Local Administrator Password Solution (LAPS), which uses Active Directory to manage providing unique passwords and rotating them for individual accounts. This is important to limit lateral movement, which can happen if a local admin password is extracted from a machine and that password is reused on other machines.

**Docker:**
A common hardening step in hardening Docker is to minimize the installed packages, as noted in slide 21 of the week 3 slide deck. One can start from base images, such as distroless or Alpine Linux. This reduces the available attack surface in the image.

**3**
GitHub version control helps enforce branch protection rules, such as those discussed on slide 4 of Week 8. GitHub Actions, also shown on that slide, can run security checks when triggered by events such as pushes or pull requests. A dependency lock file, such as the one discussed on slide 6 of Week 8, pins the exact versions of dependencies to reduce the risk of unexpected or unauthorized dependency changes. Running a vulnerability scanner such as Trivy can identify vulnerable packages before they are included in the Docker image. A software bill of materials (SBOM) helps identify the packages in the image so they can be monitored for new vulnerabilities.

**4**
- Apply enterprise patch and policy management for Docker Containers, including container hardening. is connected to section 5 and 6
- Implement Windows and Linux best practices to protect against Supply Chain Attacks is connected to sections 1 and 2
- Understand and integrate Software Bill of Materials (SBOM) into Docker Container workflow is co0nnected to sections 4 and 6
- Perform Vulnerability Management: scan, patch, and retest continuously using CI/CD techniques in GitHub i connected to sections 1,2, 4, and 6
- Apply Dependency Pinning, Version Control, and Hashing to reduce surprise supply chain attacks. is connected to section 6 and 3


