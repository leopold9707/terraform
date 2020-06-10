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

### 오픈스택 위에 테라폼을 이용해 VM 생성 및 설정 

아래 레퍼런스에서 제공하는 튜토리얼을 따라 만든 소스코드이다.
reference : https://galaxyproject.github.io/training-material/topics/admin/tutorials/terraform/tutorial.html

```
$ git clone https://github.com/leopold9707/terraform.git
$ cd terraform/openstack/tutorial_hcl/
$ terraform init ##provider.tf에 있는 openstack provider를 보고 스스로 관련 모듈을 다운 받는다.
```

VM을 생성하고자 하는 오픈스택에 접속하여 로그인 후, 좌측 탭에 "API액세스"를 클릭하면, OpenStack RC File을 다운 받을 수 있다. 이를 준비해준다.

```
$ source example-openrc.sh ##위에서 다운 받은 OpenStack RC File
```

생성된 VM에 접속할 때 사용할 ssh private_key를 준비하고, 이와 맞는 public_key를 준비한다. public_key를 모른다면 아래와 같이 private_key를 통해 확인할 수 있다.

```
$ssh-keygen -y -f /path/to/private_key.pem
```

미리 준비한 public_key와 사용할 네트워크, 이미지 등에 맞춰 main.tf를 수정해준다.

```
$ vi main.tf
   ## edit public_key value
   ## edit VM spec (ex. flavor, network, OS image ..)
$ terraform apply
```

오픈스택에 접속하여 생성된 VM을 확인한다.

reference : https://galaxyproject.github.io/training-material/topics/admin/tutorials/terraform/tutorial.html
