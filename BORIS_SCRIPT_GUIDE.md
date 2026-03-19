# Шпаргалка: запуск автоскрипта Wan 2.2 Animate (19-й подшаблон)

## 1. Запустить новый под
Дождаться статуса **Running / Ready**.

## 2. Открыть Web Terminal

## 3. Клонировать репозиторий

git clone https://github.com/lenivez/wan22-animate-Boris-autoinstall

## 4. Скопировать скрипты в /workspace

cp /workspace/wan22-animate-Boris-autoinstall/install_models.sh /workspace/
cp /workspace/wan22-animate-Boris-autoinstall/startup.sh /workspace/

## 5. Сделать файлы исполняемыми

chmod +x /workspace/install_models.sh
chmod +x /workspace/startup.sh

## 6. Запустить установку моделей

bash /workspace/startup.sh

## 7. Открыть ComfyUI

Перейти на порт **3000** → ComfyUI Web UI.

Готово! Все модели Wan 2.2 Animate будут установлены автоматически.
