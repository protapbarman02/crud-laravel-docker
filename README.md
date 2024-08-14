# Laravel Docker Setup Guide

## 1. Prerequisites

Ensure you have the following installed on your system:

- **Docker**: [Install Docker](https://docs.docker.com/get-docker/)

- **Docker Compose**: Bundled with Docker Desktop.

- **Git**: [Install Git](https://github.com/git-for-windows/git/releases/download/v2.46.0.windows.1/Git-2.46.0-64-bit.exe)

- **Chocolatey**: 
  - **Windows**: Install Chocolatey

```bash
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

- **Make**:
  - **Windows**: Install via Chocolatey
  
```bash
    choco install make
``` 

## 2. Cloning the Repository

Start by cloning your Laravel project from the Git repository:

```bash
git clone https://github.com/your-username/crud-laravel-docker.git
cd crud-laravel-docker
```

## 2. Running the setup

```bash
make setup
```

## URLs and Credentials to Access Services

### PHP Application
- **URL:** [http://localhost:8000](http://localhost:8000)

### phpMyAdmin
- **URL:** [http://localhost:8001](http://localhost:8001)
- **MySQL Server:**
  - **Host:** `mysql_db`
  - **Username:** `admin`
  - **Password:** `admin`
  - **Database:** `crud_laravel`

### pgAdmin
- **URL:** [http://localhost:8002](http://localhost:8002)
- **Login:**
  - **Email:** `admin@admin.com`
  - **Password:** `admin`
- **PostgreSQL Server:**
  - **Host:** `postgres_db`
  - **Username:** `admin`
  - **Password:** `admin`
  - **Database:** `crud_laravel`
