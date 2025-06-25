#!/bin/bash

# === INPUT ===
PROJECT_NAME=$1
MODULE_NAME=$2

if [ -z "$PROJECT_NAME" ] || [ -z "$MODULE_NAME" ]; then
  echo "Usage: ./create-nest-mongo.sh <project-name> <module-name>"
  exit 1
fi

# === CREATE PROJECT ===
nest new $PROJECT_NAME --skip-git --package-manager npm

cd $PROJECT_NAME

# === INSTALL DEPENDENCIES ===
npm install @nestjs/mongoose mongoose

# === CREATE MODULE ===
nest g module modules/$MODULE_NAME
nest g controller modules/$MODULE_NAME --flat
nest g service modules/$MODULE_NAME --flat

# === CREATE SCHEMA FILE ===
touch src/modules/$MODULE_NAME/$MODULE_NAME.schema.ts

# === CREATE DTO FOLDER + FILES ===
mkdir src/modules/$MODULE_NAME/dto
touch src/modules/$MODULE_NAME/dto/create-${MODULE_NAME}.dto.ts
touch src/modules/$MODULE_NAME/dto/update-${MODULE_NAME}.dto.ts

echo "✅ Project '$PROJECT_NAME' created with '$MODULE_NAME' module + Mongoose setup."

