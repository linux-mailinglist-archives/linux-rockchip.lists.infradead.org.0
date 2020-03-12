Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 821D9182C37
	for <lists+linux-rockchip@lfdr.de>; Thu, 12 Mar 2020 10:17:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y1Onxi5YYmA/T3GhlKhn/JtZgAXjrnAjRpL5TQnD7Ns=; b=nEkvKNJLwb7cxa
	Ida569GAy2vywBzL325FM1+X6UeKYybAVev/z/trF8N6MOLZNO0frWmYlttT+7L7a0ga+R7gqTbak
	zjeRi/+agZ59/aqY2mtShbMA9dnJKstAW3K+iyM54ZT9/EytC+kd5dGOUTtEoU4vFMh874YNgP8Uy
	uln7Qj5LdWLyVk0PUprkuFWsnL0ufW3s/6ryoaoxqUyR7s0FZgLW71JWWjzyJtnNdQ51xeeI7gNGp
	jixDKhBBqqGP4SweZSab18xf0St92FeTkT+doHjKw70DCeHTeAFyvJJVKfLe8WaQS8R8NZPAKMyJh
	EK0/LMW3DP4gZj7LMkSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCJyO-0001cB-5N; Thu, 12 Mar 2020 09:17:48 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCJyK-0001bK-5S
 for linux-rockchip@lists.infradead.org; Thu, 12 Mar 2020 09:17:45 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200312091741euoutp01ea29d8ed0878af27dbde97c3e73f59d3~7g9j8LqyY2031520315euoutp01L
 for <linux-rockchip@lists.infradead.org>; Thu, 12 Mar 2020 09:17:41 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200312091741euoutp01ea29d8ed0878af27dbde97c3e73f59d3~7g9j8LqyY2031520315euoutp01L
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1584004661;
 bh=EgS01AJXAw4endn2MFPkJtrJ+FnKs9oauKWXYk0E9U8=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=TCk4G8fVttCATPlya7mZuH1Dfed1Dm6UoYfskeAXkQPANOVTLRs+CxQ/wKcSbaD3L
 1fGziPs+9lP4tabTuo353s1RTNzoYE/zmaPv2602/ziojTXx7F/Ovz4YSPQB3zTxnU
 VNM1x0yWaLOHLWpahCxIA1lc7+gdWIyQx8oRZjHM=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200312091741eucas1p15a6dae6117ac10c11c0b3738443f7a37~7g9jo2vB_1355513555eucas1p1q;
 Thu, 12 Mar 2020 09:17:41 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id E6.FE.60698.53EF96E5; Thu, 12
 Mar 2020 09:17:41 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20200312091741eucas1p118c87eb8c223a5ab31e9db488f84779c~7g9jVhzAP1341313413eucas1p1v;
 Thu, 12 Mar 2020 09:17:41 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200312091741eusmtrp141683eb301109c34e832289bf0ad5233~7g9jUvkSI3209432094eusmtrp1U;
 Thu, 12 Mar 2020 09:17:41 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-04-5e69fe35a71b
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id ED.28.08375.53EF96E5; Thu, 12
 Mar 2020 09:17:41 +0000 (GMT)
