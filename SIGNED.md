##### Signed by https://keybase.io/dberkom
```
-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iQIcBAABCgAGBQJVTA5BAAoJEKU82t1CbYQMX5wP/14Gh9aJgz69VMoxAl5dgIIH
gYstnq77a5S1nAn11tqhQpShhylXdrHZDh/JNuqG+hR1eg4ddrkH4ESwpW6kYS2p
PF6/9RGmg1sXccIFunkGEnpgGBgY51gEq5Igq3moqebqF/Tg3L43UWCqrg/+WLsI
wXYfi/6bihrBiG2o/hZuBmy3XGo3cCeJo/xZfkz6+qTeKGihuCsTVF6VxcznawEL
yv+caTJEnWSfjvvNJoeq+Neis2RX19Z3KvdpBTAPJgCYNVlumELZiMmWpLgh33/6
Z+Y82F57UXNAlacGcKkQBgytM/v1cQWlcj0gjVVO8H6lNjr2LRRbdI4Zg2vYsVLU
B6MjKQU6Mp1A9uqAqMCqAtlazuQeUqVT92XN5nqYMGQxZTPEoGyWoVuJDGTJfarU
u5Z4YIcQ3tGLfdPjDArwOYnsQE3NQG72gKkvRmD/Ss5q9FtocYd6BdnToDcgslrJ
36ugnZXTlwrfnPCJbHGWVRz2gk0hQWXLbu4gOgHxTByzQ2tieUn1tCm4jwu+sA15
awSgyjxqn99AGTtKKnMNksGMGj73eAIJPt9ACKXHHa6uEc9/uc4sN4gLKAzp5NpN
apePUkm8e7r2Mlw6/4yFyw0a1HC674ZiKEQa2CnI7HnRxoeGyVuuW0akuyVmSbDv
oBCP2mSjeXGXgRMKvqxe
=mF2T
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
153           CHANGELOG.md                  42e628018fccb4a446a68c506c2e9437df5eb0ab0071c89cf4248f2dc3a398d6
1083          LICENSE                       a24b375a609f6c84e82c1458fbb0383678e3f492ffb83912731fa5313831a7c9
544           NOTICE                        dfb8bc3077af9bfec9c2540c2cfdc4c66caa40e963b10aca07b193a3f5063e2d
1625          README.md                     bdf3b6994528980c84c31a654c8a5a2d83c1688784ee6c5325bd7f864ba86feb
              config/                                                                                       
1030            config.exs                  2d43b2f33a68081b675f8cedca5e74e5bdece4cd74258308326347b55ba85231
              lib/                                                                                          
                ecto/                                                                                       
4998              validation_case.ex        94079e70f34053aa503e0b903a63bf6f517d82b45377972344349f7ed34113c4
1028          mix.exs                       385cdfe1b24eed0061201227467ebde0fedee93889afe4b3da20a16fc4c5696a
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