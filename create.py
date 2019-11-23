import sys
from githubbot import GithubBot


def main():

    repo_name = sys.argv[1]
    githubBot = GithubBot()
    githubBot.create(repo_name)


if __name__ == '__main__':
    main()
