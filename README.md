# Terraform Azure VM Module

## Deskripsi

Modul ini digunakan untuk membuat storage account di Azure. Modul ini menyediakan konfigurasi dasar untuk tipe storage account.

## Prerequisites

- Terraform v1.5 lebih
- Akun Microsoft Azure, dengan akses yang dibutuhkan
- Azure CLI atau Azure Powershell untuk autentikasi

## Struktur Modul

```
.
|--- main.tf
|--- variables.tf
|--- outputs.tf
|--- README.md
```

## Variable
Berikut adalah variable yang dapat dikonfigurasi dalam modul ini :

| Nama Variable             | Tipe   | Deskripsi            | Default           |
|---------------------------|--------|----------------------|-------------------|
| `storage_account_name`    | string | Nama Storage Account | -                 |
| `location`                | string | Lokasi VM            | "East US"         |
| `resource_group_name`     | string | Nama Resource Group  | -                 |
| `account_tier`            | string | Tier Storage Account | "Standard"        |
| `account_replication_type | string | Tipe Replikasi       | "LRS"             |
| `container_name`          | string | Nama Container       | -                 |
| `container_access_type`   | string | Akses tipe container | "blob"          |

## Contoh Penggunaan

Berikut adalah contoh penggunaan module ini

```hcl
module "azure_blob_storage" {
  source                   = "github.com/dxh30/terraform-azurerm-storage-account"
  storage_account_name     = "contoh"
  resource_group_name      = "contoh-rg"
  location                 = "East US"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  container_name           = "example-container"
  container_access_type    = "blob"

  tags = {
    environment = "development"
  }
}

```
