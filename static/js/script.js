// Скрипт для подтверждения удаления записи
function confirmDelete() {
    return confirm("Вы уверены, что хотите удалить эту запись?");
}

// Скрипт для отображения текущего времени
function showCurrentTime() {
    const now = new Date();
    const time = now.toLocaleTimeString();
    document.getElementById('current-time').innerText = `Текущее время: ${time}`;
}

// Обновление времени каждую секунду
setInterval(showCurrentTime, 1000);
