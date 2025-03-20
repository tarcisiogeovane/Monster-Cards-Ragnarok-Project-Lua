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
local emoji = "🐐"
local description = "Um demônio imponente com corpo humanoide coberto de pelos negros."
local level = "81"
local race = "Demônio"
local property = "Sombrio 3"
local size = "Grande"
local item = "Chifres Majestosos e Foice"


-- Atributos
local strAttribute = 7
local agiAttribute = 7
local vitAttribute = 2
local intAttribute = 5
local dexAttribute = 10
local lukAttribute = 5

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
print("| " .. monsterName .. emoji)
print("| " .. description)
print("| ")
print("| Nível: " .. level)
print("| Nível: " .. race)
print("| Nível: " .. property)
print("| Nível: " .. size)
print("| Itens: " .. item)
print("| ")
print("| Atributos")
print("|    Força:       " .. getProgressBar(strAttribute))
print("|    Agilidade:   " .. getProgressBar(agiAttribute))
print("|    Vitalidade:  " .. getProgressBar(vitAttribute))
print("|    Inteligência:" .. getProgressBar(intAttribute))
print("|    Destreza:    " .. getProgressBar(dexAttribute))
print("|    Sorte:       " .. getProgressBar(lukAttribute))
print("| ")
print("===================================================================")