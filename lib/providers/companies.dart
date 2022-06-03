import 'package:flutter/cupertino.dart';
import 'package:job_apply/models/companies.dart';

class CompanyData extends ChangeNotifier {
  Company findByID(companyID) {
    return companies.firstWhere((company) => company.id == companyID);
  }

  List companies = [
    Company(
      companyID: 1,
      name: 'Metaverse | Facebook',
      description:
          'Meta Platforms, Inc., doing business as Meta and formerly known as Facebook, Inc., and TheFacebook, Inc., is an American multinational technology conglomerate based in Menlo Park, California. The company is the parent organization of Facebook, Instagram, and WhatsApp, among other subsidiaries',
      headquaters: 'Menlo Park, California, United States',
      imgUrl:
          'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAHcAAAApCAMAAAA4Y0Y/AAAAbFBMVEVIZ6r///9FZan5+vw1WqQ6XaZBYqg9X6cyWKMtVaLw8ffq7fTl6PLK0eNnfrYpU6FddrK/x95XcrCYpsuHmMORoMjX3OrQ1ubFzOG3wNrd4e2os9JRba2hrc+Bk8Gxu9d2irwcTJ4ORpxuhLlApouHAAADVklEQVRYhe2V2bKjOAyGwXsMwSwBwpKQdN7/HVu/WPp0T5LD1HTV3EQXgLGsz5IlOYo+8pGPfOQ/ivg3unuVv1fUZhx3GnPK7FNUpPgeLKKjjOP4tMegSb1M1R5s76W3b1Wcj+O9XEuKqduheCBXvH6nYer4f+HagmxV97Dr3P4iVx/JVr4zSf8e1x7ALbUlslFIV2Mt+y6sck7z5/Y1c0lPr+Exm9KyRMHSxiVj9plPZTelZKubuky4uk2bOlymabCRcI+uSfszHbuNhpa+rk7M3B9Vkx5P7LUxF0zVjm27jJY0XeY2rj1NU3f9J1hk8SqZ7vld0Mu7yDTrf7UkXtxb5vYtj1ryxp6WKZ+Ty+q8jI5q4YoRwycN5AvXFMsHrUicWrE+XPmFYjsrG/+SyZrbNpAiUsU2OquZ65pXhZIXXQInu05gwZBdAUgODKuyrKoOOIdHCAO9Ruamt0fHO3WYKrIbAjXpHP/qrEYTygK4Dlaap2kobEB0RuUQsnMQ9gHuHXuvlRDGlgjc3dqArSuOmxEBsb4hin0QxnBcsLFKCT6W6Q4u4PH4olSWOrJYVlNIHHPhAieiwD6aYRguZGTgyQPlUwUI3KEUjBxrH2eIwEbbH6SdIirVq2b5lXv6jXvggPw6w4WL+uUmVyFEF7LLyWAQAraIjYILb5PwAvuG6zaunCW+bNzqK5fTx4KLa21cuSksX1/1wYXLHgyabifm4mdGS4RBuhROkBjDdRSTCwohvKIYzrSLQLkoHX7dqO1gowWfL7SleX++XFGyDJwxSYA/iTgEk2lEzCitDzYTzO3ugctvVJJT/Y5QtVwCqQ4aSX7ifGYrxYtrc+3PCvrxfCcmzkh++7i/T/hqi2MaN0v9Stai0cBLWJXaXcJL+LHUb+AafB7plbu2EJ8y97HmUrS1EModcOd2RbGhvR7XmYpOqJTxNrX0KxyS1E8jbQvvJe4jkwPQR633vYrMWMAr2ZZCVRwKmU7CeO+nDMO2hBuqxrdsHrh6jOiwxBfUGF1CVmykBzI+PC8lq/V8YQkV5aMSNIai0HbMS4PToUeel8LRbUG6xqgxF2p2gqbKch2QqTEfZ2t6tgrj39/sf3Zwsf0Q4re5r4M/Zr6FfOQjH/nIfvkJaaIsEa/B1HwAAAAASUVORK5CYII=',
      founded: 'February 2004, Cambridge, Massachusetts, United States',
      companyCategory: 1,
    ),
    Company(
      companyID: 2,
      name: 'Google LLC',
      description:
          'Google LLC is an American multinational technology company that focuses on artificial intelligence, search engine, online advertising, cloud computing, computer software, quantum computing, e-commerce, and consumer electronics',
      headquaters: 'Mountain View, California, United States',
      imgUrl:
          'data:image/png;base64,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',
      founded: '4 September 1998, Menlo Park, California, United States',
      companyCategory: 1,
    ),
    Company(
      companyID: 3,
      name: 'LinkedIn Corporation',
      description:
          'LinkedIn is an American business and employment-oriented online service that operates via websites and mobile apps. Launched on May 5, 2003, the platform is primarily used for professional networking and career development, and allows job seekers to post their CVs and employers to post jobs',
      headquaters: 'Sunnyvale, California, United States',
      imgUrl:
          'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGQAAABkCAMAAABHPGVmAAAAaVBMVEUAd7X///8AcLEEebb7/f4Debb9/v79/v8DeLY8l8Y7lsYAbbCcyuKlz+WQxN+Lwd0KfbiDvdvl8fcAc7O+3OwgiL6x1ehFnMlytNZqsNQZhLzF4O7w9/tSo81gqtGp0ebc7PUsjsJ8udngaOvIAAADg0lEQVRoge2abZeqIBCAGV7EjXItKjc1y/7/j7xD7m5AWHdD+uScs3s8kDzOIMwMDoGrSJ4lEC6H0ckVkUEiyeQPBC+ar+pjcqm+GsQMEAntUSuaQJQ+toZC8F+7U4KJBMKE6ltUwkAqJUgiEapCAJGwpSwVgxBGtyAJh4NKCVEH4AStRZNZC+1F0V5orgXN00FyukBzZekh2XsgbzFXCMIGSQlhTCsjegrMCEQQVXfF8rOrFYm3YxjCdFnw6zbdFkJHr6AgROjdGYAbATjXOlaXEISRcgN88GEZh3NJIuclBBF0BfzXr3EoYve1ACTXPViuOAO+izRYAMLUxVLEqBK7RQcggp48yHJ6SG5cjAWRsI/0A0FN9g6Ew2p6TZhae+a6pDDXwn67UKt++rcL3+Gts072sW4gDOn5L4VjRBa7rwT3LkarDMNvmeEf8EV0tDSyC9O++dZku4uPyEb8CdO6KrbNtvjQOt5rjXnGnGGkrKmibALfP+7jBQ6fs0lCvnHIn4Tlj2KBsTkJX4cGYgLH1yiD8n+A/LcgACevrHe7ujRXQYXCEFHaIsLNZjgMnMrjstm0nLebZnXodSi6Cbvfz3Zzk3Y97I/ozOxmE2Dkql5vnCS0OQbe+WAgoZbOjcUPpLBbeU0I7dprZi4xlZYyM8ENNP3d6h2DcPkj/Ab5vDVjkllrgg/DpfNA+HN59D3DKMTahW3ILbxoa3Ru/D75x59Uni6vQ3hZOL7N8j9+ePMqRMLmACNnGHce6FUItrcgA4ThCdwU9HUIjDLuVImAjB/4+EFnjCZXba6xv/SU8oLOOEhmvQgu5GRPShQER25Pl667nFrXeBmc7ZUSA8FxLyU1mSWtTw7Fm5S4ia/Ud5KsnVtM34dlrwiIxNkV31ZhhG1sXTh01sy/DkG7W55SqC9npcLXJBBvHEzPLFU4rCeBgBeHs7MDKaaA4A5ZWggvdXKzs5chGTSOn2XKTZlX02jiJnnGOU8O8ZO8u146CWTpQdYzZIbMkBkyQ2bIDJkhA+QmDsRqDkCs3tXTqH4FtiyDxx6BkMiW/ZO4K6eH/eom+27oy2nnNB+8DPfo9j5JgswBk/PVnj1sfnzTKMScPVpf7fMnzU97JzqDfCxvhMxfsf8Ake8pX3hLIUbqkhJtSkpSF8ccTXGMKSXqk5f5vKVg6Xpkkbz06j1FZJC6HO4fbRVnSvd35FUAAAAASUVORK5CYII=',
      founded: '2002, Mountain View, California, United States',
      companyCategory: 6,
    ),
    Company(
      companyID: 4,
      name: 'Airbnb',
      description:
          'Airbnb, Inc. is an American company that operates an online marketplace for lodging, primarily homestays for vacation rentals, and tourism activities. Based in San Francisco, California, the platform is accessible via website and mobile app',
      headquaters: 'San Francisco, California, United States',
      imgUrl:
          'data:image/png;base64,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',
      founded: 'August 2008, San Francisco, California, United States',
      companyCategory: 5,
    ),
    Company(
      companyID: 5,
      name: 'Amazon',
      description:
          'Amazon, Inc. is an American multinational technology company which focuses on e-commerce, cloud computing, digital streaming, and artificial intelligence. It has been referred to as "one of the most influential economic and cultural forces in the world", and is one of the world\'s most valuable brands',
      headquaters: 'Seattle, Washington, United States',
      imgUrl:
          'data:image/jpeg;base64,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',
      founded: '5 July 1994, Bellevue, Washington, United States',
      companyCategory: 3,
    ),
    Company(
      companyID: 6,
      name: 'Microsoft Corporation',
      description:
          'Microsoft Corporation is an American multinational technology corporation which produces computer software, consumer electronics, personal computers, and related services',
      headquaters: 'Redmond, Washington, United States',
      imgUrl:
          'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAHcAAABFCAMAAABHVYkeAAAApVBMVEX////yUCJ/ugABpO//uQFkZGRhYWH/twBnZ2dsbGypqamUlJT39/f97Or09PTa2trxOACl02rs7Ozh4eHS0tKDg4NycnLw9upxtAD8tazzWjCKiorxRAD/z8DW7MYosvb/wjYPqvEAoO+e2P3/0WX/xFVgvPP/y2DJycmVxVW2tragoKB6enr/9vXwKgD8r6SLwEVXV1fh89X/13e14f7/3I//04EQKcMLAAACEUlEQVRoge2T624bIRBGSRsm3AIJl23SdZs6aRvC0suml/d/tA6w9j9LK7m1Gokj2XhXaA4zfCak0+l0Op1Op9PpvEAuF7682XEa7+aq8vXb003j+2m8b88qm9vrV42nl+e13h3rFSLVVQnhSRrVmlKRwnisd+bUtlpMkDyv6iMPzrlpZcsHvDDw2nAYuCDKrqmkucQ5wZHeMXNcHJXojQnn7Cc5aSdcmhSJUgo8i0pyMrhJyCkSOw05pZFPYtWlnG0qV7fXN1W7/I9AJvCETNzjnCXTZKI8gPEQGNOBZlwsyWzMiUTGwkCFYcPAOX5w8wreLVw+v288L/1qJonik6Po5doAZktpz7JVCV+hTeoSI00Yt0QF6jTHR0HNujnfNbYPPz40Hps3lC4juOZVSz0PeOsjLx3lrBjHaZtyCsxfXLwr73f7unL/8PHivHDxaec1kEKuZdErwTZvLFkrN4jfLgB4Q0sAPU3Hec/3XjKUTJtdv3HvlcyV9IbyzIOlGGPMsf9r3sRxoM2rLR2iS656PWTjJESbrBsCyTTZyDOp3sSSWZXnA94ZvRawEzMLMlKNnQHMzs+l7cQA8Dh2BsDWLU4bssXt6LWcwqo8H/Dacp0WT66sJro8KGMwt7Y2g79LcWtaeJ2pw7XlnTbrBn3A+8/Z3u+9jRN5Py/8/PXY+H0ab6fT6XQ6nU6n0/nP+AMktzYc02hPDAAAAABJRU5ErkJggg==',
      founded: '4 April 1975, Albuquerque, New Mexico, United States',
      companyCategory: 1,
    ),
    Company(
      companyID: 7,
      name: 'Andela',
      description:
          'Andela is a global job placement network for software developers. Andela focuses on sustainable careers, connecting technologists with long-term engagements, access to international roles, competitive compensation, and career coaching through the Andela Learning Community',
      headquaters: ' New York, New York, United States',
      imgUrl:
          'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAHcAAAAkCAMAAACE/VXhAAAAdVBMVEX///8TISgAAADl5uYKHCM6QUY9RUkAAA4AAAsAERsAABEAAxIAExwADRi9v8CAgoQAGCC2uLmKjI7MzMyRlJWtra5SV1vz8/P5+fnr7OzFxsfZ2tsAAAafoqN5e3zR0tNhZmlucnUwOT4mLzUeKC9JT1JbXmE/UmSAAAADzklEQVRYhe2W2ZbbIAyGsUK84njFxguO9/d/xLJ4i5POtJnp6UX7XyTgA3xISAKE/usrKqrnb+z22ayE0xfzflkVn6A/f7w3Flw+pvbguTAX72IpN0J8Pa3ZeL7xIbdoARtCIcTvgtHNOnPFutaH3BiIgPaj+PFw9Ca3gmcuGvDPuZHjSVtJ0EubMZjvHfPlFdf8KbeawFDy+aR8LchN/se5AYQaa9hlQ5amY7/h7N/iNouxQsBu9t45pl3ZZFlHNx/cmQjVoG3KjZjOU5cUG/ceZFlQPnIjsUazWVPtWNIiZG09PO52DHArqgzqRHTyqDOAohbAJ8D1gACye1GSdskjZmZJRT0w852bECMp7j0Yi/Gpv1soPvF6767BlUNN5T/GIDo0crFPr3N0mx0DVLbP0CocMTTXj/U0Mm7cCuAuOgWES2UJnJVTq9HmetiGvTqau7VqtmGtXCeCwFMfeqyiIK1rfQLcV9wOL0sTi6/cwNHe3rJq47qzNo6EZy4FPTb2Xapd5NHFV36qbGiXU1Xne1krjy4jmhsDqG9zCMkDF5a5qBj8ExdFyYI5cSNXelTQl2PW8cyta6ZkgoRpLlsqf/vAxR5QtKkBHz9w9e6nAZ+5luQKb9+O3NZOWa7EWP6YR9QcjJVLiOeanB0Rl2CwfXzkshQCxp/sVVxL5P2R23vpcbGNmweQCtzKtTp+R0+6pdkhgSlk+Ss/Sy6rDSs6cgeZj8/cFBomY3Lzc+jXbvBQUsoZLOdgbwed5r201zb89MidQvKCO4EadOCqsni4/fJMF86Nm4JdfMAdcTgfuSJ9tmAJVm7n6s00pH6MZ2utrJVLTvEMWCfkyjtxRTrr8rFwSzCspeRE7cLNAZuvuQa5rnNP+cvA0PYGjk6YA9eJVaUl3TpXVqgrxhYX8VDEsuQprhyjhszhEoR7vfIa2R9X7G6vg8MpR/dpwqJARDsfUY/IOY1t2IHEitsblq273jAABPp8K7l3p2OoNCcsXCTJ3NsLsojr+NBd6zOFkADgSwTYhgurastyKoZY0dcuiIaIO+LBPAwJ1BDnDFXYCnHogDKkr2HORYxgB+DKYheDnavNbaAwk/va7qP9aXjLxkl4lmWjeA5EnArxCJW6IV2edMM4R4iV5S2ShYnxbBxafZCRHFQhOo2zcGBhDjFbonW3MKfbPYjhK0/aXxGH9ZFhl916Kbjji2LyzVqfsOJ9ZeoGgfTzad+g+1U5O2x67eLunVfdW4o8efuN6pSvf97FB+mX+xde7e/q0or0q2P2+cjvVlEmf4H6L+gHwRdCaXGY3ZYAAAAASUVORK5CYII=',
      founded: '21 May 2014',
      companyCategory: 4,
    ),
    Company(
      companyID: 8,
      name: 'Twitter',
      description:
          'Twitter, Inc. is an American communications company based in San Francisco, California. The company operates the microblogging and social networking service Twitter. It previously operated the Vine short video app and Periscope livestreaming service.',
      headquaters: 'San Francisco, California, United States',
      imgUrl:
          'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAHcAAABhCAMAAADbaM4+AAAAY1BMVEUdofL///8AnfIAm/EAmfESn/L7/v/z+v7v+P74/P+l1fmw2vrP6PxouvVdtvXU6vyTzfgqpvPH5fs4qvPk8v3A4ft/xPeGx/eczPjb7/1NsfS23fp1wPab0fii0PhHrvQAlPFtqjD7AAAFGElEQVRogb2a6barKgyAEcR5Qhy2Q+t5/6e8Um2rAmqo3vzYq2sv8ZMASUiCrCvFbbrg+fcMy8I/eBJdxvTzits2IZhiTGyUBMX/wS0yTjBaCMUozpWPht5lXDdDBEmCSRJJj0YJd5bcowXZk5wTKmPFpEnlLh908oTYobXkxqkp1cmwmiqE8ObzYBG04/dxd8lNCfMMsTHWUsWUUTlBu54JreDAWnJjjF96h2OHXawgd270aBl9aQW3/pJbjN+FWxNwothQGy5F4+Gi8+95p83cQHw0juHY6hC7EvK0VtxpjeDgEIbF/XvgxPXY/P8EpuqC6neyCpu8B/oTN3oPxy1oV8cw7KxOP0+Kidt99iQemh3ORvKjrbwSUosxbl7zf+Gs5+d3mShTW9Wfp8tLy02Dno1eo3qvb7388PlkH0sKmS2rq4QRPIKoOMITt1opjPTuAXGSDKJmKuT1g3390ZqLMJf9iCz+AJnvh89ejkCh59fHZcfcBrSZPzJNSdpXMxgPh/4JaDPmF8+7FuleQXF1sMoVfL4UvRdw4uaqhzALd7kJmEvZxzi87aTqHZTwUo91wNsKt18NTlwnUR+JkdzpuD4HzhdXi9GzP3pojyLhodpku0od7WDr5eiZ2+wMIKxOFW4KyiUPBdfSKHr+VNo+pCjc5yAswpmKm+8fxjEKH7J0Heu2QD0rucdvoZjwOIi8j8r348iz3PTMW/AYE7bVo0sLz7cCYGilXN/TERod49GRzvgAPEdYw3Ug7xEuDXh8SajmWsXOdeMCIaWGO+7pO8F2KnGdYDJJJWyHwoQUEtdqSd2I8xGx28gUeTI3GYO8NssLp0ju4iLuy1zhwinBiCfxXViaWDL3OamXIti9AyJrdzRzy1tP0MQNFNwCagQMuJGC6wB9C1w22/ltN0ChvxF3cFTc5m5Fb7bVIq9yM7dTcyOT4B8g1FNzgVd3MLa1NNx7jxLe3vO+fjC41RltsxcL/xvfuMTDNgBfcJ3hPuP8sPRcy4XeeM6LlCRa5b299p413vhAiWv5sX0Hl8gX6W2eP6DXT5kqUttSfaGILydvbbOSO5rMmF57oqiioqOspzQPo9SUDqvKLq+5bjGdb6cIgLfbHZFslcwtGG+TOBk4um6Naa/AbvUcY0ovviZhZWJ5w4VllE9hldOV9tXlAd7W4Wu4V8cdRPIIau42JfyrMDVW5nqXOiWiy+rKdiO9MOAhCgup41rdZQeJDtpUsspOBhflGz7FwJNcK7xmxmSnWKCus1+Sb9itNmrq+178s64p3yv5afsKyuG3kIei3cKIvp/B6Qbyg7aJNlF/wB0lzTgVjSAGWPug2HfUv1FEQV0x+GyP6l5n+kYqOFZrp85zDc7UMfaQ69Zgx0hPYA+4TsfBk6VU43LPc/PdKouOu1/dO+aWrUHWEJ8s0+u4RTCYWErS7nZ7HXC9rkcm1mLcUWfbqSSukz4SRo3yshSfb4VA3kcxfpOHFccYmyWDKUnOtSPM833YBAlDaIumPHPnh9m+I5C4llebTnFBpTVgsta8vk38i8cTDXzxyW285r7u2qZTHgcm8N68b12yN7t7YtSbdAQu63QPXTuifq6YywVpKFc0RvXofHhBCepz07bLrd3wyp7hQzYdTwCrSsPORxV3FD8K4hdbDcdjxCUK3780mOrj56arE0ZEe6/IPIg/Y4RHbBvxOCsb2FkFcF/i+EXUhc+/uq7q7O8ZdHnjGvV2KuQ/j545u2p+X7oAAAAASUVORK5CYII=',
      founded: '21 March 2006, San Francisco, California, United States',
      companyCategory: 6,
    ),
    Company(
      companyID: 9,
      name: 'IBM',
      description:
          'International Business Machines Corporation is an American multinational technology corporation headquartered in Armonk, New York, with operations in over 171 countries.',
      headquaters: 'Armonk, New York, United States',
      imgUrl:
          'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAHcAAABUCAMAAACP31ggAAAAeFBMVEX///8AUZf2+vsAPY+Cn8MATJUAT5aoudLi6fEASpSgtc7CzN7R3OjL1ONIcaj5+/0AQJBeg7E1Z6IFV5uInsMARZLu8/cAN4wnYJ+wv9a+x9sAK4iQpsZ3k7sjY6CbsMtSeqwAMIoAIIVsi7ZxlrxAdqoAJYa3yd0JiWMVAAADTElEQVRoge2Y63KrIBSFUWLERIOJ9ZZqNE1b3/8ND7hRuRk7p2emZ6Z8fyIL9l5qNiIi5HA4HA6Hw+FwfJvYBKHCosaErkZJPYga2Wz4VRSoRDlCVxyYeNlHKKIKT4lKaynjoMZif81XI0i5r65ynyjCZT35KpykjH2uhK34ojo0QIgcTBXoyHi2uizdaD2U2n1/Ct/ErsrdZv96vhXbrMQad/b/vuqiBKu7Ite0NyLykU+t53WtroK9Bq/n1NPVGQ8nqMg0LdqJfE2uDU/tvrTZGbDpaYoSA/JtQeBrdKzc6J+FAlaR6m2qtxfRIj2jCTLOvlHUfBSzdIq/QNvrRbv1Mgl+P+lNErx22zfyOHN1AHgUvXL23cOoKV8LUUB+ZEqCJSXa9q3PQKioPYj95NuKUUfR7s4yjaF0m76/jfBy4lzUOwOiznku00Yd8EAPdWRj+Og8rSuFfUTm/jaAqPd8/E0JBOTvoAfbddXdLpyber3VxeS22KIdRFXDCfo+4KcfRLaXTd/fRg1TtbfOX5Vi6ReztR/mmc15oKRfZvRzxOql15V1GVyM2wjWzRB1y+qXN2gQ2b5QV1BClVpXmaWuLtUyj3YiqkZkKcGKoKPQt+uK+s/WIxVf7/eVoeNb0lfXo5/i+AJcFbUFsZ3OuxGjEtGul7YvDl9adr2xOK7RFit1BS9Z93kdDNR6WeoKoRP0BfwN/ut11eCcg1Xf+yjmn9M/WqUg3ET7AVHlgV97Ccf8HAY4xo9NXyredalV1du+2ob6oUsCSm3Z/hPCgw6bxKQzVKk/RlRrIxECuyclurNftbkPhf2gZR86USbqPhQfxkRs7xcF48NM2YmK/aDu7mc41SiZ710XF3DE9imRKLG5rsYqw+fxSNTYSHrnvqSpO21WERN2NhZ1ptCj4InNY+DaCi0bort4GJLhO+XwV4RFSI6JujwlRwN2xldTBa5j5VBFE68g5BpPB3IAEzoaDg1SfP0qjzQw+39L4zsDJ8evsGIVeykK6opdwZt4sR7krxQlu/ekHmhXdKqvkR1bv2+wcvVujXhkFHt5vPBFGVrxRfVQxOqzECUmLK9FTeJlxadKx7znFr9qtLj1CXI4HA6Hw+FwOP4BfwB7YGP7W9EsdQAAAABJRU5ErkJggg==',
      founded: '16 June 1911, Endicott, New York, United States',
      companyCategory: 1,
    ),
    Company(
      companyID: 10,
      name: 'BBC',
      description:
          'The BBC is recognised by audiences in the UK and around the world as a provider of news that you can',
      headquaters: 'London, United Kingdom',
      imgUrl:
          'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAEMAdwMBIgACEQEDEQH/xAAcAAEAAgIDAQAAAAAAAAAAAAAABgcECAECBQP/xAA3EAABBAIBAgMDBw0AAAAAAAABAAIDBAURBhIhBzFBE1GxCEJhcYGhwRQVIjI0NjhicnR1stH/xAAUAQEAAAAAAAAAAAAAAAAAAAAA/8QAFBEBAAAAAAAAAAAAAAAAAAAAAP/aAAwDAQACEQMRAD8Ao1ERAREQEREBERAREQEREBERAREQEREBcrhXL8nOhTvWM8LtSvYDGQdPtomv6dl/lsIKaRbE2cpkTZ5FPj+K8Zmx2DsSMlErPZyva1vUSOxbvSkd6vhMt4d28xVw1OAWcVJOwGswOYTGT568x70GqaLYvgEFCl4Kx5l+Lo2bVarbnBnga7rLJJCATrfoAumPzdiu3j1zP8T4/wDm3OyxQwSUmAyROkG29TXN7/To/wDCGu6LYfxzxePp4XCuqUKsDn5WNrjFC1pI6XdjoeSkPK7mLxWRqYXDcYo5LN3GmRlf2MbGRRjsZJHa7N2D9ekGq6LaPHY7kMN+uzM8R4vNTmkDZJceNOrg/OLXt/S+xVD48Va9PnQiqV4oI/yOI9ETA0b270CCukREBERAREQFdvyZ/wBp5B/RX+MipJTLw75TkuMyX3YuSNhsNYH9cYdvp6tfEoJpbPDpORcvrcsyeQrSyZJ/soarpdPbrz6WtLSd+9TvA2Mra8H7smbifHYFCy2P2kQjeYg1wYXNHYHWvuVcO8YuRtke0dDug6Lm1GkfFcZDxRz+Sw9uF1mu6GxA+N2oADotIKCZ8R/h3n/xt/8A3lULqWMFHg8HZ4peydvmdZkIhqlkksbXnQkbp7elrdb/AFSPILC4n4hZvAcXrUacsArV2yFrXQhx7vc49/rJWezxl5D2LnMjYfJ7qjQPigm3jz1Hj+BLwA787RbA9D0OWdyh83FfEKHltipYs4izjzRtSV4y91Uh4cHuA79J0Pv9dA1Hzjm+Yz9KlDkJYXMgtNmZ0RBunAEfipBY8XORVwDJZr7J01ra4JKC0aXiVxrJ36tHD2Z8hZsPa0Nr1pNRgnXU8kANA9VS/wAoL9/x/ZRfFy9CHxf5F1hh6Ies6BdTABKg/PM5d5Bnfy7IvY6b2LWbYzpGhv0+1BHEREBERAREQFnYyT2Zk7+YCwV3jk6N/SgzRPKx1h0T2t27fcL6xyNZTLW70Wk9/pXnF7Sdli7GYlpGvRBmQzaxxZv5rvxXzMr3QwxSPBidoEN81jNl0zp1sLgSNadhvdBn5CXrjjHueF2dOBeEj/Lo00+47XnySl4A9x2uXT9Q0W7CD1zaHq4d15mRf12d/wAoXxbI1p2Gd1xI/rdtB0REQEREBERAREQEREBERAREQEREBERAREQf/9k=',
      founded: '18 October 1922, London, United Kingdom',
      companyCategory: 2,
    ),
    Company(
      companyID: 11,
      name: 'CNN',
      description:
          'The Cable News Network is a multinational news-based pay television channel headquartered in Atlanta, Georgia, U.S.. It is owned by CNN Global, which is part of Warner Bros. Discovery. It was founded in 1980 by American media proprietor Ted Turner and Reese Schonfeld as a 24-hour cable news channel.',
      headquaters: 'Atlanta, Georgia, United States',
      imgUrl:
          'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADwAAAA9CAMAAADGfvrlAAAAeFBMVEXMAAD////TISH21dXyv7/tpKTkdnbTJCT20tLcUlL0x8ficXH+/PzUKyv++fnQExPeWVnXNzf88/PfYWHOCgrrm5v429vZQkLhamrnhobpkpL77OzuqqrojIzQFhbbTEz54uLlfn7aRkbwtLT1y8vWMTHdWFjvsbEKzQFFAAAB3ElEQVRIie2U23aDIBBFORpJahAk3jUxXmL7/3/YAUnbtKbJU1cfPA8uGNxc5sAwtmrVqlX/SKlO9pzzljFVVnF6DRc9j+aW5lwlPF5AvbqBlWbatPJpjgfUFifb5IDnY/OT3R/gpNMOkEDj2TihAuh/gzOi/H6ISOkZyNRwwNEM7NBo9QYZ3YdPwCFR5TEkRbRYNJ57oKARmqPYtA3Gu/Ag0EXx9cwEb3e56nCxcPCCpATO92Af0iCQXZ7nk4XBX4HEwZ3y4afLMB2yLgRkr5jLEcFNG6JLZxjVAOyX4QDCCyFerom3MDItUDn44I1o1CKcI9wKBOwWFlMA6c0wjpFEvQgLZLHNyA2MDZFHB0PXkMECnAInSud0C9PNILvoa2CBC9klnl75soOxa4bpDiXGjmfPHJoExw4eQmvX09kO2WjtsnChya7zIvzN597BW2ntsjAzmR8f37BcOpjVEFHgYOMZ2fXobhvNsGqMXTNM+xFk16NXRRopzeYf8x72p9jC9MrD1m/z398zaaJuRtF0RztqN3RU6tAclYqFHfimz0oyS2gT1dLWkXmx0RYYUfyEP2uYlSydEbac2YLE0jczKV9g2Uf1NIrba7Atq+RLIe2jZXbVqlWr/l7vGzgg4Ai5PS0AAAAASUVORK5CYII=',
      founded: '1 June 1980, Atlanta, Georgia, United States',
      companyCategory: 2,
    ),
    Company(
      companyID: 12,
      name: 'Apple',
      description:
          'Apple Inc. is an American multinational technology company that specializes in consumer electronics, software and online services headquartered in Cupertino, California, United States',
      headquaters: 'Cupertino, California, United States',
      imgUrl:
          'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAHcAAAB3CAMAAAAO5y+4AAAAVFBMVEX///9mZmZjY2NfX19bW1tXV1f8/Pzo6Ohvb29qamrb29vw8PD09PSkpKR6enqHh4fi4uLS0tLGxsaVlZW8vLzMzMy1tbWurq6NjY2bm5uBgYF0dHRc/6yQAAADvklEQVRoge2a2XLkIAxFDQK877v9//852J3MGNKdIKMiNTO5D/3SLk6xSEhCUfSjv00qHqe+V4Gp+VSnICAJy81nLjhjjO8huWpgwE7xKiA2XwRj4blNCuw3tw6Gbc+NfRPMobAZv2CZGANhGwPLeBwGm6cmdguDjWq4YhlMYbCTYKbyINjYwsIaBBstYE03zKlqpUkVgYy3Ns5ysDuh4dZ0myDYaDZ3Vw5hsMpcZlGGwWpXZZjQEggbZVfjhTpYnDFeuBAwnBv+BBmh3LLB5aIOZEDvXK4lZJ2FpGovmez7tnZFWKqWUtZhUsUhqhOmmnFe+6Xuy655OabOUcp+S1Ktql6nzHcVVFvuHACOrdS/+zo+udnzsazY+c15zo7vk7X1QBdDxeHqDfWQ6dIZ6GLsEwDrijg+rIa7K94lwh7vtBuNfpuMyspUPvnm8V3V3qHm9asR9ZCwDHGRTZW0Iw7jM7niF7vlnw15oFPxbDkMwY6NfAb5xZBu4hznVWYa7HHAMOAPcbEHGJG6dHRYTLiXsa/OC0quoYjaabFp58YtPzUgNLZ3zJkyys1l4BzdVpSrDI5rrMM1Kss9JNw9dEI4Xele7bBzPB9hUoiebrq8cr+Ac8JVFgjPPBA65t4dGy1085WIq9fM8byEKmVldC7S3WNEtNuLKWXRWRGuEL2RcVEltILu5hWY7Y3prAgwMbtdb/QQx+TilFc+JmAn5KIK7//AfL9tnb/pXKHsiJArMNVZQvsFzK1P6K94guAWhEEs5mApwlwB9UJJGF4xhuBSpoKYp1HKRJ/v7lzCuA5lwoRx7CHn0M56m/EU4o2Ftsbg/mBImnUjgnfKfPAEOxoT7QYz97rKRLrBWsItgI9pN5gddTOn/JuyrvIQF6uDIc/UC60F7GuDIow5LmCHyg5pve5N0mGLSYvPDzlVlBT9fN1uJloffUg6PefE1FzXStaH9hdPScfQ0m4I8ZR7JasnnbB0TpVIJ4xpMaQ80pgHM6ttzguLamQZyCacol5EFVXlDtsLRnQtYWr9D9E8iaJeYR+iWOk7HXeFP/ded1TrvdI3u2V9vQfilc6U38Ukbndl5T6xFqqSZCm+7y/BqyW5eQ0+24VeY9EOwwLzZ2NzIWBby3JJQT6Fw+bbCZUn9uHiUvTdu4WobKrlh0Ye6bG371LrZVgOMllbu89sXFNxWRfgNC2rWXU0dWmmgGp+3kpWtGui/z7bw8RC1V+osnlL0mrt4k8OS9EM5bJt9Uza1aiK3OWk2K1+P/o/9QuuazK9pg4CqQAAAABJRU5ErkJggg==',
      founded: '1 April 1976, Los Altos, California, United States',
      companyCategory: 1,
    ),
    Company(
      companyID: 13,
      name: 'Alibaba Group',
      description:
          'Alibaba Group Holding Limited, also known as Alibaba, is a Chinese multinational technology company specializing in e-commerce, retail, Internet, and technology.',
      headquaters: 'Hangzhou, China',
      imgUrl:
          'data:image/png;base64,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',
      founded: '4 April 1999, Hangzhou, China',
      companyCategory: 3,
    ),
    Company(
      companyID: 14,
      name: 'Atutechs Corp',
      description:
          'Atutechs Corp has an IT platform is aiding individuals, businesses, organizations to set up Websites, Mobile Apps, Desktop stand alone software. We can only build with you if only we know exactly what you need and we are super ready to have your idea(s) on everyone\'s screen-front before you know it.',
      headquaters: 'Owerri, Port Harcourt, Nigeria',
      imgUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSejA2ofMj-EUOqMgxNsxgkv_QF89Yn29bZG0B6RwCJvw&s',
      founded: '22 June 2012, Aba, Abia State Nigeria',
      companyCategory: 4,
    ),
    Company(
      companyID: 14,
      name: 'freeCodeCamp',
      description:
          'freeCodeCamp is a non-profit organization that consists of an interactive learning web platform, an online community forum, chat rooms, online publications and local organizations that intend to make learning web development accessible to anyone.',
      headquaters: 'San Francisco, California United States',
      imgUrl:
          'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAALIAAABkCAMAAAAVM5poAAAAllBMVEUKCiMAAAAAAB0AACAAABsAABMAABAAABkAAA0AABUAABf///8AAAkGBiGWlpYAAATT09ZcXGCwsLK5ubzIyMpXV2DOzs+cnJ6np6pxcXMfHypZWVmOjo7CwsXf3+E1NTlKSlBCQkiRkZZqanEmJi5OTlB6en43N0QODhwXFyYwMDiGhodkZGgVFShOTlno6OgfHzEuLjyTZGtdAAACh0lEQVR4nO3V7W6jOhAGYI8NDiG2gyHBBuPwkUDbQJLt/d/ccXvaXWlbaaU9baQjzfODMCMSXtkTIAQhhBBCCCGEEEIIIYQQQgghhBD6/6Ji/bHJKPtVpPK9SeUnP8DSt5OIfnW2z9F+OPLfm6vW9aufxUJek9LTOEYfM9PzEhG5kiTa93fJLCGbykWso5iRKA4HFsc01ZnxUxzxUNMY/ANN+YrVpc2toJzTcGUUU/rv9Y+ljghYLmmXwWe78NWJn6Zb08dVo9UDLKp5Ss9KdeAXaC1USp15r2b/zGdVQaMA8nNnTMcX5Zqu00qdmBhmIKt+MwuSHPPt90cml2t2fFh3uZ+N824qHv3iMihGKqOq0JU/HY7HW22GMZ/UnEh5ytySQbYc5qLxevIAu5ZJUWwyeNmx+g7LTGCXUgJDJS7KW3sYM2tvuthTBmafgHdFWNo6NH3ezAlZP2qrMtiBbwt1TaAkUCYy1pvCdysSuuzPd/yCyBf5EjkRZu72p9Z31zAYjtdHs+fg9Wvk8nrttmoAOLaHRR/eI/PwZSgvTNwObrOBEPl8l8jlRdI+N2NS5aPL+50bjW5yN9gqd3rXZs4d6nweJzWWetmdS+dubQm7vmiK/eK3YYiiH7eqO2yA8Sy+x2AkEyHxZMwcw2SN3nbGziKdbFOL2ZpeaGuGS21scwZtTBvqoVommOqjGoxt6XrKwz48JKdhC3b+8Lj8Fi8vkjRJwsd6K2h4s2zXRKYirNdbLbhkHF4eggkPB8FXUUzWDOwCIswB2CHmz+zHE59LuEviv0b3z6+DK6Pwn5NESnZ+usck/xfRW0D5HpTdY5ARQgghhBBCCCGEEEIIIYQQQgih7/IPTFcy4wSMp0sAAAAASUVORK5CYII=',
      founded: 'October 2014 San Francisco, California',
      companyCategory: 4,
    ),
    Company(
      companyID: 15,
      name: 'Udemy, Inc',
      description:
          'Udemy, Inc. is a for-profit massive open online course provider aimed at professional adults and students. It was founded in May 2010 by Eren Bali, Gagan Biyani, and Oktay Caglar',
      headquaters: 'San Francisco, California United States',
      imgUrl:
          'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAHcAAAAUCAMAAACAh1JMAAAAnFBMVEX///8AAACXAO75+fnc3Nzi4uKoPvHewPmiKvD8+P769v7kyvp5eXn16/3Nnfbmz/vw4vykMfDFjPW1tbWhoaHFxcVGRkbhxPrZtPicEe+yXPKfH+/s2vzo6Ojbuvm9vb09PT2UlJQqKiqtUfHTqvc2Nja4bPNaWloXFxfp1PusS/HS0tJtbW2BgYG9ePQLCwvBgvW1ZPMhISFQUFAbmt5qAAAC1ElEQVRIicWVCZOqMAzHk4rIIbdXQcCD1cUDUb7/d3tJi+7u29kZ38yOL+PQ0pb8muafCgBQNR683kZRlsnYfjU2lTKNZZYtX8zNohGAtxOj/n0wHg+e+1LWP0y41hNf+/3a4M5FfJJr/cg9POfgi/0C9ykzDMYM1TMvyxw095gkQx4xcpiWNGCUx/taGBiG4i5hXnAlhA6/hiTNsBhR3wn5FxauAjijIlQdt1AbtecFawmR/W+wBDgh2Ym5w5vqAkxwxt3pih4r2OOavxzjmZtoETWNiAHMgl/FElorboTP+R2ZsdlEJm1lIdpYtiSh7BofaKu1aOLo4PXcFU7JK47XMwIM6Kz3ZbIh8ARxNtnQ2PmMODHwojORM8iMyK0tC9gqTWbLpaTGa8E1YS5YN1ufMHwYZgU7HqhciObUxuEH10Dk4yP/sNYBXTCf4IYOm5BAgx280fZoLyfQ8fKz2j64QaZTx1yp5nZwVYtqC9JewHKu2wf37o64M5ztyW5YTnB8XzPFGSTEhhseoc8v2VI8uHCI/KDnmjy0uILV+mSxgEDsFpznSrRKFA/uWiePoqSw3tm+c6mXH/FN79hScgk/ccGNTUo4c1UpFSlk/kKZDU61k1wCnn8VKr+G0tU00f7ouCnTSa/2v7lnXJ/uk5bSKx2u5kp943lWEXzimvd7QVkldRunxOgGLJ+c5EI3lfFO3FKB8vXgG3eIF5rXFrX8bBstmVAsPUVu/c/cuOGObYK+D4Wj2tCCIyobs+PeBlxRtw0PfuGuqNthnw7iHnzbroQHIxE49SELF6JwbFeEj/wWW9J77Nm15YOZhrbXpLZoPNtLqfoMqp83dXTG6XI5HfcUPyRUTx1pN+mYsu+ocI4db2H6cZ3tQj+TqdKKJbfeNYSa/2RqqBsIVJgunYjTZPLAQfqRzAhnx5aMfPhXu6v+xZZrGb7aZvh/wu0251/y9AckKDi8qW+avQAAAABJRU5ErkJggg==',
      founded: '20 January 2010 San Francisco, California',
      companyCategory: 5,
    ),
    Company(
      companyID: 16,
      name: 'Hisense',
      description:
          'Hisense Group is a Chinese multinational white goods and electronics manufacturer headquartered in Qingdao, Shandong Province, China. Televisions are the main products of Hisense, and it is the largest TV manufacturer in China by market share since 2004.',
      headquaters: 'Qingdao, China',
      imgUrl:
          'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAHcAAAATCAMAAACdgmL0AAAAV1BMVEX///8As6wAsKkAsqsAsaoArqYArqcAr6cAr6h4y8fd8fDj8/I7vLWCz8up3NkAq6P0+/rq9fWN0s7I6ObU7etnxsGg2da95OKy4N1Kv7lWwbwjtrCW1tJ0YrXQAAADOElEQVRIibVV17bjIAyk44oLbsH5/+/ckYCUe/Y1eokhkkZlJIRYlZR6EEXORkrZnEIMWkozit9Ja4A0LeUUPE4+CnEDVz9+iLszbj09kb10mxC+8d7uP8SlgkpXTyNFYZH9ESDxh7jAkfquJ87ezd8qcxdj3PrP22Xbum+teen75Vvlf1Z9/abCvhv5oOyNEN2klJoCbrbdOOu9d9aq+2SlrcUVzsOVj3u6TWMd7lxzH3wXd5WtHKw2vjpT40gSV3EmIsl7HVnWm04SdswvwLQTKqBV03hljGWgHVcG7dfa38THYDWRH0IpMCmSIytfrAh3GSysvFdSu0S4jpFMkVp1nie/iTjRRQrXFZ5jaijUGxWy+xkDKK8VynhQyeQ+riMNgZx6cZBTs4eTrXAheoe/7BojKSuMbW/lX9GpzJPreLq/5zghNh/4EzCqFaxj9lfxUCVmiTo+rIzOYwJA6LhLbFxn5Ypw7nuZJ/D64rCUftYBj+69Zih2m2fAtC+yAHelakn0upLq6d/R75oyi6SiwpJlcyW9sU71g+OSyqbMDk7lHliorLbnq+K0KdN/c+k1NkBXK4P2FStyIC5fFmOmJuGqZ3FvOVSnNFfBDVvxgLZmASHQvKRrUZkslqDaSWXeTImOE3+/jIzMpMiVF5XG6B750jIP5lPazLdpLJGn9iV73jy544srWwefq/E6WwUxT9y+t9UqVk6sTvNVn4Xv9Rx3xz7syQH9eS9It+EJ64gNtjb1TNlq6rjvr6KytOYVYmEKjY+gW5M+acwLpS1Evz5dqPKUlDb59z8LL2F/ZBTTfRjtujaShMeGGmQzCv5O7TNcZ2APDTp/8yYdjrjFM6zpyM3z3CkmKXDvO41kdfAacqeYLcOkwFYjmMKLsfmb/Uy4aqVp1UZh7xC3sJ6o3QP5wAZzeLKUjbl5TCbeNsSKW5tsxQuMytbLhhqExQkrM81CYqk6/armhBPGp+dfZPegRex40bohlL49rAUkHDvbLNC11uYH/KBPBCc9ec1Wj9KTMGB7FyuodCwVty+nmX+ZIPPS5Yfls6UdNiDquJHG3PV9nz3gScKj9Gm1fBjNG1tF8vsPEV4tIWzxnT8AAAAASUVORK5CYII=',
      founded: '1969, Qingdao, China',
      companyCategory: 6,
    ),
    Company(
      companyID: 17,
      name: 'GOtv Africa',
      description:
          'GOtv Africa is a paid TV terrestrial service in Africa owned by broadcaster MultiChoice. It mainly consists of African and international programming',
      headquaters: 'Nigeria, South Africa',
      imgUrl:
          'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAHcAAAAaCAMAAAC6jTM8AAAAolBMVEX//e/5Hg8JpDf5AAD//vD///X///f///P///kAoS4AozT5FgAAnR4AoCr5Ggn9raH+0MP7cWb8o5f8npL8mo//5dj8kof6TUP/7d/6WU/9saX7fXL6Qjj8lor/+Or7Ylf5KR7+2Mvm8tv9u6/d7tPT6cv0+eb9wrb6Ny76Zl1hum4kqUI4rVBJsVlXtWV1wn6RzJOj06Gy2a2CxofB48H8hnrt8i1pAAADxUlEQVRIibWW6XLqOBBGFbR6xYaAWYzNahIDMev7v9pol4mpW8PUnf6RCras0/11q9UAtA0hSikWRrUhBP5nQxQTOkk2/cHwczjozzb7JFmtRhP0tEIb9+vvOIQwTcYZfGEajCiZ7BfpNP9a5tn3Y5AUxKKVO1ylt33BxWcAYfAhLQ6sxbHmUtTPuRPyEf8jHJpuKJYf0/pwPP3UdXNbvwdGZAZhrKB8yzhL5/N5Wk4zHtxHgcSCTaC9khoEamU8I+JlFfrcPM8Lz/gtLE4NNYbZbIQZ18xmErUXxHAxQcU+h/pXCRBA67CnLHqPy+ZqGx7CMmEvCoak0Li1YkgUfalTAnP+03Ev9A0s3VtsDl59SDdmAdwTpRBYaoHgnLS4V4yE/Tsu+QrMtsUrLKIGEmRMP8Mz68qKbg3Xu22363VVSUlkqrr7Wa/QyG4xJjZE1TOkOT3gxuyDCqtRynaG2/NCZZHXO4ga/9n+BlPuFUC/VFzZVbpnTIqC6zG2C1wTIZk9dOjuuJEwXtm+Mq/3S3Ry4U6Fsgxov7MtXbX6RrzUrz/ipStXktrkjO6R1fl6uZzPt1vjmYw3pI3FwsWols/orMtN5CHVRye23Jy5HR72q8Rywy1W7Z1djQThvaU0FRXoHakJzlYrNdkbDBePx9ISu1wyt/EmV8c1EFLriH2vskojdPBbD4iJKJiafZF02m79SufS6ey4tk+iyve19rVVGp+4M+HO+IZdgvsuoHYKjcHC+o6tGBBculxAbbGFV+0tu/F14cUlnGQWPGAuHeS7wzWJANQePi6S4zpNAWv0Uz9ST4nIedS0IkPgy4KnK4Z1pyRTww06iXA5gBt2fsUFIplK6R8RIt3Jmnpq4Ail5g4MYNYfAcIIYezL4Oa5acczBcaJa60U3+ypaXPprq00qiL/qcgUmCW5OTfibl1m5Xe5tCF9jsx9xcH8qLDE3V+jFtd72pU4HdZURh922hegOElbZ1be+QYLJ2QV6ABhPtzMSndZ8xaH7f5RRYRSBCtjJ6P0idVRq8KeyQQlw+9lq1MFarBIJxTQ4mFve+hyUvJXLUF7UY935VPdNLfb+Xy5OiGO/L/oxl5ggZ7bilGyF7PdYvyYp+l8sZmImYJPHJNBZpzRg066kq8AbkIdWM/Xk4cnO7XB8uci6D8OBXKUVbMsForZMQBhUiT9ccqnnywrH/0E2VsOXw7qGtImwdKFXotc/ecJVNyqLwdZiqv1dre736/qYmiauj4dj4deFFrr1tTfMCUTbWulDVWVcKp6xv4DXnJPT3RRTeYAAAAASUVORK5CYII=',
      founded: '5 September 2011',
      companyCategory: 5,
    ),
    Company(
      companyID: 18,
      name: 'DStv',
      description:
          'DStv is a Sub-Saharan African direct broadcast satellite service owned by MultiChoice. The service launched in 1995 provides multiple channels and services to their subscribers',
      headquaters: 'Johannesburg, South Africa',
      imgUrl:
          'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAHcAAAB3CAMAAAAO5y+4AAAAYFBMVEUAmdwBmt0AmNv///8AldsAmNkAk9qUz+4Altr8///w+v3K5Pbh8/vV7/oWoN5JruOg0++ByOs2quJ4xeus2/Ky2vK73vNkvehSs+TH6fgppN/Q6vdtwOiMzO3A5Pbp9vw2begSAAAD9UlEQVRoge2Y2ZaiMBCGkxiZgka0wVZEbd//LQcSliwVSBSdM+fkvyJbfalKZVFCoqKioqKioqKioqL+U1FVy73sUV2RTXqK6yT/ay4y7HXuYi90nI715lom8VmMNYNxjOvNdM/DBFtcYnNfwhorp9ROWM3hsVJ2W4FL9VoP7nySjLaCuCq2g7yRq2WbhkW4xJ+Ldprzd4G7sBkdXLbMnYvzk9xpI+Bh1h0mFlfttcTVXRg3oMnViq79G8rFzjgdjAdem40Sqle4o9W5a8Mxlye4Vjsiu9EY4sl1uOsG0zmsnzCuDkfBrsAHyeIyovj+Ea5e9sOuxiWB3GfxdlYhR5I/2f/yt1N5ntt3wuuxTREaAtO40Ws97hQrhIv0trnoIeBwjieKOAeY1he41tgLcHAYlxU/X5NOx/u5pD0a6P7+c/qyVMMKXNinm067y+Wyy8Rn/lMnLRnKqyim+W6QKG/uwBxc/LB1cAUsb6AztD/kwvSp5NDIz2s5ekNlzXe/Fga8MwbhXHGFMd4cpM9lUknvvpPhNmdEcu/FJKreD6xovPevxm0FyR8Zd3aW3OxGucx01vub5o980G8BI5ffH7sCnuO21kFaP8NRgjfXqhCZNHCvB6GHKBzpMJCfN2kJwf6y4bHAZaSPQA5ZT95VnR8Dt2p3W7vBzjIhb7xf2ybr1sRXKle+P/pA/7aLvT8O5Py7JQ95JbOH3+U6NEyEiV43B1iAubhCiYzvodtKMJF3JehcBr+ieNkSGaUrDTgjLS4UcuFqLk4sMpJ3BdG4hDWPvtxib2m7uL7vOoQLRHpxYr114E1/XlSgcymvxRJnNUCTtgvt/X5WuZ0x4KS+yNUtoJM4gJLa4I7nBsg9ntPiIhYXv0AW/KW0KKtfGdRjsZ3OhvpLWi9AzunULWi/aWVwDsfNtWCBXLkd0ixLN5PSSbIiOzUM9o+hb6/HMCbrztkQLtlWfxZ1r+rWHdrm3E2tbg+P4XMvt1AAl3AheRYkfLxxuaZ283Z92wxIjHb5odzJvtxJ9hNvrs+L/94gNl+enJem0PgYZGs5rD8Gg7hoR7/ZWK8U/zCjnX2j4OLaTzYH18Csy1XAFtf6pRHMVX+x+HNNrG+2eXEn8GxeBWW5kc/GfObAlqkg7rSBzWEoeC6Vw7jqUHNCNng+yM9xTc057ML6cBc7YR7ru82kenKDwBjX+ovzzdyx0cR+kMveylVGqY3WEebBfQJqNa/MxQ8ruwtZl+uJNaDbTh/AUsPXQO7C/93OVivEYVx7UXCu+dcw+Qh37OV2V7K9ufYxjblrcoc61dWX8xmL8mgSdXcd7uKs8KV9MzcqKioqKioqKirqg/oL+ZQu7JRJI5AAAAAASUVORK5CYII=',
      founded: '6 October 1995',
      companyCategory: 5,
    ),
    Company(
      companyID: 19,
      name: 'GitHub',
      description:
          'GitHub, Inc. is a provider of Internet hosting for software development and version control using Git. It offers the distributed version control and source code management functionality of Git, plus its own features.',
      headquaters: 'San Francisco, California, United States',
      imgUrl:
          'data:image/png;base64,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',
      founded: '2008',
      companyCategory: 4,
    ),
    Company(
      companyID: 20,
      name: 'Zoom Video Communications',
      description:
          'Zoom Video Communications, Inc. is an American communications technology company headquartered in San Jose, California.',
      headquaters: 'San Jose, California, United States',
      imgUrl:
          'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAHcAAAAYCAMAAAD3RZI3AAAAe1BMVEX///8Agf8Af//e3uLLy9HZ2d3Bwcnh4eXi7P/k5OfS0tfo6Os4kP8Vhf+6usLGxs3s8/9UnP+oqLPN3/+lx/+enqp7r//39/hGlv+urriVvf/2+f+71P9xqv9gov/d6f/D2f+VlaMAdP+dwv8miv+Jt/+Hh5fV5P+vzf9M3Rk+AAACLUlEQVRIie2UaXOjMAyG5QNzykAIGEpCLlry/3/hyoIek5Dudnb2y07emQRJxnqQfAA89dR/p/4QsQp2ov49zFbvDe8W/A/pJudnuJrKpY8xuruZU5yFF8otFIMUcvAfEJVk7XvYyb2U4hK1Uo4VxVUwT6pXcyv9TX1hcBPYNV7jOPSIbdMiFhAJsjIc+yNi1oyIOAwoo0/u5udcdctlDZjR74WsCw7Q4pasV2wqbKnTox/YiWaZrG3quYkJwMWccnaY64ylbjsX28QPaUPtTWl4nVti1veiZbsVB1GyleFRXOi5F1Rq7z/BT65DCN6oZAXKwomGUwt1zKk1uNq5LoCwVpB09G4KWkPeqXSV67EQyYadV7xy4Z53Fb7wvfRrvnBVzn1ODT06yJV3Qs0x4vLCnyDM+ZEEHM/1ep8ZC8VSbykmMcz1iuM917eRcunOGNM5AjlKzM4Hd/kQ66yluIU8XuWWuADxSv9XajI1mFd6Xz3kJmqe3DmTzol5fU9fuBsic3yd2+DYvJCqQojhZRC0mJMkq6SdvVKvMtxCtxwlZ8lwm3du5772mVb+MfcikU/wuadjKmR7oNiUkVVGsDv7U7s9e26bLfvKJJ6lu4BaS9n9vs3JsRAQrdZJ7SA+5QntKbA2sAb8nl7p81TNojWOqmgJztZyTU18i0002Xc3Xa6l2H3mcB8Oj4Z6PmFznIfu7o2fKF7uyd8pvHtNb9RfcP9U393UTz31L/QLWHEh/rqV7ysAAAAASUVORK5CYII=',
      founded: '2011, San Jose, California, United States',
      companyCategory: 2,
    ),
  ];
}
