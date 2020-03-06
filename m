Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B710D17BA36
	for <lists+linux-rockchip@lfdr.de>; Fri,  6 Mar 2020 11:30:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kCla28+w1VGh7XjmEVEISG0w0dEqsk5E9VHMz45TMfY=; b=s80HS7XB9Bm8x3
	jU6ZsDWSpWpJCoijwTsw2cP/N32jZbUNivJCj2hqCP8dJ1H4brFUjwy8WZO5tNnvsa6tnEWJy0fd1
	fiBtrbcOOo/BBWn6gN/C7WTTbeoZp1YgZN1nUovkriP/7Lq20eE3gY0aZFplJiD9GCBBrX0rmIJNn
	s1LE00aAe0EFx/wtjp20pU0s7/QDzHSKAyCwIYSFFxtTd+NooJVV5S3gy7CN62N2P6PnP5dH2q5z6
	FE3hNXO+VzjxzXBSy8wQjUj/JJrWkzCeFZegF62xuf2ysHNl+WRCBPHJK/DMwtb5pkmPknrWZm+CY
	WKHddyEUigQaFEdv144g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAAFI-0005HD-5H; Fri, 06 Mar 2020 10:30:20 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAAFE-0005Gj-H5
 for linux-rockchip@lists.infradead.org; Fri, 06 Mar 2020 10:30:18 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200306103014euoutp0131d5fc181abb0b92e90febc7ac77c851~5sFLkLIhq0906109061euoutp01L
 for <linux-rockchip@lists.infradead.org>; Fri,  6 Mar 2020 10:30:14 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200306103014euoutp0131d5fc181abb0b92e90febc7ac77c851~5sFLkLIhq0906109061euoutp01L
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1583490614;
 bh=cd1BgbEvdP8ztnBlctSkvEjdVhn0VOryPrA2r7OAkyA=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=gvrL1jika0ETcPCBlxCdOqz8uwwVCQWCitf2uUNVw1BodlrDaKkUoOVlir0fhFG3Q
 QyAyFaAYK9dh1wujajVybVm1hz3DGc8vGYT+rlNdU+K3BHizzGuTirlgT4Mp4WR3EE
 H5+7/ZycSXhee1u2w3e1dOj4I/+34sdXCTG0HIQg=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200306103013eucas1p1d8dcc46c9e2c7e34e741c2bae39ee0c8~5sFLGAvO61556515565eucas1p1t;
 Fri,  6 Mar 2020 10:30:13 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 7C.EF.60679.536226E5; Fri,  6
 Mar 2020 10:30:13 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200306103013eucas1p241d4648f5a31a885778572158af4918e~5sFKzjUCB0842708427eucas1p2R;
 Fri,  6 Mar 2020 10:30:13 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200306103013eusmtrp2ec4844fe0eac998d20553b151cce8b29~5sFKyy-4f1573215732eusmtrp2v;
 Fri,  6 Mar 2020 10:30:13 +0000 (GMT)
X-AuditID: cbfec7f4-0cbff7000001ed07-5c-5e622635030c
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 7B.B9.07950.536226E5; Fri,  6
 Mar 2020 10:30:13 +0000 (GMT)
