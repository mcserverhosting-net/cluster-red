#cluster-red

```
                      play.mcserverhosting.red
                                  +
                                  |
cluster.mcserverhosting.red       |
              |                   |
              v                failover
      +-------+-------+           |           +---------------+         +----------------+
      |               |           |           |               |         |                |
      |               |           v           |               |         |                +--+
      |     main-1    +-----------+----------->    infra-1    +--------->     play-x     |  |
      |               |                       |               |         |                |  |
      |               |                       |               |         |                |  |
      +-------+-------+                       +---------------+         +--+-------------+  |
              |                                                            |                |
              +-------------------+-------------------+                    +----------------+
              |                   |                   |
              |                   |                   |
      +-------v-------+   +-------v-------+   +-------v-------+
      |               |   |               |   |               |
      |               |   |               |   |               |
      |  rook-ceph-1  |   |  rook-ceph-2  |   |  rook-ceph-3  |
      |               |   |               |   |               |
      |               |   |               |   |               |
      +---------------+   +---------------+   +---------------+
```
