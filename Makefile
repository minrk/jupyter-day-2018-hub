upgrade:
	helm upgrade --install jupyterhub \
	    jupyterhub/jupyterhub \
	    --version=v0.6 \
	    --namespace=default \
	    -f config.yml \
	    -f secret.yml

dind:
	kubectl apply -f dind.yml

docker:
	docker build -t minrk/jupyter-day-2018 docker

docker-push:
	docker push minrk/jupyter-day-2018

.PHONY: upgrade dind docker docker-push
