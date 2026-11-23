docker run --rm -d `
  --name ia462-hardened `
  -p 5001:5000 `
  --read-only `
  --cap-drop ALL `
  --security-opt no-new-privileges:true `
  --security-opt seccomp=./seccomp-profile.json `
  --userns=default `
  --log-driver=json-file `
  ia462-lab4