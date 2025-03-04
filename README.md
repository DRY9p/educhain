# Educhain Stages

![Ruby](https://img.shields.io/badge/Ruby-3.4.1-red.svg)
![Rails](https://img.shields.io/badge/Rails-8.0.1-red.svg)
![Tailwind](https://img.shields.io/badge/Tailwind-4.0-blue.svg)
![Bundler](https://img.shields.io/badge/Bundler-2.6.5-green.svg)

Учебный проект для освоения Rails и Tailwind CSS  
Educational project for learning Rails and Tailwind CSS

---

## Оглавление / Table of Contents
- [Educhain Stages](#educhain-stages)
  - [Оглавление / Table of Contents](#оглавление--table-of-contents)
  - [Требования / Requirements](#требования--requirements)
  - [Используемые гемы / Gems used (Summary)](#используемые-гемы--gems-used-summary)
  - [Установка / Installation](#установка--installation)
    - [1. Клонирование репозитория / Clone Repository](#1-клонирование-репозитория--clone-repository)
    - [2. Установка зависимостей / Install Dependencies](#2-установка-зависимостей--install-dependencies)
    - [3. Настройка БД / Database Setup](#3-настройка-бд--database-setup)
    - [4. Настройка Tailwind CSS v4 / Tailwind CSS Setup v4](#4-настройка-tailwind-css-v4--tailwind-css-setup-v4)
  - [Запуск / Runinig](#запуск--runinig)
    - [Режим разработки / Development Mode](#режим-разработки--development-mode)
  - [Проверка Tailwind / Tailwind Verification](#проверка-tailwind--tailwind-verification)
    - [1. Создайте тестовый контроллер / Create test controller:](#1-создайте-тестовый-контроллер--create-test-controller)
    - [2. Добавьте тестовый шаблон / Add test template:](#2-добавьте-тестовый-шаблон--add-test-template)
    - [3. Проверьте tailwind.application.css / Verify tailwind.application.css:](#3-проверьте-tailwindapplicationcss--verify-tailwindapplicationcss)

---

## Требования / Requirements
- **Ruby**: 3.4.1
- **Rails**: 8.0.1
- **Bundler**: 2.6.5
- **SQLite3**: 2.6.0 
---

## Используемые гемы / Gems used (Summary)
```ruby
# Ruby version
ruby (3.4.1)
# Rails
rails (8.0.1)
turbo-rails (2.0.11)
tailwindcss-rails (4.1.0)
```


## Установка / Installation

### 1. Клонирование репозитория / Clone Repository
```bash
git clone https://github.com/DRY9p/educhain.git && cd educhain
```

### 2. Установка зависимостей / Install Dependencies
```bash
bundle install
```

### 3. Настройка БД / Database Setup
```bash
rails db:create
rails db:migrate
```


### 4. Настройка Tailwind CSS v4 / Tailwind CSS Setup v4
[Install Tailwind CSS with Ruby on Rails](https://tailwindcss.com/docs/installation/framework-guides/ruby-on-rails)

 OR

```bash
rails new educhain --css tailwind && cd educhain
```

## Запуск / Runinig
### Режим разработки / Development Mode
```bash
./bin/dev
```

## Проверка Tailwind / Tailwind Verification
### 1. Создайте тестовый контроллер / Create test controller:
```bash
bin/rails generate controller Landing index
```
### 2. Добавьте тестовый шаблон / Add test template:
```html
<div class="bg-gray-100 p-8 text-center">
  <h1 class="text-3xl font-bold text-emerald-600">
    <%= "Tailwind работает! / Tailwind works! ✅" %>
  </h1>
</div>
```
### 3. Проверьте tailwind.application.css / Verify tailwind.application.css:
```css
/* app/assets/tailwind/application.css */
@import "tailwindcss";
```     