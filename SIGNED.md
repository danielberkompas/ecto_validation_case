##### Signed by https://keybase.io/dberkom
```
-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAABCgAGBQJVTA7AAAoJEKU82t1CbYQMmyIQAIqj74Uq7XrTqc3TCaK1hCqh
FZPXPqgTGwlq+okkrTg5KU+9ZcT8Awdey3VTKc3soRUFZvzryBSmhSmewWTp/oqt
XJQjhyCMeCnctNxVFra/8sy+aCqCnMtQ2LSu+mxbjWmCy6jVIYw5Q0YWNN5AQL+U
o5oCTrvzvssf6M2uqgpP8Zx964ygetuElgLWiP4BAR3xVY1OdG7JWE2MLXgLvZQ1
sl9XWjv1b0J3xpQQqzKDqr2sU71VngDvrhLp+foW3k2p1suUYwdWzkxxycF505U8
Bvvbsp0LRlonMm+1+QNFc/UJ4aBTx6MGLD8765ix+o51IVUt1utKboD3+PvqPXtC
XwDK0R6Oiepy73fzmfdapsQo81SY0Uhro0u9HD0GgOSvb4QcGQ/rI9/RnZVZZ+51
/ZsGEr8MW6H6VwwieDkQ3Sqg37pbMukl0mgAEPEZu3s69PXusa18y+orVCcNczeh
Wf9LH+RMBK3KHUCJhfZPkly61A5dr79idbrt7YbSmADCKgBdEI9u5sON6fiybdQh
8dhQdY33bvuJY3+gZL0LxRZRcCHgDwWmfba3Jv4MPoKyxKAYQ2zfDb5u24CVA8rA
/lSJg/vzUQpg69j7bcWoqsWrZcvpfxwDydVZmpa02HCLY0t0bbVnv9pCMxM3kgib
YyIVsLBuoIY1BnrkR43h
=5mN1
-----END PGP SIGNATURE-----

```

<!-- END SIGNATURES -->

### Begin signed statement 

#### Expect

```
size  exec  file                            contents                                                        
            ./                                                                                              
34            .gitignore                    e78d9bbfe2af0501e32d75b6733c6649c36e0cc29b4366d2028388a053317cf4
717           .travis.yml                   341a7c78a099db29eebfb9ab9f5ae82191fe37a2398626478ee55715da14e11d
248           CHANGELOG.md                  8b7c69fec63a52bb99d456be04a16dd32a4374ceec1812a2f08d96f0720a1cfb
1083          LICENSE                       a24b375a609f6c84e82c1458fbb0383678e3f492ffb83912731fa5313831a7c9
544           NOTICE                        dfb8bc3077af9bfec9c2540c2cfdc4c66caa40e963b10aca07b193a3f5063e2d
1625          README.md                     bdf3b6994528980c84c31a654c8a5a2d83c1688784ee6c5325bd7f864ba86feb
              config/                                                                                       
1030            config.exs                  2d43b2f33a68081b675f8cedca5e74e5bdece4cd74258308326347b55ba85231
              lib/                                                                                          
                ecto/                                                                                       
4998              validation_case.ex        94079e70f34053aa503e0b903a63bf6f517d82b45377972344349f7ed34113c4
1028          mix.exs                       5f1832b7e93ce6cb07c59e5069138359760492318bbb4f9b9d61f1e69d7fdefc
273           mix.lock                      2413dd5f2defd794b9eb41d0e407dad51c5e491ec231abe13c6be5d114d81c4d
              script/                                                                                       
622   x         release                     3bf505bc77c52e4ff6618c63f5dc3cb176f636266abbf4aa9161d6222771663a
              test/                                                                                         
                ecto/                                                                                       
2175              validation_case_test.exs  2f4e8e18546bba57348feb35c802e9e8a300d36e0ab5cfb43cff025591bd9c20
                support/                                                                                    
283               post.exs                  d13dd878dfa4902481c6278cec28a96ab473577f504fd23cd0d4ca9dd3882978
351               user.exs                  87f314b44c17480114e107ea3bbb6ef9b835e71080c3958214eaa9b27a58181c
15              test_helper.exs             b086ec47f0c6c7aaeb4cffca5ae5243dd05e0dc96ab761ced93325d5315f4b12
```

#### Ignore

```
/SIGNED.md
```

#### Presets

```
git      # ignore .git and anything as described by .gitignore files
dropbox  # ignore .dropbox-cache and other Dropbox-related files    
kb       # ignore anything as described by .kbignore files          
```

<!-- summarize version = 0.0.9 -->

### End signed statement

<hr>

#### Notes

With keybase you can sign any directory's contents, whether it's a git repo,
source code distribution, or a personal documents folder. It aims to replace the drudgery of:

  1. comparing a zipped file to a detached statement
  2. downloading a public key
  3. confirming it is in fact the author's by reviewing public statements they've made, using it

All in one simple command:

```bash
keybase dir verify
```

There are lots of options, including assertions for automating your checks.

For more info, check out https://keybase.io/docs/command_line/code_signing