#include <iostream>
#include <thread>
#include <chrono>

int main() {
    std::cout << "✅ Hello from C++ in Docker!" << std::endl;
    std::cout << "🚀 Container is running successfully." << std::endl;
    
    // Небольшая задержка для гарантии вывода в контейнере
    std::this_thread::sleep_for(std::chrono::milliseconds(100));
    return 0;
}