# Terraform vSphere NSX

This is an example deployment of a basic 'vSphere' landing zone


### Topology

```mermaid
graph LR
    A(T0 Router) -->|forwards tcp/4646| B(T1 Router)
    subgraph topology[nsx_landing_zone_module]
    B --> C[T1 Load Balancer]
    C --- D[segment-1]
    C --- E[segment-2]
    C --- F[segment-3]
    F --- vm3
    D --- vm1
    E --- vm2
    C -.->|forwards tcp/4646|vm2
    C -.->|forwards tcp/4646|vm1

    C -.->|forwards tcp/4646|vm3
    end
```


### To Think About

* Folder creation
* Tag creation
* Allocation RP
* Role Creation and Delegation
* Default Rules / NSX tags
* Module refactor / first principals
* 

