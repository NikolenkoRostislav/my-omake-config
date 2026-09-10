glog:
	git log --oneline --all --graph

gsave:
	git add .
	git commit -m "$(MESSAGE)"
	git push

gsave-new:
	git add .
	git commit -m "$(MESSAGE)"
	git push -u origin "$(NEW_BRANCH)"

gnew-branch:
	git switch "$(SOURCE_BRANCH)"
	git pull
	git switch -c "$(NEW_BRANCH)"

drestart:
	docker compose down
	docker compose up --build -d

conv:
	soffice --headless --convert-to pdf "$(NAME)"

work:
	cd /d D:\Work && \
	cd "$(PROJECT)" && \
	code .