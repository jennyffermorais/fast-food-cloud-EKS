# Fast-Food Cloud Infrastructure

Este repositório contém a configuração de infraestrutura e recursos de aplicação para um sistema de fast food em ambiente de nuvem, utilizando Kubernetes e AWS EKS.

## Estrutura do Projeto

### `.github/workflows/`
Contém os arquivos de automação CI/CD utilizando GitHub Actions:

- **deploy-eks.yml**: Define o pipeline de deploy da infraestrutura no EKS.
- **terraform.yml**: Executa a configuração da infraestrutura utilizando Terraform.

### `kubernetes/App/`
Contém os arquivos YAML para provisionamento e gerenciamento da aplicação no Kubernetes:

- **app-configmap.yaml**: Configuração de ambiente para a aplicação.
- **app-deployment.yaml**: Define o deployment da aplicação no Kubernetes.
- **app-hpa.yaml**: Configura o Horizontal Pod Autoscaler (HPA) para ajustar automaticamente a quantidade de réplicas da aplicação.
- **app-service.yaml**: Serviço Kubernetes para expor a aplicação dentro do cluster.
- **ClusterRole.yaml**: Define permissões de acesso para a aplicação no cluster.
- **ClusterRoleBinding.yaml**: Liga o ClusterRole à aplicação para definir escopos de permissões.

### Arquivos de Terraform
Os arquivos abaixo definem a infraestrutura para provisionamento de um cluster AWS EKS:

- **backend.tf**: Configura o backend do Terraform para armazenar o estado da infraestrutura.
- **data.tf**: Define os dados necessários para criar os recursos.
- **eks-access-entry.tf**: Configura permissões e acesso ao cluster EKS.
- **eks-access-policy.tf**: Define políticas de acesso ao cluster EKS.
- **eks-cluster.tf**: Cria o cluster EKS na AWS.
- **eks-node.tf**: Cria os nós de trabalho do cluster EKS.
- **provider.tf**: Configura o provedor do Terraform para a AWS.
- **security-group.tf**: Define os grupos de segurança associados ao cluster.
- **vars.tf**: Contém as variáveis utilizadas no projeto.

## Requisitos

- **Docker Desktop** com Kubernetes habilitado.
- **Kubectl** instalado. [Instruções](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
- **AWS CLI** configurado com credenciais válidas. [Instruções](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html)

## Como Executar

### Passo 1: Preparar o Ambiente Kubernetes

1. **Configurar o Cluster EKS:**
   - Execute o pipeline do GitHub Actions ou rode manualmente o Terraform para provisionar o cluster:

   ```bash
   terraform init
   terraform apply
