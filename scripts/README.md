# kubeplugin.sh

Цей скрипт є плагіном для керування Kubernetes `kubectl`, який дозволяє отримувати статистику використання ресурсів або логи з Kubernetes кластера.

## Використання

```bash
./kubeplugin.sh <NAMESPACE> <COMMAND> <RESOURCE_TYPE>

<NAMESPACE>: Неймспейс, в якому потрібно отримати статистику або логи. Наприклад, kube-system.
<COMMAND>: Команда для виконання. Наприклад, get.
<RESOURCE_TYPE>: Тип ресурсу, для якого потрібно отримати статистику або логи. Наприклад, pods.
Вивід
Скрипт виводить статистику використання ресурсів або логи у форматі:

"Resource, Namespace, Name, CPU, Memory"

Приклад використання
./kubeplugin kube-system pods top

Вимоги
kubectl повинен бути встановлений і налаштований для доступу до Kubernetes кластера.