Received: from [106.120.51.74] (unknown [106.120.51.74]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200312091740eusmtip1e3dbb8be0b0654dc26f698eb262acdb3~7g9ioN8F20994209942eusmtip1d;
 Thu, 12 Mar 2020 09:17:40 +0000 (GMT)
Subject: Re: [PATCH v2] drm/bridge: analogix_dp: Split bind() into probe()
 and real bind()
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 dri-devel@lists.freedesktop.org, linux-samsung-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org
From: Andrzej Hajda <a.hajda@samsung.com>
Message-ID: <78cf2af3-3fbe-c381-b96d-fb14d959f6e8@samsung.com>
Date: Thu, 12 Mar 2020 10:17:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200310103427.26048-1-m.szyprowski@samsung.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRjHeXfOtrPR5Hg0fNRMGwTd1MSMQxcr6sMhIcQPEZWXlYcp6ZRN
 nRresGxpmTlKd1QqcbXEsryVQsuGecEroaCiGWjRMjO8haLW5pnkt9/z/p/n/zx/eAmM+iz0
 IGJVSaxapYiTi6R4U/tyn2/QemzEweYKOX2vfwTRr0trhfTg4qyIrijOoIf+WDHatGAQ010/
 h3D69v0qMT335S9Gl/abBfSLtnExbSm8RJfqraKTMmZ2+KaYaebGxUyZziBkOos+CZiJgg4B
 U1+Vxaxx73GmsKEaMa139TgzX7czVHpReiyajYtNYdX+wVHSmKWWeUFiHZm6pnuAZaNJWT6S
 EEAegtapGVE+khIUaUJgLuFwvlhAYBjrcyjzCCZXirDNEYN51CE8Q/CyZlXIFzMIPuimbQpB
 uJCXYdiA2d9dyTIEo+3fNnwxcl0A32vmkN1KRO6FtfoRkZ1lZDCYKnLFdsbJ3fDbko/beTt5
 AR6+WUd8jzN0GaY23iW2fuu7no1+jPSG3MYyjGc3GJ16JLAvAzKHgLxZ+92ErTgDPeVhfAQX
 +NHRIOZ5B3Tr7+A8Z8GE6QbGz+oQNL5qdmQ+CmN9KxvJMNvRtS3+vOUp+DWdyaMTDM848xc4
 QXFTiWOpDHR5FO+xCyZ6Gx1+bmAcWBQVITm3JRe3JQu3JQv3f+1jhFcjNzZZE69kNYEqVuun
 UcRrklVKv6sJ8XXI9uu61zsW3yLz6hULIgkk3yYrmo+JoISKFE1avAUBgcldZZHeyghKFq1I
 S2fVCZHq5DhWY0GeBC53kwVWWsMpUqlIYq+xbCKr3lQFhMQjG+UEK2Pblr8+9xnkhg7vGS/G
 nUpvaRs6loyU5HyYiftYub9ca+w+kuxnrQ0QaLVYRroqQ18WqsurAtNpycCKU/H0gbnI66Er
 ZizavaWntWHCd66z3yuz4Fx3b7WxPlXZHhX+VBlwfFWJvEJ8gkI8Kaq+wD1ssVmPnTWeeLIm
 xzUxioB9mFqj+AcjJbeacQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrCIsWRmVeSWpSXmKPExsVy+t/xu7qm/zLjDObv4bboP3+T0WLjjPWs
 Fle+vmezmDup1uLq95fMFiu+zGS3OPnmKotF58Ql7BafHvxntphxfh+Txdojd9ktDvVFW8yY
 /JLNgdfj/Y1Wdo+ds+6ye8zumMnqcWLCJSaP+93HmTw2L6n3+DtrP4tH35ZVjB4HeiezeHze
 JBfAFaVnU5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdobB5rZWSqpG9nk5Kak1mWWqRvl6CX
 8W3XZ6aCTQIVfzumMjcwPubtYuTkkBAwkZi57xZbFyMXh5DAUkaJSwufsUMkxCV2z3/LDGEL
 S/y51gVV9JpR4sPS04wgCWGBGIk1e16AJUQEZjNKrDuwih3EYRZoYJY41fOfGaJlIqPEzfOn
 weayCWhK/N18kw3E5hWwk1gxtxksziKgKvHhUBcLiC0qECHxeGI7I0SNoMTJmU/A4pxA9S/3
 ngGrZxZQl/gz7xIzhC0v0bx1NpQtLnHryXymCYxCs5C0z0LSMgtJyywkLQsYWVYxiqSWFuem
 5xYb6hUn5haX5qXrJefnbmIExvi2Yz8372C8tDH4EKMAB6MSD++EzxlxQqyJZcWVuYcYJTiY
 lUR44+XT44R4UxIrq1KL8uOLSnNSiw8xmgI9N5FZSjQ5H5h+8kriDU0NzS0sDc2NzY3NLJTE
 eTsEDsYICaQnlqRmp6YWpBbB9DFxcEo1MEZMK+au0FvdtXmBZdjSznfS0xSk3L5W/o/aH/N5
 UddNy8XvbN4WPUpZc6dpteb7yxPYddXvxwc+Tf+lLZbr32tp0h7UNPnz6rafk6cpmcTxpzIp
 Xd3Ovse554XkqfY5B1l2GNsvnfbDaIWuffyUx2/XnHk1ybTu3KKVe/MnFxR8/f126TM+6XtK
 LMUZiYZazEXFiQAPfudBBwMAAA==
X-CMS-MailID: 20200312091741eucas1p118c87eb8c223a5ab31e9db488f84779c
X-Msg-Generator: CA
X-RootMTR: 20200310104049eucas1p107e1ec61456fce4c830d3232a400b32f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200310104049eucas1p107e1ec61456fce4c830d3232a400b32f
References: <CGME20200310104049eucas1p107e1ec61456fce4c830d3232a400b32f@eucas1p1.samsung.com>
 <20200310103427.26048-1-m.szyprowski@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_021744_413503_8257D794 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>, Jonas Karlman <jonas@kwiboo.se>,
 Jingoo Han <jingoohan1@gmail.com>, Neil Armstrong <narmstrong@baylibre.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Sandy Huang <hjc@rock-chips.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gMTAuMDMuMjAyMCAxMTozNCwgTWFyZWsgU3p5cHJvd3NraSB3cm90ZToKPiBBbmFsb2dpeF9k
cCBkcml2ZXIgYWNxdWlyZXMgYWxsIGl0cyByZXNvdXJjZXMgaW4gdGhlIC0+YmluZCgpIGNhbGxi
YWNrLAo+IHdoYXQgaXMgYSBiaXQgYWdhaW5zdCB0aGUgY29tcG9uZW50IGRyaXZlciBiYXNlZCBh
cHByb2FjaCwgd2hlcmUgdGhlCj4gZHJpdmVyIGluaXRpYWxpemF0aW9uIGlzIHNwbGl0IGludG8g
YSBwcm9iZSgpLCB3aGVyZSBhbGwgcmVzb3VyY2VzIGFyZQo+IGdhdGhlcmVkLCBhbmQgYSBiaW5k
KCksIHdoZXJlIGFsbCBvYmplY3RzIGFyZSBjcmVhdGVkIGFuZCBhIGNvbXBvdW5kCj4gZHJpdmVy
IGlzIGluaXRpYWxpemVkLgo+Cj4gRXh0cmFjdCBhbGwgdGhlIHJlc291cmNlIHJlbGF0ZWQgb3Bl
cmF0aW9ucyB0byBhbmFsb2dpeF9kcF9wcm9iZSgpIGFuZAo+IGFuYWxvZ2l4X2RwX3JlbW92ZSgp
LCB0aGVuIGNhbGwgdGhlbSBiZWZvcmUvYWZ0ZXIgcmVnaXN0cmF0aW9uIG9mIHRoZQo+IGRldmlj
ZSBjb21wb25lbnRzIGZyb20gdGhlIG1haW4gRXh5bm9zIERQIGFuZCBSb2NrY2hpcCBEUCBkcml2
ZXJzLiBBbHNvCj4gbW92ZSB0aGUgcGxhdF9kYXRhIGluaXRpYWxpemF0aW9uIHRvIHRoZSBwcm9i
ZSgpIHRvIG1ha2UgaXQgYXZhaWxhYmxlIGZvcgo+IHRoZSBhbmFsb2dpeF9kcF9wcm9iZSgpIGZ1
bmN0aW9uLgo+Cj4gVGhpcyBmaXhlcyB0aGUgbXVsdGlwbGUgY2FsbHMgdG8gdGhlIGJpbmQoKSBv
ZiB0aGUgRFJNIGNvbXBvdW5kIGRyaXZlcgo+IHdoZW4gdGhlIERQIFBIWSBkcml2ZXIgaXMgbm90
IHlldCBsb2FkZWQvcHJvYmVkOgo+Cj4gW2RybV0gRXh5bm9zIERSTTogdXNpbmcgMTQ0MDAwMDAu
ZmltZCBkZXZpY2UgZm9yIERNQSBtYXBwaW5nIG9wZXJhdGlvbnMKPiBleHlub3MtZHJtIGV4eW5v
cy1kcm06IGJvdW5kIDE0NDAwMDAwLmZpbWQgKG9wcyBmaW1kX2NvbXBvbmVudF9vcHMgW2V4eW5v
c2RybV0pCj4gZXh5bm9zLWRybSBleHlub3MtZHJtOiBib3VuZCAxNDQ1MDAwMC5taXhlciAob3Bz
IG1peGVyX2NvbXBvbmVudF9vcHMgW2V4eW5vc2RybV0pCj4gZXh5bm9zLWRwIDE0NWIwMDAwLmRw
LWNvbnRyb2xsZXI6IG5vIERQIHBoeSBjb25maWd1cmVkCj4gZXh5bm9zLWRybSBleHlub3MtZHJt
OiBmYWlsZWQgdG8gYmluZCAxNDViMDAwMC5kcC1jb250cm9sbGVyIChvcHMgZXh5bm9zX2RwX29w
cyBbZXh5bm9zZHJtXSk6IC01MTcKPiBleHlub3MtZHJtIGV4eW5vcy1kcm06IG1hc3RlciBiaW5k
IGZhaWxlZDogLTUxNwo+IC4uLgo+IFtkcm1dIEV4eW5vcyBEUk06IHVzaW5nIDE0NDAwMDAwLmZp
bWQgZGV2aWNlIGZvciBETUEgbWFwcGluZyBvcGVyYXRpb25zCj4gZXh5bm9zLWRybSBleHlub3Mt
ZHJtOiBib3VuZCAxNDQwMDAwMC5maW1kIChvcHMgaGRtaV9lbmFibGUgW2V4eW5vc2RybV0pCj4g
ZXh5bm9zLWRybSBleHlub3MtZHJtOiBib3VuZCAxNDQ1MDAwMC5taXhlciAob3BzIGhkbWlfZW5h
YmxlIFtleHlub3Nkcm1dKQo+IGV4eW5vcy1kcm0gZXh5bm9zLWRybTogYm91bmQgMTQ1YjAwMDAu
ZHAtY29udHJvbGxlciAob3BzIGhkbWlfZW5hYmxlIFtleHlub3Nkcm1dKQo+IGV4eW5vcy1kcm0g
ZXh5bm9zLWRybTogYm91bmQgMTQ1MzAwMDAuaGRtaSAob3BzIGhkbWlfZW5hYmxlIFtleHlub3Nk
cm1dKQo+IFtkcm1dIFN1cHBvcnRzIHZibGFuayB0aW1lc3RhbXAgY2FjaGluZyBSZXYgMiAoMjEu
MTAuMjAxMykuCj4gQ29uc29sZTogc3dpdGNoaW5nIHRvIGNvbG91ciBmcmFtZSBidWZmZXIgZGV2
aWNlIDE3MHg0OAo+IGV4eW5vcy1kcm0gZXh5bm9zLWRybTogZmIwOiBleHlub3Nkcm1mYiBmcmFt
ZSBidWZmZXIgZGV2aWNlCj4gW2RybV0gSW5pdGlhbGl6ZWQgZXh5bm9zIDEuMS4wIDIwMTgwMzMw
IGZvciBleHlub3MtZHJtIG9uIG1pbm9yIDEKPiAuLi4KPgo+IFNpZ25lZC1vZmYtYnk6IE1hcmVr
IFN6eXByb3dza2kgPG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KCgpSZXZpZXdlZC1ieTogQW5k
cnplaiBIYWpkYSA8YS5oYWpkYUBzYW1zdW5nLmNvbT4KCsKgLS0KUmVnYXJkcwpBbmRyemVqCgoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
