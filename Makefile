# docker

dkr_build:
	docker compose build

dkr_up:
	docker compose up

dkr_down:
	docker compose down

# k8s

k8s_apply: dkr_build
	kubectl apply -f ./infrastructure/k8s --force

k8s_delete:
	kubectl delete -f ./infrastructure/k8s

k8s_restart: k8s_delete k8s_apply

k8s_pods:
	kubectl get pods
