import configparser
import sys
from githubbot import GithubBot

config = './config.ini'


def main():
    print(sys.argv)
    access_token = get_access_token()
    githubBot = GithubBot(access_token)
    githubBot.remove()


def get_access_token():
    config_parser = configparser.ConfigParser()
    config_parser.read(config)
    access_token = config_parser['AUTH']['token']


if __name__ == '__main__':
    main()
