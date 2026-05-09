# 1. Parámetro posicional: $args[0] es la primera palabra que escribas después del script
$MENSAJE_PERSONALIZADO = $args[0]

# Si no escribes nada, el script te avisará
if (-not $MENSAJE_PERSONALIZADO) {
    Write-Host "⚠️ Error: Debes escribir un mensaje entre comillas. Ejemplo: .\send_message.ps1 'Hola'" -ForegroundColor Red
    exit
}

# 2. Cargar configuración (Token)
$config = Get-Content ".telegram_bot/config.txt" | ConvertFrom-StringData
$TOKEN = $config.TOKEN
$ID = "6558622600"

# 3. URL y Envío
$URL = "https://api.telegram.org/bot$TOKEN/sendMessage"
$Cuerpo = @{
    chat_id = $ID
    text = $MENSAJE_PERSONALIZADO
}

Invoke-RestMethod -Uri $URL -Method Post -Body $Cuerpo
Write-Host "✅ Mensaje enviado: $MENSAJE_PERSONALIZADO"