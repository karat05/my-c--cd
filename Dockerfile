# ---- Этап 1: Сборка ----
FROM gcc:13-bookworm AS builder
WORKDIR /app
COPY src ./src
RUN g++ -o my-cpp-app src/main.cpp -std=c++17 -O2 -Wall

# ---- Этап 2: Запуск (используем тот же базовый образ!) ----
FROM gcc:13-bookworm
WORKDIR /app
COPY --from=builder /app/my-cpp-app .
CMD ["./my-cpp-app"]