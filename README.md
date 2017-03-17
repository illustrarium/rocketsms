# Rocketsms класс для rocketsms.by

Подставьте свои значения в переменные в файле класса

```Ruby
@username = "USERNAME" # обычно это ваш УНП
@password = "PASSWORD"
```
Создайте объект класса Rocketsms и отправьте сообщение методом send

```Ruby
sms = Rocketsms.new
sms = sms.send("375290000000", "Hello, dear!")
```
