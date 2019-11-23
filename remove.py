import sys
from githubbot import GithubBot


def main():

    repo_name = sys.argv[1]
    githubBot = GithubBot()
    githubBot.remove(repo_name)


if __name__ == '__main__':
    main()
