Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E9D6082E
	for <lists+linux-rockchip@lfdr.de>; Fri,  5 Jul 2019 16:45:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:To:Subject:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q5HAH2gBmTy5NSs6uzReqEGhuIKvA01SVLe0h9NwHQ8=; b=jEBy2POZUa4LOx
	Z/vZTtXuIkXYLjddF6w5b5YznP4gY09knFT4gmUdZtiFUm4m/YvblLjrg5Xc+IsdH8fALvri684FM
	LNyhJVuxnxFNsRyUuNAKjC+PkW6P4Z4AwSrjbAxlimWrlFsjgF0EpPCN8dA/h1g0KQ/DvwB9f6NtI
	MkOUOrTMgyXjvnWrgQCyF9MnI1ngf0VwykYpZAY57bZgjgoNGrkk8uFHxHDSTIc05CcOAllsxROkC
	g5b28qH6Uj3Ucmjwp0I4xnyCIHqDGN7775a0o5bmPdLhmDDRLgx03lfHhAkV8rI0pweac254+rxZ6
	NThOQ7OYCKmekqINxP6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPSP-0007JZ-9M; Fri, 05 Jul 2019 14:45:01 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPR6-0005dG-RE
 for linux-rockchip@bombadil.infradead.org; Fri, 05 Jul 2019 14:43:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:Content-Type:
 Content-Transfer-Encoding:In-Reply-To:MIME-Version:Date:Message-ID:Cc:To:
 Subject:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/YVEsi66lwSu49bAR68WZXj+/SwnNGXKt6i6wK82uC4=; b=NxXetdjLyG+3i6Ai5pYIqIHhn
 YYnS1Ra8HAbVhzTnnvwFHZZFKcJ2q6Waf0IuJzlcpigTX5qWIW2Mgxpsl/+VS72nfkD8unIAtKE5I
 skiuTCFKLQytGbkd6IUBb8SzSxt8W5bR69obS+4ajXolCqNxHZCudWAAqiagkMxljjJKBlKmCTvXg
 iqBBm3M4tpgH/0S/ljSSdjqqJ+qZxX6u3wI3u3BzQW1gJE3h0YvjLuyB144+6s7aWYOTfif4lWsKo
 +kxNg1uGt+BsnuQAvOL8LgsbRr7wwihcO6iA+eHw4BxWcZt9iBpa25A6sxSDHstUIRCf0SUMphMyy
 jXPhPRngQ==;
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjKmi-0000tJ-G2
 for linux-rockchip@lists.infradead.org; Fri, 05 Jul 2019 09:45:43 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190705094504euoutp01ae7324a2ab9f008c111ac7b14b0bc4f0~uea0IJNIY2530625306euoutp01n
 for <linux-rockchip@lists.infradead.org>; Fri,  5 Jul 2019 09:45:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190705094504euoutp01ae7324a2ab9f008c111ac7b14b0bc4f0~uea0IJNIY2530625306euoutp01n
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1562319904;
 bh=/YVEsi66lwSu49bAR68WZXj+/SwnNGXKt6i6wK82uC4=;
 h=From:Subject:To:Cc:Date:In-Reply-To:References:From;
 b=BiX8MFKj+8wLY9Rh5P66Ukcii/Q7SMfeSb3NrWVPA9JMG4uLnV87CBYonWLdEKtLv
 R5t9La2qF7WNMtcHCPJJrV2dTUWyB8aIbuoVjPI3NL8H+z72D2Xbu/6XIomifxGr/n
 LL5qFFVZFPiud9H/msqfMc8FhCkECGUGGmUqNA6g=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190705094503eucas1p11a6774d62daff12e73144934008fdb9e~ueay9Vr1R2639526395eucas1p1v;
 Fri,  5 Jul 2019 09:45:03 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 3B.D3.04325.F1C1F1D5; Fri,  5
 Jul 2019 10:45:03 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190705094502eucas1p18b0fc7460ad84d6cc55f64d416bc91c9~ueayMWPah0076400764eucas1p11;
 Fri,  5 Jul 2019 09:45:02 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190705094502eusmtrp2459a396d075eba54453395d48519ea68~ueax92Cjk1904119041eusmtrp2_;
 Fri,  5 Jul 2019 09:45:02 +0000 (GMT)
X-AuditID: cbfec7f5-b8fff700000010e5-e4-5d1f1c1fa1e0
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 06.84.04146.E1C1F1D5; Fri,  5
 Jul 2019 10:45:02 +0100 (BST)
