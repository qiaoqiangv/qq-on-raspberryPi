from github import Github
g = Github("qiaoqiangv", "q295423")


for repo in g.get_user().get_repos():
    print repo.name
    repo.edit(has_wiki=False)

