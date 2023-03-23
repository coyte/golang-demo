setup: 
	direnv allow .
	kubectl vsphere login --server=172.19.24.1 --insecure-skip-tls-verify -u=${KUBECTL_VSPHERE_USER}
	kubectl config use-context ${KUBECTL_CONTEXT}

create_tap: setup
	kubectl apply -f clusters/tap.yaml -n ${KUBECTL_CONTEXT}

create_tap_api: setup
	kubectl apply -f clusters/tap-api.yaml -n ${KUBECTL_CONTEXT}

create_management: setup
	kubectl apply -f clusters/management.yaml -n ${KUBECTL_CONTEXT}

create_test: setup
	kubectl apply -f clusters/test.yaml -n ${KUBECTL_CONTEXT}

delete_tap: setup
	kubectl delete -f clusters/tap.yaml -n ${KUBECTL_CONTEXT}

delete_tap_api: setup
	kubectl delete -f clusters/tap-api.yaml -n ${KUBECTL_CONTEXT}

delete_management: setup
	kubectl delete -f clusters/management.yaml -n ${KUBECTL_CONTEXT}

delete_test: setup
	kubectl delete -f clusters/test.yaml -n ${KUBECTL_CONTEXT}

login_supervisor:
	direnv allow .
	kubectl vsphere login --server=172.19.24.1 --insecure-skip-tls-verify -u=${KUBECTL_VSPHERE_USER}
	kubectl config use-context ${KUBECTL_CONTEXT}


login_tap:
	direnv allow .
	kubectl vsphere login --server=172.19.24.1 --insecure-skip-tls-verify -u=${KUBECTL_VSPHERE_USER} --tanzu-kubernetes-cluster-name vmlab-tap --tanzu-kubernetes-cluster-namespace ${KUBECTL_CONTEXT}

login_tap_api:
	direnv allow .
	kubectl vsphere login --server=172.19.24.1 --insecure-skip-tls-verify -u=${KUBECTL_VSPHERE_USER} --tanzu-kubernetes-cluster-name vmlab-tap --tanzu-kubernetes-cluster-namespace ${KUBECTL_CONTEXT}


login_management:
	direnv allow .
	kubectl vsphere login --server=172.19.24.1 --insecure-skip-tls-verify -u=${KUBECTL_VSPHERE_USER} --tanzu-kubernetes-cluster-name vmlab-management --tanzu-kubernetes-cluster-namespace ${KUBECTL_CONTEXT}

login_test:
	direnv allow .
	kubectl vsphere login --server=172.19.24.1 --insecure-skip-tls-verify -u=${KUBECTL_VSPHERE_USER} --tanzu-kubernetes-cluster-name vmlab-test --tanzu-kubernetes-cluster-namespace ${KUBECTL_CONTEXT}