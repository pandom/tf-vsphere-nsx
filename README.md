# Terraform vSphere NSX

This is an example deployment of a basic 'vSphere' landing zone on NSX. It includes basic services and network topologies accessible in the default routing domain.


### Topology

```mermaid
graph LR
    A(T0 Router) -->|forwards| B(T1 Router)
subgraph inf[Infrastructure]
    vcva[vCenter]
    nsx[NSX Manager]
end
subgraph topology[nsx_landing_zone_module]
    F --- vm3
    D --- vm1
    E --- vm2
    B --> C[T1 Load Balancer]
    C --- D[segment-1]
    C --- E[segment-2]
    C --- F[segment-3]
    subgraph vms[App1]
    vm1
    vm2
    vm3
    end
    C -.->|forwards|vm1
    C -.->|forwards|vm2
    C -.->|forwards|vm3 
end
subgraph p[Provider]
    rtr[Upstream Network]
    rtr---A
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

