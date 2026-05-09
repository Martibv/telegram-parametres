# Tasca: Missatges de Telegram amb Paràmetres

Aquest script permet enviar missatges a Telegram passant el text directament des de la terminal com a paràmetre posicional.

## Funcionament
S'utilitza la variable especial `$args[0]` de PowerShell per capturar el primer text que s'escriu després del nom de l'script.

## Com executar-ho:
Obrir la terminal i escriure:
`.\send_message.ps1 "Aquí el teu missatge personalitzat"`
