# Real World Haskell exercises

The [Dublin Haskell Meetup](https://www.meetup.com/haskell-dublin-meetup) has recently been resurrected (Meetup.com was sending us emails warning that the group would be disbanded, so one member took the initiative to bring it back to life), and we've started going through the book [Real World Haskell](http://book.realworldhaskell.org/read), by Bryan O'Sullivan.

That book seems very well-regarded in the community, but it is a bit behind the times, not having seen an update since 2008. However, there is an [open project to update the tome](https://github.com/tssm/up-to-date-real-world-haskell), so I'm following along with that rather than directly from the original book, even though the updated version is incomplete (and also a bit stale).

This repo will contain exercises and maybe some thoughts on stuff I've learned (or misunderstood).

# Meetings so far

## 2021-10-22

* First meet of the new Haskell book club, over Zoom. About 6 or 7 people showed up, we introduced ourselves and the host shared some ideas and goals in doing this. Then we skimmed through the basic exercises in chapters 1 and 2 of the book.
    * One suggestion from the meeting was that it'd be cool if we could contribute some open source sooner or later. I'll add an [ideas file](./ideas.md) for some possible stuff we could do. Might be my ideas, but more likely it'll be stolen from whoever volunteers it at the meetings.
    * Next meeting: 2021-11-??, expecting to have finished chapters 3-5.

# Handy commands

* Updated something in `package.yaml`, or added a new module (including tests)? Don't forget to regenerate the cabal file:
  ```bash
  stack build
  ```
* Want to execute tests ridiculously fast, automatically whenever you save a file?
  ```bash
  # install / set up sensei
  stack install sensei                    # if you didn't already have it
  echo ":set -iapp -isrc -itest" > .ghci  # so ghci can find the test modules
  chmod go-w .ghci .                      # so ghci doesn't complain about exploitable permissions

  # magic
  stack exec sensei test/Spec.hs
  ```
* I'm using `hspec` for automatic test discovery, so `test/Spec.hs` just contains a weird pragma.
