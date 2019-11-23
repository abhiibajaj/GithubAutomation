import configparser
import sys
from githubbot import GithubBot

config = './config.ini'


def main():

    access_token = get_access_token()
    repo_name = sys.argv[1]
    githubBot = GithubBot(access_token)
    githubBot.create(repo_name)


def get_access_token():

    config_parser = configparser.ConfigParser()
    config_parser.read(config)
    access_token = config_parser['AUTH']['token']
    return access_token


if __name__ == '__main__':
    main()