Received: from [106.120.51.15] (unknown [106.120.51.15]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200306103012eusmtip106be6b6fa4a0cf4f937f1b9122eeda47~5sFJ5gntk1660116601eusmtip1i;
 Fri,  6 Mar 2020 10:30:12 +0000 (GMT)
Subject: =?UTF-8?Q?Re=3a_=5bPATCH=5d_drm/bridge=3a_analogix=5fdp=3a_Split_bi?=
 =?UTF-8?B?bmQoKSBpbnRvIHByb2JlKCkgYW5kIHJlYWwgYmluZCgp44CQ6K+35rOo5oSP77yM?=
 =?UTF-8?B?6YKu5Lu255SxbGludXgtcm9ja2NoaXAtYm91bmNlcythbmR5Lnlhbj1yb2NrLWNo?=
 =?UTF-8?B?aXBzLmNvbUBsaXN0cy5pbmZyYWRlYWQub3Jn5Luj5Y+R44CR?=
To: Andy Yan <andy.yan@rock-chips.com>, Andrzej Hajda <a.hajda@samsung.com>,
 dri-devel@lists.freedesktop.org, linux-samsung-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org
From: Marek Szyprowski <m.szyprowski@samsung.com>
Message-ID: <746dee17-dac0-6c49-ffaa-5048b352bee6@samsung.com>
Date: Fri, 6 Mar 2020 11:30:11 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <331b5d65-f619-ff84-d4e7-55d2257a90c5@rock-chips.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrIKsWRmVeSWpSXmKPExsWy7djP87qmaklxBufb5S1urTvHatF//iaj
 xcYZ61ktrnx9z2Yxd1KtxdXvL5ktVnyZyW5x8s1VFovOiUvYLT49+M9sMeP8PiaLQ33RFjMm
 v2Rz4PV4f6OV3WPnrLvsHrM7ZrJ6nJhwicnjfvdxJo/NS+o9/s7az+LRt2UVo8eB3sksHp83
 yQVwRXHZpKTmZJalFunbJXBlPHl9j7mgX7zi04w+1gbGOcJdjJwcEgImEvNvHmHqYuTiEBJY
 wSgxoaOHBcL5wijx5NBXKOczo0Tb4hMsMC0HZi9hhEgsZ5ToP3kWquoto8TK+StZQRxhgdVM
 Ertv3GIHcUQEtjNKPNw9H8xhFrjFJPHr+WkmkGFsAoYSXW+72EBsXgE7ib67U9lBbBYBFYlp
 J26BxUUFYiVmrzzMAlEjKHFy5hMgm4ODU8BJYvq9GJAws4C8RPPW2cwQtrjErSfzwV6SEGjk
 kPh99CwzxOEuEtP2Xod6Qlji1fEt7BC2jMT/nTANzUCXnlvLDuH0MEpcbprBCFFlLXHn3C82
 kM3MApoS63fpg5gSAo4SX3u9IUw+iRtvBSFu4JOYtG06M0SYV6KjTQhihprErOPr4LYevHCJ
 eQKj0iwkj81C8s0sJN/MQli7gJFlFaN4amlxbnpqsVFearlecWJucWleul5yfu4mRmDCO/3v
 +JcdjLv+JB1iFOBgVOLhVficECfEmlhWXJl7iFGCg1lJhFfYND5OiDclsbIqtSg/vqg0J7X4
 EKM0B4uSOK/xopexQgLpiSWp2ampBalFMFkmDk6pBsbuz/c/Rr3eJN/yNfhesqxqs+Wz9tBn
 2jKXoh302CLmBKqs900MEzL2mH6p2367pfZBTuGbUzeFLrvrmrtx5m1FJpPgB1mnPm76pKAx
 8/UHzQ811v03bNsmL8ow4FgpELunZKvx70N+u47G2dwNZ/cNrctvfJisznScYcq6iIQj60tF
 3uZndymxFGckGmoxFxUnAgAEQyrKdAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrEIsWRmVeSWpSXmKPExsVy+t/xu7qmaklxBjNOcFvcWneO1aL//E1G
 i40z1rNaXPn6ns1i7qRai6vfXzJbrPgyk93i5JurLBadE5ewW3x68J/ZYsb5fUwWh/qiLWZM
 fsnmwOvx/kYru8fOWXfZPWZ3zGT1ODHhEpPH/e7jTB6bl9R7/J21n8Wjb8sqRo8DvZNZPD5v
 kgvgitKzKcovLUlVyMgvLrFVija0MNIztLTQMzKx1DM0No+1MjJV0rezSUnNySxLLdK3S9DL
 ePL6HnNBv3jFpxl9rA2Mc4S7GDk5JARMJA7MXsLYxcjFISSwlFFiTfsxVoiEjMTJaQ1QtrDE
 n2tdbCC2kMBrRom/51RAGoQFVjNJ7L5xix3EERHYzihxaNFJMIdZ4BaTxNoLHxghWv4xSvTc
 Lgax2QQMJbreQoziFbCT6Ls7lR3EZhFQkZh24hZYXFQgVuLGzA4miBpBiZMzn7B0MXJwcAo4
 SUy/FwMSZhYwk5i3+SEzhC0v0bx1NpQtLnHryXymCYxCs5B0z0LSMgtJyywkLQsYWVYxiqSW
 Fuem5xYb6RUn5haX5qXrJefnbmIExve2Yz+37GDsehd8iFGAg1GJh1fhc0KcEGtiWXFl7iFG
 CQ5mJRFeYdP4OCHelMTKqtSi/Pii0pzU4kOMpkC/TWSWEk3OB6aevJJ4Q1NDcwtLQ3Njc2Mz
 CyVx3g6BgzFCAumJJanZqakFqUUwfUwcnFINjHHT7lw5scdFrnKuXNscft4dwtcStA7x7Xhi
 ZLk02V/q2wUp2Zd6Ms9UGSXDtlWU+04wuVFhdO7H2wuvuZILyuR3BIWEmvomHzm6ec+2J1N9
 g289U7lR6rnpceuyLhWudL3jihy37l+en1TPpHy8vX1P8w7POpbl1h0HBDKvvWHc2mQmdUiH
 VYmlOCPRUIu5qDgRAAOqEwoFAwAA
X-CMS-MailID: 20200306103013eucas1p241d4648f5a31a885778572158af4918e
X-Msg-Generator: CA
X-RootMTR: 20200302142626eucas1p25b7aec18264b1483fab9cceb86989aa8
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200302142626eucas1p25b7aec18264b1483fab9cceb86989aa8
References: <CGME20200302142626eucas1p25b7aec18264b1483fab9cceb86989aa8@eucas1p2.samsung.com>
 <20200302142615.14947-1-m.szyprowski@samsung.com>
 <30f64c8f-2a12-46c2-e5eb-505bbb2088ed@samsung.com>
 <331b5d65-f619-ff84-d4e7-55d2257a90c5@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_023016_774717_0B3FD434 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Jernej Skrabec <jernej.skrabec@siol.net>,
 Neil Armstrong <narmstrong@baylibre.com>, Jingoo Han <jingoohan1@gmail.com>,
 Jonas Karlman <jonas@kwiboo.se>, Seung-Woo Kim <sw0312.kim@samsung.com>,
 Sandy Huang <hjc@rock-chips.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgQW5keQoKT24gMDUuMDMuMjAyMCAxMDowMywgQW5keSBZYW4gd3JvdGU6Cj4KPiBJIHRlc3Rl
ZCBpdCBvbiBhIHJrMzM5OSBib2FyZCwgYnV0IHRoZSBlRFAgd2FzIGJyb2tlbiBhZnRlciB0aGlz
IHBhdGNoIAo+IGFwcGxpZWQ6Cj4KPgo+IFvCoMKgwqAgMC44OTE4NzNdIHJlZ2lzdGVyZWQgdGFz
a3N0YXRzIHZlcnNpb24gMQo+IFvCoMKgwqAgMC44OTIyNDNdIExvYWRpbmcgY29tcGlsZWQtaW4g
WC41MDkgY2VydGlmaWNhdGVzCj4gW8KgwqDCoCAwLjkyOTE0N10gcm9ja2NoaXAtZHAgZmY5NzAw
MDAuZWRwOiBubyBEUCBwaHkgY29uZmlndXJlZAo+IFvCoMKgwqAgMC45MzE2NzZdIHJhbmRvbTog
ZmFzdCBpbml0IGRvbmUKPiBbwqDCoMKgIDAuOTMyNTk0XSByb2NrY2hpcC1kcm0gZGlzcGxheS1z
dWJzeXN0ZW06IGJvdW5kIGZmOTAwMDAwLnZvcCAob3BzIAo+IHZvcF9jb21wb25lbnRfb3BzKQo+
IFvCoMKgwqAgMC45MzQxMTddIHJvY2tjaGlwLWRybSBkaXNwbGF5LXN1YnN5c3RlbTogYm91bmQg
ZmY5NzAwMDAuZWRwIChvcHMgCj4gcm9ja2NoaXBfZHBfY29tcG9uZW50X29wcykKPiBbwqDCoMKg
IDAuOTM0ODc4XSBbZHJtXSBTdXBwb3J0cyB2YmxhbmsgdGltZXN0YW1wIGNhY2hpbmcgUmV2IDIg
Cj4gKDIxLjEwLjIwMTMpLgo+IFvCoMKgwqAgMC45MzU0NTldIFtkcm1dIE5vIGRyaXZlciBzdXBw
b3J0IGZvciB2YmxhbmsgdGltZXN0YW1wIHF1ZXJ5Lgo+IFvCoMKgwqAgMC45NTY3MDhdIG1tYzA6
IG5ldyBIUzQwMCBNTUMgY2FyZCBhdCBhZGRyZXNzIDAwMDEKPiBbwqDCoMKgIDAuOTU4MjYxXSBt
bWNibGswOiBtbWMwOjAwMDEgQVdQRDNSIDE0LjYgR2lCCj4gW8KgwqDCoCAwLjk1ODk1Ml0gbW1j
YmxrMGJvb3QwOiBtbWMwOjAwMDEgQVdQRDNSIHBhcnRpdGlvbiAxIDQuMDAgTWlCCj4gW8KgwqDC
oCAwLjk1OTgwNF0gbW1jYmxrMGJvb3QxOiBtbWMwOjAwMDEgQVdQRDNSIHBhcnRpdGlvbiAyIDQu
MDAgTWlCCj4gW8KgwqDCoCAwLjk2MDU0MF0gbW1jYmxrMHJwbWI6IG1tYzA6MDAwMSBBV1BEM1Ig
cGFydGl0aW9uIDMgNC4wMCBNaUIsIAo+IGNoYXJkZXYgKDI0MjowKQo+IFvCoMKgwqAgMC45NjU0
MjhdIHJvY2tjaGlwLWRwIGZmOTcwMDAwLmVkcDogQVVYIENIIGVycm9yIGhhcHBlbmVkOiAweDcg
KDEpCj4gW8KgwqDCoCAwLjk2NjIyOF0gcm9ja2NoaXAtZHAgZmY5NzAwMDAuZWRwOiBBVVggQ0gg
ZXJyb3IgaGFwcGVuZWQ6IDB4NyAoMSkKPiBbwqDCoMKgIDAuOTY3MDI1XSByb2NrY2hpcC1kcCBm
Zjk3MDAwMC5lZHA6IEFVWCBDSCBlcnJvciBoYXBwZW5lZDogMHg3ICgxKQo+IFvCoMKgwqAgMC45
NjcxMDRdwqAgbW1jYmxrMDogcDEgcDIgcDMgcDQgcDUKPiBbwqDCoMKgIDAuOTY3ODIzXSByb2Nr
Y2hpcC1kcCBmZjk3MDAwMC5lZHA6IEFVWCBDSCBlcnJvciBoYXBwZW5lZDogMHg3ICgxKQo+IFvC
oMKgwqAgMC45Njg2MjBdIHJvY2tjaGlwLWRwIGZmOTcwMDAwLmVkcDogQVVYIENIIGVycm9yIGhh
cHBlbmVkOiAweDcgKDEpCj4gW8KgwqDCoCAwLjk2OTQxN10gcm9ja2NoaXAtZHAgZmY5NzAwMDAu
ZWRwOiBBVVggQ0ggZXJyb3IgaGFwcGVuZWQ6IDB4NyAoMSkKPiBbwqDCoMKgIDAuOTcwMjE2XSBy
b2NrY2hpcC1kcCBmZjk3MDAwMC5lZHA6IEFVWCBDSCBlcnJvciBoYXBwZW5lZDogMHg3ICgxKQo+
IFvCoMKgwqAgMC45NzEwMTJdIHJvY2tjaGlwLWRwIGZmOTcwMDAwLmVkcDogQVVYIENIIGVycm9y
IGhhcHBlbmVkOiAweDcgKDEpCj4gW8KgwqDCoCAwLjk3MTgxMV0gcm9ja2NoaXAtZHAgZmY5NzAw
MDAuZWRwOiBBVVggQ0ggZXJyb3IgaGFwcGVuZWQ6IDB4NyAoMSkKPiBbwqDCoMKgIDAuOTcyNjA4
XSByb2NrY2hpcC1kcCBmZjk3MDAwMC5lZHA6IEFVWCBDSCBlcnJvciBoYXBwZW5lZDogMHg3ICgx
KQo+IFvCoMKgwqAgMC45NzM0MDRdIHJvY2tjaGlwLWRwIGZmOTcwMDAwLmVkcDogQVVYIENIIGVy
cm9yIGhhcHBlbmVkOiAweDcgKDEpCj4gW8KgwqDCoCAwLjk3NDIwMV0gcm9ja2NoaXAtZHAgZmY5
NzAwMDAuZWRwOiBBVVggQ0ggZXJyb3IgaGFwcGVuZWQ6IDB4NyAoMSkKPiBbwqDCoMKgIDAuOTc0
OTk4XSByb2NrY2hpcC1kcCBmZjk3MDAwMC5lZHA6IEFVWCBDSCBlcnJvciBoYXBwZW5lZDogMHg3
ICgxKQo+IFvCoMKgwqAgMC45NzU3OTldIHJvY2tjaGlwLWRwIGZmOTcwMDAwLmVkcDogQVVYIENI
IGVycm9yIGhhcHBlbmVkOiAweDcgKDEpCj4gW8KgwqDCoCAwLjk3NjU5Nl0gcm9ja2NoaXAtZHAg
ZmY5NzAwMDAuZWRwOiBBVVggQ0ggZXJyb3IgaGFwcGVuZWQ6IDB4NyAoMSkKPiBbwqDCoMKgIDAu
OTc3MzkzXSByb2NrY2hpcC1kcCBmZjk3MDAwMC5lZHA6IEFVWCBDSCBlcnJvciBoYXBwZW5lZDog
MHg3ICgxKQo+IFvCoMKgwqAgMC45NzgxODldIHJvY2tjaGlwLWRwIGZmOTcwMDAwLmVkcDogQVVY
IENIIGVycm9yIGhhcHBlbmVkOiAweDcgKDEpCj4gW8KgwqDCoCAwLjk3ODk4Nl0gcm9ja2NoaXAt
ZHAgZmY5NzAwMDAuZWRwOiBBVVggQ0ggZXJyb3IgaGFwcGVuZWQ6IDB4NyAoMSkKPiBbwqDCoMKg
IDAuOTc5Nzg2XSByb2NrY2hpcC1kcCBmZjk3MDAwMC5lZHA6IEFVWCBDSCBlcnJvciBoYXBwZW5l
ZDogMHg3ICgxKQo+IFvCoMKgwqAgMC45ODA1ODRdIHJvY2tjaGlwLWRwIGZmOTcwMDAwLmVkcDog
QVVYIENIIGVycm9yIGhhcHBlbmVkOiAweDcgKDEpCj4KVGhhbmtzIGZvciB0aGUgdGVzdHMuIEkg
d2lsbCBjaGVjayB0aGUgY29kZSBhZ2FpbiwgYWx0aG91Z2ggSSd2ZSB0cmllZCAKbm90IHRvIGNo
YW5nZSB0aGUgY29kZSBmbG93IGF0IGFsbC4uLiBJZiBhbnlvbmUgaGFzIGEgc3VnZ2VzdGlvbiB3
aGF0IHRvIApjaGVjaywgbGV0IG1lIGtub3cuCgogPiBbLi4uXQoKQmVzdCByZWdhcmRzCi0tIApN
YXJlayBTenlwcm93c2tpLCBQaEQKU2Ftc3VuZyBSJkQgSW5zdGl0dXRlIFBvbGFuZAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
