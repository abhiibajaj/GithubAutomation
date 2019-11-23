from github import Github
import configparser


config = './config.ini'


class GithubBot:

    def __init__(self):
        access_token = self.get_access_token()
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

    def get_access_token(self):

        config_parser = configparser.ConfigParser()
        config_parser.read(config)
        access_token = config_parser['AUTH']['token']
        return access_token
