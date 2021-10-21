# Real World Haskell exercises

The [Dublin Haskell Meetup](https://www.meetup.com/haskell-dublin-meetup) has recently been resurrected (Meetup.com was sending us emails warning that the group would be disbanded, so one member took the initiative to bring it back to life), and we've started going through the book [Real World Haskell](http://book.realworldhaskell.org/read), by Barry O'Sullivan.

That book seems very well-regarded in the community, but it is a bit behind the times, not having seen an update since 2008. However, there is an [open project to update the tome](https://github.com/tssm/up-to-date-real-world-haskell), so I'm following along with that rather than directly from the original book, even though the updated version is incomplete.

This repo will contain exercises and maybe some thoughts on stuff I've learned (or misunderstood).

# Handy commands

* Updated something in `package.yaml`, or added a new module (including tests)? Don't forget to regenerate the cabal file:
  ```
  stack build
  ```
* Want to execute tests ridiculously fast, automatically whenever you save a file?
  ```
  # install / set up sensei
  stack install sensei              # if you didn't already have it
  echo ":set -iapp -itest" > .ghci  # so ghci can find the test modules
  chmod go-w .ghci .                # so ghci doesn't complain about exploitable permissions

  # magic
  stack exec sensei test/Spec.hs
  ```
* I'm using `hspec` for automatic test discovery, so `test/Spec.hs` just contains a weird pragma.
