# tc-fiapeats-infra-db

Este projeto provisiona uma tabela DynamoDB na AWS utilizando Terraform que será utilizado no projeto fiapeats da fase 5, com o objetivo de armazenar e gerenciar informações relacionadas ao upload e download de vídeos de clientes.

---

📌 Finalidade

A tabela será usada em um fluxo que permite:

* Registrar o início e o fim do upload de vídeos
* Consultar o status do processamento
* Obter informações como URL do vídeo, data de envio e cliente relacionado
* Suportar o download dos vídeos via metadados armazenados

---

🧩 Exemplo de Item

```json
{
  "id": "4b8799b9-ee62-47cf-88bc-bcd7eeac042d",
  "EMAIL": "teste@gmail.com",
  "ID_USUARIO": "3s550l9fqaito48eb8tbu2msrt",
  "NOME_VIDEO": "Passaro.mov",
  "PATH_S3": "3s550l9fqaito48eb8tbu2msrt/Passaro.mov/Passaro.mov",
  "STATUS_PROCESSAMENTO": "PROCESSADO_COM_SUCESSO",
  "URL_DOWNLOAD": "url_bucket"
}
```
