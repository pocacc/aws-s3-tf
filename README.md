### Criação de Bucket S3 - ${{  values.bucket }}  ###

![](https://img.shields.io/github/stars/pocacc/aws-s3-tf.svg) ![](https://img.shields.io/github/forks/pocacc/aws-s3-tf.svg)  ![](https://img.shields.io/github/issues/pocacc/aws-s3-tf.svg)

A criação do recurso ${{  values.bucket }} foi autorizada por {{ values.email }}.

A seguir as configurações selecionadas durante o preenchimento do template no Backstage.

| Key | Value |
| ------ | ------ |
|email | [${{ values.email }}][PlGa] |
|bucket | [${{  values.bucket }}][PlGa] |
|force_destroy | [${{  values.force_destroy }}][PlGa] |
|acl | [${{  values.acl }}][PlGa] |
|region | [${{  values.region }}][PlGa] |
|role_to_assume  | [arn:aws:iam::859860534726:role/ic-openid-connect-git-role][PlGa] |
|role_session_name | [ic-github-openid-role][PlGa] |
|environment | [${{ values.environment }}][PlGa] |
|backend | [aws/${{ values.region }}/${{ values.environment }}/${{ values.bucket }}][PlGa] |

Para maiores informações, acesse o site **https://backstage.iccloudstudio.com/**
