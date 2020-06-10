Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 196FC1F5275
	for <lists+linux-rockchip@lfdr.de>; Wed, 10 Jun 2020 12:38:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IY/BIzYRe5GbolaogRdsyr4+FxcmeWNMLVoQ/2zz6Pk=; b=pFaKkrXmNpezC7
	BmLQhj+TpWFx2pjqjh5R3dKazCxdqV/4EATgIjF5uMxct9JXIyAuP9Uzf/VPqB2tulPogevuzr2Qi
	C1sciaihVjsXy9el5IDyJERGUDBw9moOe8b/cSBvpyaAb4xG4hQzbQizNx6Sg+P6TMiBWX/kUeOjz
	OfZOV7B/ohQ+ohVtZYkY/fSpJLTOvWobRtcvjcyRCMFigiuRAjoH3d1e8lzocqvd1mumSPtniBais
	4O0+EB+QvAVMCGdPVhcXpuPzwTwp8+TXGNaZBD8uNeY2A1HtAkLZ9drxL7zppfgor8WkqMOYRN1Xl
	yX9yD0K47JO+VVVfnWiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiy7K-000559-Dq; Wed, 10 Jun 2020 10:37:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiy7I-00054o-0r
 for linux-rockchip@lists.infradead.org; Wed, 10 Jun 2020 10:37:57 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 91F42206F7;
 Wed, 10 Jun 2020 10:37:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591785475;
 bh=unj+bDeTM9fOHOLXyvvzW5zaczB/Zm7P+S7gpr9QXkU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=IybCrIIIeArEOnjyF/g26wFDO+W/ajQOHWiwuiwrxt6+am8eHRulBvOROiuEm4/2q
 0F0qyzB/JQT4j+zo9t0+ZN8YrNoWGSBlOWlV7shckFOsoSoiwZrmvwEBX/QR/MmyUD
 bC7uwGblthzHL6cfBFTyOMU94SPQYgsRMjt2+2Q4=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jiy7F-001ktN-Vy; Wed, 10 Jun 2020 11:37:54 +0100
Date: Wed, 10 Jun 2020 11:37:52 +0100
From: Marc Zyngier <maz@kernel.org>
To: Jaehoon Chung <jh80.chung@samsung.com>
Subject: Re: [PATCH v2] mmc: sdhci: Fix HISPD bit handling
Message-ID: <20200610113752.65d6f537@why>
In-Reply-To: <b46fe992-89d4-4a5f-fdb3-e2ec53de2b11@samsung.com>
References: <20200609140135.131887-1-jagan@amarulasolutions.com>
 <CGME20200609143823epcas1p24772f20296869f9a7dc5ed53460ea0a4@epcas1p2.samsung.com>
 <097786ed-37ca-cf20-35f4-20a57e6c3b63@arm.com>
 <b46fe992-89d4-4a5f-fdb3-e2ec53de2b11@samsung.com>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: jh80.chung@samsung.com, robin.murphy@arm.com,
 jagan@amarulasolutions.com, peng.fan@nxp.com, kever.yang@rock-chips.com,
 u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, sunil@amarulasolutions.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_033756_101347_48D02C40 
