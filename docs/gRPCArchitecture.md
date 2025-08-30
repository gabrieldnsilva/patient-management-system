``` mermaid
graph TD
subgraph "Comunicação Externa"
Frontend["💻 Frontend Cliente Web/Mobile"]
end

    subgraph "Microsserviços"
        PatientService["🚀 Patient Service <br> (REST API & gRPC Client)"]
        BillingService["💰 Billing Service <br> (gRPC Server)"]
        AppointmentService["📅 Appointment Service <br> (gRPC Client)"]
    end

    subgraph "Contrato da API"
        ProtoFile("📄 billing_service.proto")
    end

    Frontend --  Requisição REST (JSON) --> PatientService
    PatientService -- Chamada gRPC (Protobuf) --> BillingService
    AppointmentService -- Chamada gRPC (Protobuf) --> BillingService
    
    ProtoFile -.->|Define o Contrato| BillingService
    ProtoFile -.->|Define o Contrato| PatientService
    ProtoFile -.->|Define o Contrato| AppointmentService

    style Frontend fill:#f9f,stroke:#333,stroke-width:2px
    style PatientService fill:#bbf,stroke:#333,stroke-width:2px
    style BillingService fill:#9f9,stroke:#333,stroke-width:2px
    style AppointmentService fill:#bbf,stroke:#333,stroke-width:2px
    style ProtoFile fill:#lightgrey,stroke:#333,stroke-width:2px,stroke-dasharray: 5 5
```