Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 742DB11E1E8
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Dec 2019 11:27:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KSuOiz/zysnJz+EZv61KkfS9NI8zaLQFn7wT3nbuZDo=; b=inPTpZM5JOA6Ar
	mArri+Z1uZifD0lqJboZ0pVS0Aci/BhBIv/cSuURY7RW6UqQHu0gJrcDv4gnzX1IF0LFovn2tdTkH
	9HdYf/vsPi2t5ZbhbKrXQj5GYybVioTiwyfbOdoWK6Jba0X4/BthCUVcabhanmiEO9p5uKXg8X0dE
	vRYNy7hRQDSWen1b49ZlIgl2ZBp7gs0jDd6vtnBymtr36/tW03Z5ZV+MGXJxgN6wb4dXaRFUFT3F5
	gJa/yKCCs39YOM0Ld5TRyp05HVRyZcwzg2MPpiMG5GesDiM7Vnu3B4O9sj/mvtuaTJB9ucscWfbl4
	wElDVhSdGb5Piupn2ttg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifiAa-0006pL-2H; Fri, 13 Dec 2019 10:27:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifiAW-0006oy-VP
 for linux-rockchip@lists.infradead.org; Fri, 13 Dec 2019 10:27:34 +0000
Received: from wf0651.dip.tu-dresden.de ([141.76.182.139] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <heiko@sntech.de>)
 id 1ifiAU-00015Z-9i; Fri, 13 Dec 2019 11:27:30 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH] MAINTAINERS: rockchip: Track more files
Date: Fri, 13 Dec 2019 11:27:29 +0100
Message-ID: <3160577.NKkQCOVCmZ@phil>
In-Reply-To: <e4dc0f27-6a26-3b29-11fd-231f686fce91@rock-chips.com>
References: <20191204090710.11646-1-miquel.raynal@bootlin.com>
 <e4dc0f27-6a26-3b29-11fd-231f686fce91@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_022733_161669_8A9744B2 
