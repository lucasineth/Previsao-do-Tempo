## 📝 Descrição

O usuário digita o nome da cidade e recebe a previsão do tempo atual

```
=== Previsão do Tempo ==
Digite o nome da cidade: São Paulo

Clima em São Paulo:
Temperatura: 22.04°C     
Sensação térmica: 22.31°C
Descrição: Céu limpo     
Umidade: 77%
Vento: 2.57 m/s
```
---

## 📝 Funcionalidades

* O usuário informa o nome de uma cidade, e o programa exiber:
- Temperatura atual.
- Sensação térmica.
- Clima (ex: "céu limpo", "chuva")
- Umidade
- Velocidade do vento

---

## 🚀 Tecnologias Utilizadas

- Ruby 3.3+
- Gem HTTParty
- API Utilizada:
  - `OpenWeatherMap` para manipulação meteorológicas.

## 📝 Estrutura de Pastas

```
weather_cli/
├── weather_cli.rb
├── cli.rb
├── weather_fetcher.rb
└── weather_report.rb
```
---

## ▶️ Como Usar
* Execute o script:
Gem HTTParty:
```bash
  gem install httparty
```
```bash
    ruby weather_cli.rb

```
## Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues para sugestões ou relatórios de bugs, e envie um pull request para melhorias.
