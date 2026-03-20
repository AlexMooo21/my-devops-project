# Devops/SRE Project
📌 Описание

DevOps пет-проект, демонстрирующий построение инфраструктуры из нескольких виртуальных машин с локальным DNS, мониторингом, алертингом и контейнеризацией Python-приложения.

Проект включает:

· Python-приложение registrator для регистрации пользователей в MySQL.

· Локальный DNS-сервер для резолвинга сервисов.

· GitLab Community Edition для управления кодом и версиями.

· Полноценный стек мониторинга (Prometheus + Grafana) с алертингом в Telegram.

· Контейнеризацию приложения с помощью Docker и docker-compose.

🏗 Архитектура проекта:

Проект состоит из нескольких виртуальных машин:

app-vb-1 — Python-приложение registrator + payload generator

gitlab-vb-1 — GitLab Community Edition (хранение кода)

dns-vb-1 — локальный DNS сервер (Bind)

prometheus-vb-1 — сбор метрик + alerting (telegram)

grafana-vb-1 — визуализация метрик

📷 Диаграмма архитектуры:
![Архитектура проекта](screenshots/maket2.png)


📂 Структура репозитория
mydevopspet/
│
├── app/                # Python приложение (registrator + payload generator)
├── dns/                # конфигурация DNS (Bind)
├── monitoring/         # Prometheus, exporters, alerting
├── grafana/            # dashboards и настройки Grafana
├── gitlab/             # конфигурация GitLab
├── docker/             # Dockerfile и docker-compose
├── screenshots/        # скриншоты проекта
└── README.md

⚙️ Технологии

Python 3

MySQL

GitLab CE

Bind DNS

Prometheus

Grafana

Node Exporter

Blackbox Exporter

Docker / Docker Compose

📊 Мониторинг

Реализовано:

Сбор метрик со всех виртуальных машин (Node Exporter)

Проверка доступности приложения (Blackbox Exporter)

Мониторинг DNS (Bind Exporter)

Визуализация в Grafana

Алертинг через Telegram-бота

📷 Примеры:

🐳 Контейнеризация

Приложение переведено в Docker-контейнеры:

registrator

payload generator

Используется docker-compose для запуска.

▶️ Запуск (Docker)
cd docker
docker-compose up -d

🎯 Цели проекта

Практика DevOps-навыков

Настройка мониторинга и алертинга

Работа с инфраструктурой из нескольких узлов

Контейнеризация приложений

📎 Итог

Проект демонстрирует базовые навыки DevOps-инженера:

работа с инфраструктурой

мониторинг

контейнеризация

организация сервисов

👤 Автор

DevOps Engineer (junior)
