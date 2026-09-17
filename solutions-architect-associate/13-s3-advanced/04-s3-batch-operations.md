# S3 Batch Operations

Run one action across a large list of existing objects.

- Manifest can be an S3 Inventory report, CSV file, or generated object list
- Job contains the manifest, one operation, parameters, and an IAM role
- Tracks progress and can produce a detailed completion report

Common operations:

- Copy objects or change server-side encryption
- Restore archived objects
- Replace tags or ACLs
- Apply Object Lock retention or legal holds
- Invoke Lambda once per object
- Replicate existing objects with Batch Replication

Useful for billions of objects without writing custom orchestration.
