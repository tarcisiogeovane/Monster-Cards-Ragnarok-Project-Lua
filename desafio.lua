--[[

Nome da criatura
Descrição
Nível
Itens
Atributos
    Ataque
    Defesa
    Vida
    Velocidade
    Inteligência
    
]]--

--Habilitar UTF-8 no terminal
os.execute("chcp 65001")

-- Criatura
local monsterName = "BAPHOMET"
local description = "Um demônio imponente com corpo humanoide coberto de pelos negros."
local emoji = "🐐"
local item = "Foice e Chifres Majestosos"
local level = "81"

-- Atributos
local attackAttribute = 10
local defenseAttribute = 10
local lifeAttribute = 10
local speedAttribute = 5
local intelligenceAttribute = 4

-- função que recebe um atributo e nos retorna um barra de progresso em string
local function getProgressBar(attribute)
    local fullChar = "⬜"
    local emptyChar = "⬛"

    local result = ""
    for i = 1, 10, 1 do
        if i <= attribute then
            -- quadradinho cheio
            result = result .. fullChar
        else
            -- quadradinho vazio
            result = result .. emptyChar
        end
    end
    return result
end

-- Cartão
print("===================================================================")
print("| ")
print("| " .. monsterName)
print("| " .. description)
print("| ")
print("| Nível: " .. level)
print("| Itens: " .. item)
print("| Emoji Favorito: " .. emoji)
print("| ")
print("| Atributos")
print("|    Ataque:       " .. getProgressBar(attackAttribute))
print("|    Defesa:       " .. getProgressBar(defenseAttribute))
print("|    Vida:         " .. getProgressBar(lifeAttribute))
print("|    Velocidade:   " .. getProgressBar(speedAttribute))
print("|    Inteligência: " .. getProgressBar(intelligenceAttribute))
print("| ")
print("===================================================================")