X-CRM114-Status: GOOD (  18.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Peng Fan <peng.fan@nxp.com>, u-boot@lists.denx.de,
 linux-amarula@amarulasolutions.com, Kever Yang <kever.yang@rock-chips.com>,
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>,
 sunil@amarulasolutions.com, Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gV2VkLCAxMCBKdW4gMjAyMCAxMjo0NTozMyArMDkwMApKYWVob29uIENodW5nIDxqaDgwLmNo
dW5nQHNhbXN1bmcuY29tPiB3cm90ZToKCj4gT24gNi85LzIwIDExOjM4IFBNLCBSb2JpbiBNdXJw
aHkgd3JvdGU6Cj4gPiBPbiAyMDIwLTA2LTA5IDE1OjAxLCBKYWdhbiBUZWtpIHdyb3RlOiAgCj4g
Pj4gU0RIQ0kgSElTUEQgYml0cyBuZWVkIHRvIGJlIGNvbmZpZ3VyZWQgYmFzZWQgb24gZGVzaXJl
ZCBtbWMKPiA+PiB0aW1pbmdzIG1vZGUgYW5kIHNvbWUgSElTUEQgcXVpcmtzLgo+ID4+Cj4gPj4g
U28sIGhhbmRsZSB0aGUgSElTUEQgYml0IGJhc2VkIG9uIHRoZSBtbWMgY29tcHV0ZWQgc2VsZWN0
ZWQKPiA+PiBtb2RlKHRpbWluZyBwYXJhbWV0ZXIpIHJhdGhlciB0aGFuIGZpeGVkIG1tYyBjYXJk
IGNsb2NrCj4gPj4gZnJlcXVlbmN5Lgo+ID4+Cj4gPj4gTGludXggaGFuZGxlIHRoZSBISVNQRCBz
aW1pbGFyIGxpa2UgdGhpcyBpbiBiZWxvdyBjb21taXQsCj4gPj4KPiA+PiBjb21taXQgPDUwMTYz
OWJmMjE3Mz4gKCJtbWM6IHNkaGNpOiBmaXggU0RIQ0lfUVVJUktfTk9fSElTUERfQklUIGhhbmRs
aW5nIikKPiA+Pgo+ID4+IFRoaXMgZXZlbnR1YWxseSBmaXhlZCB0aGUgbW1jIHdyaXRlIGlzc3Vl
IG9ic2VydmVkIGluCj4gPj4gcmszMzk5IHNkaGNpIGNvbnRyb2xsZXIuCj4gPj4KPiA+PiBCdWcg
bG9nIGZvciByZWZlcm5lY2UsICAKPiA+PiA9PiBncHQgd3JpdGUgbW1jIDAgJHBhcnRpdGlvbnMg
IAo+ID4+IFdyaXRpbmcgR1BUOiBtbWMgd3JpdGUgZmFpbGVkCj4gPj4gKiogQ2FuJ3Qgd3JpdGUg
dG8gZGV2aWNlIDAgKioKPiA+PiAqKiBDYW4ndCB3cml0ZSB0byBkZXZpY2UgMCAqKgo+ID4+IGVy
cm9yIQo+ID4+Cj4gPj4gQ2M6IEtldmVyIFlhbmcgPGtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+
Cj4gPj4gQ2M6IFBlbmcgRmFuIDxwZW5nLmZhbkBueHAuY29tPgo+ID4+IFJldmlld2VkLWJ5OiBK
YWVob29uIENodW5nIDxqaDgwLmNodW5nQHNhbXN1bmcuY29tPgo+ID4+IFNpZ25lZC1vZmYtYnk6
IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+ID4+IC0tLQo+ID4+IENo
YW5nZXMgZm9yIHYyOgo+ID4+IC0gY29sbGVjdCBKYWVob29uIFItYgo+ID4+Cj4gPj4gwqAgZHJp
dmVycy9tbWMvc2RoY2kuYyB8IDIzICsrKysrKysrKysrKysrKy0tLS0tLS0tCj4gPj4gwqAgMSBm
aWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCj4gPj4KPiA+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9tbWMvc2RoY2kuYyBiL2RyaXZlcnMvbW1jL3NkaGNpLmMKPiA+
PiBpbmRleCA5MmNjODQzNGFmLi4yODBiOGM4OGViIDEwMDY0NAo+ID4+IC0tLSBhL2RyaXZlcnMv
bW1jL3NkaGNpLmMKPiA+PiArKysgYi9kcml2ZXJzL21tYy9zZGhjaS5jCj4gPj4gQEAgLTU5NCwx
NCArNTk0LDIxIEBAIHN0YXRpYyBpbnQgc2RoY2lfc2V0X2lvcyhzdHJ1Y3QgbW1jICptbWMpCj4g
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY3RybCAmPSB+U0RIQ0lfQ1RSTF80QklUQlVT
Owo+ID4+IMKgwqDCoMKgwqAgfQo+ID4+IMKgIC3CoMKgwqAgaWYgKG1tYy0+Y2xvY2sgPiAyNjAw
MDAwMCkKPiA+PiAtwqDCoMKgwqDCoMKgwqAgY3RybCB8PSBTREhDSV9DVFJMX0hJU1BEOwo+ID4+
IC3CoMKgwqAgZWxzZQo+ID4+IC3CoMKgwqDCoMKgwqDCoCBjdHJsICY9IH5TREhDSV9DVFJMX0hJ
U1BEOwo+ID4+IC0KPiA+PiAtwqDCoMKgIGlmICgoaG9zdC0+cXVpcmtzICYgU0RIQ0lfUVVJUktf
Tk9fSElTUERfQklUKSB8fAo+ID4+IC3CoMKgwqDCoMKgwqDCoCAoaG9zdC0+cXVpcmtzICYgU0RI
Q0lfUVVJUktfQlJPS0VOX0hJU1BEX01PREUpKQo+ID4+IC3CoMKgwqDCoMKgwqDCoCBjdHJsICY9
IH5TREhDSV9DVFJMX0hJU1BEOwo+ID4+ICvCoMKgwqAgaWYgKCEoaG9zdC0+cXVpcmtzICYgU0RI
Q0lfUVVJUktfTk9fSElTUERfQklUKSB8fCAgCj4gPiAKPiA+IFNob3VsZCB0aGF0IGJlICImJiIg
cmF0aGVyIHRoYW4gInx8Ij8gT3RoZXJ3aXNlIHRoaXMgd2lsbCBhbHdheXMKPiA+IGV2YWx1YXRl
IHRvIHRydWUgdW5sZXNzICpib3RoKiBxdWlya3MgYXJlIHNldCwgd2hpY2ggaXNuJ3QKPiA+IGVx
dWl2YWxlbnQgdG8gdGhlIGNoZWNrIGJlaW5nIHJlbW92ZWQgYWJvdmUuICAKPiAKPiAKPiBZb3Un
cmUgcmlnaHQuCgpJdCdkIGJlIGdyZWF0IGlmIHlvdSBjb3VsZCByZXNwaW4gdGhpcyBwYXRjaCBx
dWlja2x5IGFuZCBnZXQgaXQgbWVyZ2VkLAphcyBpdCBqdXN0IGhlbHBlZCBtZSBnZXR0aW5nIG15
IE5hbm9QQy1UNCB1cCBhbmQgcnVubmluZy4KCkZXSVc6CgpUZXN0ZWQtYnk6IE1hcmMgWnluZ2ll
ciA8bWF6QGtlcm5lbC5vcmc+CgoJTS4KLS0gCkphenogaXMgbm90IGRlYWQuIEl0IGp1c3Qgc21l
bGxzIGZ1bm55Li4uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
