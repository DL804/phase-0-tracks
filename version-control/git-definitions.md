# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control? Why is it useful?
Version control protects programs by tracking the history of changes/edits made to files by saving different versions of a file. It's kind of like a "track changes" plus backup system. It is useful so that different developers can work on the samge program without losing any important steps, files or code along the way. 

* What is a branch and why would you use one?
A branch is a way to copy a master file without affecting the master file. The branch could then be merged with the master file (or another file) later on to combine code between the branch and master. Branches are an important part of version control. You would use one to preserve files and stages of code and avoid confusion that would happen if everyone was working in the same file at once.

* What is a commit? What makes a good commit message?
A commit is a save point in git/version control. A good commit message clearly explains why/what was changed/edited for the save point. 

* What is a merge conflict?
A merge conflict happens when the corresponding parts of the file have contradicting lines of code for the respective branches that are being merged--in other words when two people try to make a different change in the same part of the same file and then try to merge the two files. Git helps point out the conflict by providing a conflict marker message in the files so that the developer(s) can manually fix the conflict. 