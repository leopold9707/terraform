# Terraform 학습

Terraform 학습 과정 중 생성한 소스코드 등을 기록한 repository

## Tutorial

### Terraform installation on Centos7

GUI가 있는 경우 https://www.terraform.io/downloads.html 에서 다운 받을 수 있다. 아래는 서버 터미널에서 커맨드로 다운 받는 방법이다.

```
$ sudo yum install wget unzip 
$ sudo wget https://releases.hashicorp.com/terraform/0.12.2/terraform_0.12.2_linux_amd64.zip
$ sudo unzip ./terraform_0.12.2_linux_amd64.zip –d /usr/local/bin ##다운 받은 .zip 파일은 /usr/local/bin 아래 압축 해제 해준다.
$ terraform -v ##잘 설치 되었는지 확인한다.
```