X-CRM114-Status: GOOD (  19.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

QW0gTW9udGFnLCA5LiBEZXplbWJlciAyMDE5LCAwOToxODowMCBDRVQgc2NocmllYiBLZXZlciBZ
YW5nOgo+IEhpIE1pcXVlbCwKPiAKPiBPbiAyMDE5LzEyLzQg5LiL5Y2INTowNywgTWlxdWVsIFJh
eW5hbCB3cm90ZToKPiA+IFRoZSBjdXJyZW50IGxpc3QgbWlzc2VzIGEgbG90IG9mIGRyaXZlcnMg
bm90IHByZWZpeGVkIG9yIHN1ZmZpeGVkIGJ5Cj4gPiAicm9ja2NoaXAiLiBGb3IgaW5zdGFuY2Us
IHRoZXJlIGFyZSBwbGVudHkgZHJpdmVycyBjYWxsZWQgcms4MDggYW5kCj4gPiByazgwNSB3aGlj
aCBhcmUgY3VycmVudGx5IG5vdCB0cmFja2VkIChjbGssIHJlZ3VsYXRvciwgcGluY3RybCwgUlRD
LAo+ID4gTUZELCBpbmNsdWRlcywgYmluZGluZ3MpLiBBZGQgdGhlbSB0byB0aGUgbGlzdCB1bmRl
ciB0aGUgUm9ja2NoaXAKPiA+IGVudHJ5Lgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IE1pcXVlbCBS
YXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+Cj4gPiAtLS0KPiA+Cj4gPiBIaSBIZWlr
bywKPiA+Cj4gPiBZb3UgYXJlIHJpZ2h0IHdlIHNob3VsZCB0cnkgdG8gY2hlY2sgbW9yZSBvZnRl
biB5b3VyIHRyZWUuIEFsc28sIGhlcmUKPiA+IGlzIGEgcGF0Y2ggc28gdGhhdCB5b3UgYXJlIENj
J2VkIGZvciBhbGwgUm9ja2NoaXAgcmVsYXRlZCBwYXRjaGVzCj4gPiBiZWNhdXNlIHRoZSBjdXJy
ZW50IGxpc3QgaXMgbm90IGV4aGF1c3RpdmUgYXQgYWxsIChub3Qgc3VyZSBpdCBpcwo+ID4gdm9s
dW50YXJ5IG9yIG5vdCB0aG91Z2gpLgo+ID4KPiA+IENoZWVycywKPiA+IE1pcXXDqGwKPiA+Cj4g
PiAgIE1BSU5UQUlORVJTIHwgNCArKysrCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlv
bnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvTUFJTlRBSU5FUlMgYi9NQUlOVEFJTkVSUwo+ID4g
aW5kZXggY2JhMTA5NTU0N2ZkLi5hOTU2NGU2Y2I4NzIgMTAwNjQ0Cj4gPiAtLS0gYS9NQUlOVEFJ
TkVSUwo+ID4gKysrIGIvTUFJTlRBSU5FUlMKPiA+IEBAIC0yMTk4LDEyICsyMTk4LDE2IEBAIEw6
CWxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiA+ICAgVDoJZ2l0IGdpdDovL2dp
dC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9tbWluZC9saW51eC1yb2NrY2hp
cC5naXQKPiA+ICAgUzoJTWFpbnRhaW5lZAo+ID4gICBGOglEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvaTJjL2kyYy1yazN4LnR4dAo+ID4gK0Y6CURvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy8qLypyazgwKgo+ID4gICBGOglhcmNoL2FybS9ib290L2R0cy9yazMqCj4g
PiAgIEY6CWFyY2gvYXJtL2Jvb3QvZHRzL3J2MTEwOCoKPiA+ICAgRjoJYXJjaC9hcm0vbWFjaC1y
b2NrY2hpcC8KPiA+ICtGOglpbmNsdWRlLyovKi9yazgwOC5oCj4gPiArRjoJaW5jbHVkZS8qLyov
Ki9yazgwOC5oCj4gPiAgIEY6CWRyaXZlcnMvY2xrL3JvY2tjaGlwLwo+ID4gICBGOglkcml2ZXJz
L2kyYy9idXNzZXMvaTJjLXJrM3guYwo+ID4gICBGOglkcml2ZXJzLyovKnJvY2tjaGlwKgo+ID4g
K0Y6CWRyaXZlcnMvKi8qcms4MCoKPiA+ICAgRjoJZHJpdmVycy8qLyovKnJvY2tjaGlwKgo+ID4g
ICBGOglzb3VuZC9zb2Mvcm9ja2NoaXAvCj4gPiAgIE46CXJvY2tjaGlwCj4gRm9yIHRoZSBSb2Nr
Y2hpcCBQTUlDLCBpcyBpdCBiZXR0ZXIgdG8gaGF2ZSBhIE5FVyBNQUlOVEFJTkVSIGVudHJ5IGxp
a2UgCj4gIlJPQ0tDSElQIFBNSUMgRFJJVkVSIgo+IHdoaWNoIHNoYXJlIHRoZSBzYW1lIG1haWxp
bmcgbGlzdCBsaW51eC1yb2NrY2hpcEAsIGJlY2F1c2UgdGhlcmUgaXMgbm90IAo+IG9ubHkgcms4
MDgsCj4gYnV0IGFsc28gcms4MDUsIHJrODA5LCByazgxNywgcms4MTgsIGFuZCBtYXkgYmUgbW9y
ZSB0byBjb21lLgo+IAo+IEJUVywgd2Ugc2hvdWxkIHVzZSAncms4JyBpbnN0ZWFkIG9mICdyazgw
JyB0byBtYXRjaCBhbGwgdGhlIFJvY2tjaGlwIFBNSUNzLgoKeWVwLCBJIGFncmVlIHdpdGggS2V2
ZXIgb24gdGhpcyAuLi4gYWxzbyB0aGF0IG5ldyBwbWljLXJlbGF0ZWQgZW50cnkgc2hvdWxkCm5v
dCByZWFsbHkgbGluayB0byBhIGdpdCB0cmVlIGFzIHBhdGNoZXMgZm9yIGl0IHdpbGwgZ2V0IGRp
c3RyaWJ1dGVkIHRocm91Z2gKbXVsdGlwbGUgdHJlZXMgKG1mZCwgcmVndWxhdG9yLCBydGMpIG1v
c3Qgb2YgdGhlIHRpbWUuCgpNaXF1ZWwgY2FuIHlvdSBkbyBhIHYyIHBsZWFzZT8KClRoYW5rcwpI
ZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
