# 🚀 create-nest-mongo

A CLI script to quickly scaffold a NestJS project with:

- ✅ Mongoose (MongoDB) integration
- ✅ Auto-created module (controller, service, schema, DTOs)
- ✅ Pre-installed `class-validator` & `class-transformer`
- ✅ Structured file layout

---

## 📦 Features

- Automatically generates a NestJS project
- Adds MongoDB (Mongoose) setup
- Creates a module with:
  - Controller
  - Service
  - Schema
  - DTOs (`create-*.dto.ts`, `update-*.dto.ts`)
- Installs:
  - `@nestjs/mongoose`
  - `mongoose`
  - `class-validator`
  - `class-transformer`

---

## 🔧 Installation (One-time)

1. Clone or download this repo:

```bash
git clone https://github.com/<your-username>/nestjs-project-boilerplate-script.git
cd nestjs-project-boilerplate-script
```

2. Move the script globally (optional but recommended):

```bash
sudo mv create-nest-mongo.sh /usr/local/bin/create-nest-mongo
sudo chmod +x /usr/local/bin/create-nest-mongo
```

---

## 🚀 Usage

```bash
create-nest-mongo <project-name> <module-name>
```

**Example:**

```bash
create-nest-mongo user-api user
```

---

## 📂 Example Output Structure

```
user-api/
└── src/
    └── modules/
        └── user/
            ├── dto/
            │   ├── create-user.dto.ts
            │   └── update-user.dto.ts
            ├── user.controller.ts
            ├── user.module.ts
            ├── user.schema.ts
            └── user.service.ts
```

---

## ✅ Tip

If you want to edit this script later:

```bash
sudo nano /usr/local/bin/create-nest-mongo
```

---

## 📄 License

MIT License – Use freely, improve openly.

