msg?="Updated"

update:
	git add -A
	git commit -m ${msg}
	git push