Received: from [106.120.51.74] (unknown [106.120.51.74]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190705094501eusmtip231c460c06efaa00064f19d611405d35a~ueaw1lyA81553915539eusmtip2c;
 Fri,  5 Jul 2019 09:45:01 +0000 (GMT)
From: Andrzej Hajda <a.hajda@samsung.com>
Subject: Re: [PATCH v3 01/22] drm: Include ddc adapter pointer in struct
 drm_connector
To: Thomas Zimmermann <tzimmermann@suse.de>, Andrzej Pietrasiewicz
 <andrzej.p@collabora.com>, dri-devel@lists.freedesktop.org
Message-ID: <ef458f71-d061-4a8f-c53c-aa325b577d42@samsung.com>
Date: Fri, 5 Jul 2019 11:44:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <9e65f3c0-941d-d04c-5745-6b3a2965b990@suse.de>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA01Se0xTVxz29D56aaw7FE1/cQTiVRMfEWUzeOITzZLd/bclZhqVSZUbNPJw
 LbgpJjhxBhg4KBGldFgUlFQzsC1oIUBSxVodVER8MLF1KBsEfLbKVGC9XMz47zvfd77f7/tO
 Dkdp/mBnc7vTMkR9mi6FZ1V0w7V/vUuiI6MTlnWe+oQUdngUpLvHoiClD5sYUl37k5Kc7XtE
 k2Ff6DjeUEyRqoCXIXeCz1li/rsdEaOviCb2jgKGWI87aeL11ilJXnGVktj67jKkuLVdSboa
 zSzpyulE5JV/nCInvS0KkhcwsaTyZT1N/AOtiPQ+uk6T0Us2mvSWXEXkH4eWnCwZYIljqJiJ
 jxJ+vj3KChUXsoTLvVVIaH5joYXy3DJGsFnzWOHSGz8jVHi+EXy/uBWCvSpb+HV0meBu7FEK
 z1u6WeGYw4oE+80s4bUt6mu8RbU6SUzZvU/UL12bqNrV0vTVXrv2x46/WqlDaEiTj8I4wMvB
 0vyCykcqToNrEJjt1UpJ0OAAgqePI2ThNYL+nAD70RE4egHJwjkELvdpWnYMIwgE1kiYxQth
 1P5gwhCBN0Peu1uUhGfibLg4MjyxjsKVHHisDyYENV4LxsLzIcxxNJ4HzYNxEj0r5L1xtYKW
 r4SDp+zJBA7Dq8B5rImRMIWjIae+nJKxFnqenFJI8wGfC4MXdaVKOfUXMFRXOtkgAgbdjkk+
 EsadkkHC2eCrOULJ5lwE9XVOShZWwRV3JyOFo0LNahuXyvR6qB0sRBINeAbcHw6XM8wAY8MJ
 SqbVkHt08qXngK+9fnKgFqpvBdkixJumNDNNaWOa0sb0/14Loq1IK2YaUpNFw+dp4g8xBl2q
 ITMtOWZneqoNhf74zTF38DJq+bDDhTCH+OnqRDYqQcPo9hn2p7oQcBQ/U/32fWSCRp2k239A
 1Kdv12emiAYX+pSjea06a5p/qwYn6zLEPaK4V9R/VBVc2OxDaMU6+/qR7m+T7LpyfpMRlpRg
 7Gr+/l3infzzYxsOamuu82PP+lYc/11VZjYvfpjkPEN/ubl/QdeWaVzP6rlGbXBN0WdtI+qs
 RcYU38LYlXNHLIr0+MeHN/bTv92L47fFv/0uLrYyY0PMAtWf/oKNwfkDmHOoottueMLvFeS+
 H2hbztOGXbrYRZTeoPsPyhHfod8DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrEKsWRmVeSWpSXmKPExsVy+t/xe7pyMvKxBicuS1n0njvJZHH11gIm
 i2l3drNaLF3fyG6x7PE9Fou394Hc/9smMlss+XKe1eLK1/dsFnOen2W0mHR/AovF5nM9rBar
 pu5ksTh/fgO7RefEJewWmx5fY7WYuP8su8XlXXPYLC43X2S0+PTgP7PFjPP7mCw6v8xis1j4
 cSuLxYOX+xkt7t47wWLxd/smFou7k48wWrzYIm4xY/JLNostbyayOsh5tF76y+Yxb021x467
 Sxg99n5bwOIxu2Mmq8emVZ1sHtu/PWD1mHcy0ON+93Emj81L6j36/xp4HN91i93j/b6rbB59
 W1Yxemw+Xe3xeZNcgECUnk1RfmlJqkJGfnGJrVK0oYWRnqGlhZ6RiaWeobF5rJWRqZK+nU1K
 ak5mWWqRvl2CXsa+3Z4Fm8Urzj3az9zA+Eaoi5GTQ0LAROJL2xrGLkYuDiGBpYwSe97eZoVI
 iEvsnv+WGcIWlvhzrYsNoug1o8S/t91sIAk2AU2Jv5tvgtnCAhESnb8uMIMUiQg0MkocXrGc
 CcRhFljKIbH2/XsWiPZNzBIPdn1iAWnhFbCTmNS7GqiFg4NFQEVi7yszkLAo0KRJ13ZClQhK
 nJz5BMzmFLCW2Nm3G+w8ZgF1iT/zLjFD2PISzVtnQ9niEreezGeawCg0C0n7LCQts5C0zELS
 soCRZRWjSGppcW56brGhXnFibnFpXrpecn7uJkZg+tp27OfmHYyXNgYfYhTgYFTi4U1gk4sV
 Yk0sK67MPcQowcGsJML7/bdMrBBvSmJlVWpRfnxRaU5q8SFGU6DfJjJLiSbnA1NrXkm8oamh
 uYWlobmxubGZhZI4b4fAwRghgfTEktTs1NSC1CKYPiYOTqkGxkZzE35zr6nO7g1rfa1aygL3
 +UnM95w8/U3Pu5x5syOOz5/dwNF+KK380V+PQxUh67++XlNbkfs36tv3BdtDRG/fj3rpIeo7
 vyFT9WvwOcGfAvvmTuCaOcsq9PdtHT7fcPO3jL3eP3Tn523/c1A06/9SnqSF5v8Kfc+e/X7T
 dPKu1AUqfGLnvimxFGckGmoxFxUnAgB/3OWEdQMAAA==
X-CMS-MailID: 20190705094502eucas1p18b0fc7460ad84d6cc55f64d416bc91c9
X-Msg-Generator: CA
X-RootMTR: 20190701144119epcas1p211ec60b63f3c6ae02392e2ae67f1a4ba
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190701144119epcas1p211ec60b63f3c6ae02392e2ae67f1a4ba
References: <3fb19371-db7d-f9dc-31a7-1ccd126f6784@collabora.com>
 <cover.1561735433.git.andrzej.p@collabora.com>
 <d6381c020ea1c848a7044d830bdb0ec9663d1619.1561735433.git.andrzej.p@collabora.com>
 <9b03d145-ec50-927c-55a8-dff1cd51d655@suse.de>
 <cf1984e4-50af-302d-ef67-9ad530118c29@collabora.com>
 <CGME20190701144119epcas1p211ec60b63f3c6ae02392e2ae67f1a4ba@epcas1p2.samsung.com>
 <9e65f3c0-941d-d04c-5745-6b3a2965b990@suse.de>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: David Airlie <airlied@linux.ie>, Krzysztof Kozlowski <krzk@kernel.org>,
 kernel@collabora.com, "David
 \(ChunMing\) Zhou" <David1.Zhou@amd.com>, linux-samsung-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, amd-gfx@lists.freedesktop.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, Dave Airlie <airlied@redhat.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Inki Dae <inki.dae@samsung.com>, linux-mediatek@lists.infradead.org,
 linux-tegra@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org,
 freedreno@lists.freedesktop.org, Seung-Woo Kim <sw0312.kim@samsung.com>,
 linux-kernel@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Alex Deucher <alexander.deucher@amd.com>, Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gMDEuMDcuMjAxOSAxNjo0MSwgVGhvbWFzIFppbW1lcm1hbm4gd3JvdGU6Cj4gSGkKPgo+IEFt
IDAxLjA3LjE5IHVtIDE1OjI3IHNjaHJpZWIgQW5kcnplaiBQaWV0cmFzaWV3aWN6Ogo+PiBIaSBU
aG9tYXMsCj4+Cj4+IFRoYW5rIHlvdSBmb3IgeW91ciBjb21tZW50cy4gUGxlYXNlIHNlZSBpbmxp
bmUuCj4+Cj4+IFcgZG5pdSAzMC4wNi4yMDE5IG/CoDEwOjEyLCBUaG9tYXMgWmltbWVybWFubiBw
aXN6ZToKPj4+IEhpCj4+Pgo+Pj4gSSBsaWtlIHRoZSBpZGVhLCBidXQgd291bGQgcHJlZmVyIGEg
bW9yZSBzdHJ1Y3R1cmVkIGFwcHJvYWNoLgo+Pj4KPj4+IFNldHRpbmcgY29ubmVjdG9yLT5kZGMg
YmVmb3JlIGNhbGxpbmcgZHJtX3N5c2ZzX2Nvbm5lY3Rvcl9hZGQoKSBzZWVtcwo+Pj4gZXJyb3Ig
cHJvbmUuIFRoZSBkZXBlbmRlbmN5IGlzIG5vdCByZWFsbHkgY2xlYXIgZnJvbSB0aGUgY29kZSBv
cgo+Pj4gaW50ZXJmYWNlcy4KPj4+Cj4+PiBUaGUgb3RoZXIgdGhpbmcgaXMgdGhhdCBkcml2ZXJz
IEkgbW9zdGx5IHdvcmsgb24sIGFzdCBhbmQgbWdhZzIwMCwgaGF2ZQo+Pj4gY29kZSBsaWtlIHRo
aXM6Cj4+Pgo+Pj4gwqDCoCBzdHJ1Y3QgYXN0X2kyY19jaGFuIHsKPj4+IMKgwqDCoMKgc3RydWN0
IGkyY19hZGFwdGVyIGFkYXB0ZXI7Cj4+PiDCoMKgwqDCoHN0cnVjdCBkcm1fZGV2aWNlICpkZXY7
Cj4+PiDCoMKgwqDCoHN0cnVjdCBpMmNfYWxnb19iaXRfZGF0YSBiaXQ7Cj4+PiDCoMKgIH07Cj4+
Pgo+Pj4gwqDCoCBzdHJ1Y3QgYXN0X2Nvbm5lY3RvciB7Cj4+PiDCoMKgwqDCoHN0cnVjdCBkcm1f
Y29ubmVjdG9yIGJhc2U7Cj4+PiDCoMKgwqDCoHN0cnVjdCBhc3RfaTJjX2NoYW4gKmkyYzsKPj4+
IMKgwqAgfTsKPj4+Cj4+PiBJdCBhbHJlYWR5IGVuY29kZXMgdGhlIGNvbm5lY3Rpb24gYmV0d2Vl
biBjb25uZWN0b3IgYW5kIGRkYyBhZGFwdGVyLgo+Pj4KPj4+IEkgc3VnZ2VzdCB0byBpbnRyb2R1
Y2Ugc3RydWN0IGRybV9pMmNfYWRhcHRlcgo+Pj4KPj4+IMKgwqAgc3RydWN0IGRybV9pMmNfYWRh
cHRlciB7Cj4+PiDCoMKgwqDCoHN0cnVjdCBpMmNfYWRhcHRlciBiYXNlOwo+Pj4gwqDCoMKgwqBz
dHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yOwo+Pj4gwqDCoCB9Owo+Pj4KPj4+IGFuZCBj
b252ZXJ0IGRyaXZlcnMgb3ZlciB0byBpdC4gQXN0IHdvdWxkIGxvb2sgbGlrZSB0aGlzOgo+Pj4K
Pj4+IMKgwqAgc3RydWN0IGFzdF9pMmNfY2hhbiB7Cj4+PiDCoMKgwqDCoHN0cnVjdCBkcm1faTJj
X2FkYXB0ZXIgYWRhcHRlcjsKPj4+IMKgwqDCoMKgc3RydWN0IGkyY19hbGdvX2JpdF9kYXRhIGJp
dDsKPj4+IMKgwqAgfTsKPj4+Cj4+IFRoZXJlIGFyZSBmZXcgZmxhdm9ycyBvZiB0aGVzZSBkcml2
ZXJzLiBJbiBzb21lIG9mIHRoZW0KPj4gdGhlIGkyY19hZGFwdGVyIGZvciBkZGMgaXMgYWxsb2Nh
dGVkIGFuZCBpbml0aWFsaXplZCBieQo+PiB0aGUgZHJpdmVyLCB3aGljaCBtdXN0IHByb3ZpZGUg
YSBwbGFjZSBpbiBtZW1vcnkgdG8gaG9sZAo+PiB0aGUgYWRhcHRlci4gYXN0IGlzIGFuIGV4YW1w
bGUgb2YgdGhpcyBhcHByb2FjaC4KPj4KPj4gQnV0IHRoZXJlIGFyZSBvdGhlcnMsIHN1Y2ggYXMg
Zm9yIGV4YW1wbGUgZXh5bm9zX2hkbWkuYy4KPj4gSXQgZ2V0cyBpdHMgZGRjIGFkYXB0ZXIgd2l0
aCBvZl9maW5kX2kyY19hZGFwdGVyX2J5X25vZGUoKQo+PiBhbmQgbWVyZWx5IHN0b3JlcyBhIHBv
aW50ZXIgdG8gaXQsIHdoaWxlIG5vdCBtYW5hZ2luZyB0aGUKPj4gbWVtb3J5IG5lZWRlZCB0byBo
b2xkIHRoZSBpMmNfYWRhcHRlci4KPiBJIHNlZS4KPgo+PiBEbyB5b3UgaGF2ZSBhbnkgaWRlYSBo
b3cgdG8gYWNjb21tb2RhdGUgdGhlc2UgdmFyaW91cwo+PiBmbGF2b3JzIG9mIGRyaXZlcnMgaW4g
dGhlIHNjaGVtZSB5b3UgcHJvcG9zZT8KPiBTb21ldGhpbmcgbGlrZQo+Cj4gICBzdHJ1Y3QgZHJt
X2kyY19hZGFwdGVyIHsKPiAJc3RydWN0IGkyY19hZGFwdGVyICphZGFwdGVyOwo+IAlzdHJ1Y3Qg
ZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yOwo+ICAgfTsKPgo+IHdpdGggYWRhcHRlciBlaXRoZXIg
YmVpbmcgYWxsb2NhdGVkIGR5bmFtaWNhbGx5IG9yIGFjcXVpcmVkIHZpYQo+IG9mX2ZpbmRfaTJj
X2FkYXB0ZXJfYnlfbm9kZSgpOyB3aXRoIHNlcGFyYXRlIGluaXQgYW5kIGZpbmlzaCBmdW5jdGlv
bnMKPiBmb3IgZWFjaCB2YXJpYW50LiBCdXQgaXQgbG9va3MgbGlrZSBvdmVyLWFic3RyYWN0aW9u
IHRvIG1lLiBXaXRob3V0Cj4gcHJvdG90eXBpbmcgdGhlIGlkZWEsIEkgY2Fubm90IHNheSBpZiBp
dCdzIHdvcnRoIHRoZSBlZmZvcnQuCj4KPiBGb3Igc29tZXRoaW5nIG1vcmUgc2ltcGxlLCBtYXli
ZSBqdXN0IGhhdmUgYSBmdW5jdGlvbiB0byBhdHRhY2ggYW4gaTJjCj4gYWRhcHRlciB0byBhIGNv
bm5lY3RvcjoKPgo+ICAgZHJtX2Nvbm5lY3Rvcl9hdHRhY2hfaTJjX2FkYXB0ZXIoY29ubmVjdG9y
LCBpMmNfYWRhcHRlcikKPgo+IHdoaWNoIHNldHMgdGhlIGNvbm5lY3RvcidzIGRkYyBwb2ludGVy
IGFuZCBjcmVhdGVzIHRoZSBzeXNmcyBlbnRyeSBpZgo+IHRoZSBjb25uZWN0b3IncyBlbnRyeSBp
cyBhbHJlYWR5IHByZXNlbnQuCgoKSSBhbSBub3Qgc3VyZSBpZiBzdWNoIGZ1bmN0aW9uIGlzIHJl
YWxseSBuZWNlc3NhcnkuIEFzc2lnbmluZyBkZGMgZmllbGQKYmVmb3JlIGNvbm5lY3RvciByZWdp
c3RyYXRpb24gc2VlbXMgdG8gYmUgbXVjaCBzaW1wbGVyIGFuZCBxdWl0ZQpzdGFuZGFyZCAtIG1h
bnkgZmllbGRzIGFyZSBpbml0aWFsaXplZCB0aGlzIHdheS4KCgpSZXZpZXdlZC1ieTogQW5kcnpl
aiBIYWpkYSA8YS5oYWpkYUBzYW1zdW5nLmNvbT4KCsKgLS0KUmVnYXJkcwpBbmRyemVqCgoKCj4g
QmVzdCByZWdhcmRzCj4gVGhvbWFzCj4KPj4gQW5kcnplago+Pgo+PgoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
