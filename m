Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31363116801
	for <lists+linux-rockchip@lfdr.de>; Mon,  9 Dec 2019 09:18:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bFoZ8z+z3oKWTUSlcsoFv5WNvuISLmQgPqrLVWu1j6w=; b=NclUY3DQk7flvXdpSiLbbklna
	PBf6FiB0ghKFum1+jn2a3kslKLtSPjIdDVatLr2gz9cZnBHJRj17Om4k1DXvbB/81kqgcNtMvMBju
	IPQQuK9ymPZn9HxwTWuTC58eBXAu7Y/tWB6AcGJQ7CZOXI9osVQV7loN2XvpOEAMvg/N1Xyf/tsY0
	ThhrGY8upXeFAguUrLA9Eo1YVOI2AFSz8dyO2q3hdrTdRFFn7RkTaKQ0PXkyp7O1NzN/kUpWJJhhz
	V2NepCNGZGcAKe9o0tj1cwY+XxpYc2uYVE4PCDEBwzOQQ4L29L61CVTO3B24FdDAs/ccnWh8SRHWJ
	EjPfaqBkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieEFI-0008R9-2f; Mon, 09 Dec 2019 08:18:20 +0000
Received: from regular1.263xmail.com ([211.150.70.206])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieEFC-0008Py-K6
 for linux-rockchip@lists.infradead.org; Mon, 09 Dec 2019 08:18:17 +0000
Received: from localhost (unknown [192.168.167.16])
 by regular1.263xmail.com (Postfix) with ESMTP id 87D59296;
 Mon,  9 Dec 2019 16:18:01 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.9] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P30016T140340956382976S1575879481407888_; 
 Mon, 09 Dec 2019 16:18:02 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <8481befb3c8f69f16db87c6b1a8b1d32>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: maxime.chevallier@bootlin.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH] MAINTAINERS: rockchip: Track more files
To: Miquel Raynal <miquel.raynal@bootlin.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
References: <20191204090710.11646-1-miquel.raynal@bootlin.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <e4dc0f27-6a26-3b29-11fd-231f686fce91@rock-chips.com>
Date: Mon, 9 Dec 2019 16:18:00 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191204090710.11646-1-miquel.raynal@bootlin.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_001814_857358_C842525A 
X-CRM114-Status: GOOD (  17.33  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.206 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-kernel@vger.kernel.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgTWlxdWVsLAoKT24gMjAxOS8xMi80IOS4i+WNiDU6MDcsIE1pcXVlbCBSYXluYWwgd3JvdGU6
Cj4gVGhlIGN1cnJlbnQgbGlzdCBtaXNzZXMgYSBsb3Qgb2YgZHJpdmVycyBub3QgcHJlZml4ZWQg
b3Igc3VmZml4ZWQgYnkKPiAicm9ja2NoaXAiLiBGb3IgaW5zdGFuY2UsIHRoZXJlIGFyZSBwbGVu
dHkgZHJpdmVycyBjYWxsZWQgcms4MDggYW5kCj4gcms4MDUgd2hpY2ggYXJlIGN1cnJlbnRseSBu
b3QgdHJhY2tlZCAoY2xrLCByZWd1bGF0b3IsIHBpbmN0cmwsIFJUQywKPiBNRkQsIGluY2x1ZGVz
LCBiaW5kaW5ncykuIEFkZCB0aGVtIHRvIHRoZSBsaXN0IHVuZGVyIHRoZSBSb2NrY2hpcAo+IGVu
dHJ5Lgo+Cj4gU2lnbmVkLW9mZi1ieTogTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJheW5hbEBib290
bGluLmNvbT4KPiAtLS0KPgo+IEhpIEhlaWtvLAo+Cj4gWW91IGFyZSByaWdodCB3ZSBzaG91bGQg
dHJ5IHRvIGNoZWNrIG1vcmUgb2Z0ZW4geW91ciB0cmVlLiBBbHNvLCBoZXJlCj4gaXMgYSBwYXRj
aCBzbyB0aGF0IHlvdSBhcmUgQ2MnZWQgZm9yIGFsbCBSb2NrY2hpcCByZWxhdGVkIHBhdGNoZXMK
PiBiZWNhdXNlIHRoZSBjdXJyZW50IGxpc3QgaXMgbm90IGV4aGF1c3RpdmUgYXQgYWxsIChub3Qg
c3VyZSBpdCBpcwo+IHZvbHVudGFyeSBvciBub3QgdGhvdWdoKS4KPgo+IENoZWVycywKPiBNaXF1
w6hsCj4KPiAgIE1BSU5UQUlORVJTIHwgNCArKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNl
cnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvTUFJTlRBSU5FUlMgYi9NQUlOVEFJTkVSUwo+IGlu
ZGV4IGNiYTEwOTU1NDdmZC4uYTk1NjRlNmNiODcyIDEwMDY0NAo+IC0tLSBhL01BSU5UQUlORVJT
Cj4gKysrIGIvTUFJTlRBSU5FUlMKPiBAQCAtMjE5OCwxMiArMjE5OCwxNiBAQCBMOglsaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gICBUOglnaXQgZ2l0Oi8vZ2l0Lmtlcm5lbC5v
cmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L21taW5kL2xpbnV4LXJvY2tjaGlwLmdpdAo+ICAg
UzoJTWFpbnRhaW5lZAo+ICAgRjoJRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2ky
Yy9pMmMtcmszeC50eHQKPiArRjoJRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzLyov
KnJrODAqCj4gICBGOglhcmNoL2FybS9ib290L2R0cy9yazMqCj4gICBGOglhcmNoL2FybS9ib290
L2R0cy9ydjExMDgqCj4gICBGOglhcmNoL2FybS9tYWNoLXJvY2tjaGlwLwo+ICtGOglpbmNsdWRl
LyovKi9yazgwOC5oCj4gK0Y6CWluY2x1ZGUvKi8qLyovcms4MDguaAo+ICAgRjoJZHJpdmVycy9j
bGsvcm9ja2NoaXAvCj4gICBGOglkcml2ZXJzL2kyYy9idXNzZXMvaTJjLXJrM3guYwo+ICAgRjoJ
ZHJpdmVycy8qLypyb2NrY2hpcCoKPiArRjoJZHJpdmVycy8qLypyazgwKgo+ICAgRjoJZHJpdmVy
cy8qLyovKnJvY2tjaGlwKgo+ICAgRjoJc291bmQvc29jL3JvY2tjaGlwLwo+ICAgTjoJcm9ja2No
aXAKRm9yIHRoZSBSb2NrY2hpcCBQTUlDLCBpcyBpdCBiZXR0ZXIgdG8gaGF2ZSBhIE5FVyBNQUlO
VEFJTkVSIGVudHJ5IGxpa2UgCiJST0NLQ0hJUCBQTUlDIERSSVZFUiIKd2hpY2ggc2hhcmUgdGhl
IHNhbWUgbWFpbGluZyBsaXN0IGxpbnV4LXJvY2tjaGlwQCwgYmVjYXVzZSB0aGVyZSBpcyBub3Qg
Cm9ubHkgcms4MDgsCmJ1dCBhbHNvIHJrODA1LCByazgwOSwgcms4MTcsIHJrODE4LCBhbmQgbWF5
IGJlIG1vcmUgdG8gY29tZS4KCkJUVywgd2Ugc2hvdWxkIHVzZSAncms4JyBpbnN0ZWFkIG9mICdy
azgwJyB0byBtYXRjaCBhbGwgdGhlIFJvY2tjaGlwIFBNSUNzLgoKClRoYW5rcywKLSBLZXZlcgoK
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
