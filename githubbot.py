from github import Github


class GithubBot:

    def __init__(self, access_token):

        githubToken = Github(access_token)
        self.user = githubToken.get_user()

    def create(self, repo_name):

        self.user.create_repo(repo_name)

    def remove(self, repo_name):

        try:
            repo = self.user.get_repo(repo_name)
            repo.delete()
        except Exception as e:
            print("This repo does not exist")
