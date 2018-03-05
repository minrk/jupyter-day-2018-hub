upgrade:
	helm upgrade jupyterhub \
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

docker-pull:
	sh -c '\
		for inst in $$(gcloud compute instances list | grep jupyterday | awk "{print \$$1}"); do \
			echo $$inst; \
			gcloud compute ssh $$inst --zone=europe-west1-b -- docker pull minrk/jupyter-day-2018; \
	    done'

.PHONY: upgrade dind docker docker-push docker-pull
