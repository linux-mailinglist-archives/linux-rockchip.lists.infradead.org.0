Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E278D11E20C
	for <lists+linux-rockchip@lfdr.de>; Fri, 13 Dec 2019 11:35:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6unzG3fECxHidI6Er46VjHxUbr3v/Ly1fbYE5zuFWEk=; b=hs1VH93flv0zC/
	dqUz0QWJJidaX6SvwtgHsYQHsdCkR726lIXB796rwRk0yq8kQgig2ELPZJ7RXqgMv8lj3Ln3LHkXX
	QLb9k+XhHsB5JYrDqMtT4RTdmaDsEusZf3IvuQW2bpXKPeptmiqRljKQe9H73KvF3sJOO2P+bdM/K
	Cj3mCGpk7f9npTPLcmvm/b7moW7dr2l8/13eYL1/dYKrPZvavI6dYCOFJuDmEScgC/bkjhWX7gMis
	IUasD1sKIiLp1ROB48se3Yhh99KzwVimjBkusVYrHb4Ti8D3PIwTHpgokXOk3Cv3Kcrb1a+WzWrik
	TaBNRF0Kq1ZcXoZdT6fA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifiIR-0001f2-Ev; Fri, 13 Dec 2019 10:35:43 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifiIN-0001eU-9F
 for linux-rockchip@lists.infradead.org; Fri, 13 Dec 2019 10:35:41 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id C3164E0007;
 Fri, 13 Dec 2019 10:35:29 +0000 (UTC)
Date: Fri, 13 Dec 2019 11:35:28 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] MAINTAINERS: rockchip: Track more files
Message-ID: <20191213113528.2e06e1f4@xps13>
In-Reply-To: <3160577.NKkQCOVCmZ@phil>
References: <20191204090710.11646-1-miquel.raynal@bootlin.com>
 <e4dc0f27-6a26-3b29-11fd-231f686fce91@rock-chips.com>
 <3160577.NKkQCOVCmZ@phil>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_023539_813065_3D015D90 
X-CRM114-Status: GOOD (  21.26  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org, Kever Yang <kever.yang@rock-chips.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgSGVpa28sCgpIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZSBvbiBGcmks
IDEzIERlYyAyMDE5IDExOjI3OjI5CiswMTAwOgoKPiBBbSBNb250YWcsIDkuIERlemVtYmVyIDIw
MTksIDA5OjE4OjAwIENFVCBzY2hyaWViIEtldmVyIFlhbmc6Cj4gPiBIaSBNaXF1ZWwsCj4gPiAK
PiA+IE9uIDIwMTkvMTIvNCDkuIvljYg1OjA3LCBNaXF1ZWwgUmF5bmFsIHdyb3RlOiAgCj4gPiA+
IFRoZSBjdXJyZW50IGxpc3QgbWlzc2VzIGEgbG90IG9mIGRyaXZlcnMgbm90IHByZWZpeGVkIG9y
IHN1ZmZpeGVkIGJ5Cj4gPiA+ICJyb2NrY2hpcCIuIEZvciBpbnN0YW5jZSwgdGhlcmUgYXJlIHBs
ZW50eSBkcml2ZXJzIGNhbGxlZCByazgwOCBhbmQKPiA+ID4gcms4MDUgd2hpY2ggYXJlIGN1cnJl
bnRseSBub3QgdHJhY2tlZCAoY2xrLCByZWd1bGF0b3IsIHBpbmN0cmwsIFJUQywKPiA+ID4gTUZE
LCBpbmNsdWRlcywgYmluZGluZ3MpLiBBZGQgdGhlbSB0byB0aGUgbGlzdCB1bmRlciB0aGUgUm9j
a2NoaXAKPiA+ID4gZW50cnkuCj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IE1pcXVlbCBSYXlu
YWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+Cj4gPiA+IC0tLQo+ID4gPgo+ID4gPiBIaSBI
ZWlrbywKPiA+ID4KPiA+ID4gWW91IGFyZSByaWdodCB3ZSBzaG91bGQgdHJ5IHRvIGNoZWNrIG1v
cmUgb2Z0ZW4geW91ciB0cmVlLiBBbHNvLCBoZXJlCj4gPiA+IGlzIGEgcGF0Y2ggc28gdGhhdCB5
b3UgYXJlIENjJ2VkIGZvciBhbGwgUm9ja2NoaXAgcmVsYXRlZCBwYXRjaGVzCj4gPiA+IGJlY2F1
c2UgdGhlIGN1cnJlbnQgbGlzdCBpcyBub3QgZXhoYXVzdGl2ZSBhdCBhbGwgKG5vdCBzdXJlIGl0
IGlzCj4gPiA+IHZvbHVudGFyeSBvciBub3QgdGhvdWdoKS4KPiA+ID4KPiA+ID4gQ2hlZXJzLAo+
ID4gPiBNaXF1w6hsCj4gPiA+Cj4gPiA+ICAgTUFJTlRBSU5FUlMgfCA0ICsrKysKPiA+ID4gICAx
IGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9N
QUlOVEFJTkVSUyBiL01BSU5UQUlORVJTCj4gPiA+IGluZGV4IGNiYTEwOTU1NDdmZC4uYTk1NjRl
NmNiODcyIDEwMDY0NAo+ID4gPiAtLS0gYS9NQUlOVEFJTkVSUwo+ID4gPiArKysgYi9NQUlOVEFJ
TkVSUwo+ID4gPiBAQCAtMjE5OCwxMiArMjE5OCwxNiBAQCBMOglsaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCj4gPiA+ICAgVDoJZ2l0IGdpdDovL2dpdC5rZXJuZWwub3JnL3B1Yi9z
Y20vbGludXgva2VybmVsL2dpdC9tbWluZC9saW51eC1yb2NrY2hpcC5naXQKPiA+ID4gICBTOglN
YWludGFpbmVkCj4gPiA+ICAgRjoJRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2ky
Yy9pMmMtcmszeC50eHQKPiA+ID4gK0Y6CURvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy8qLypyazgwKgo+ID4gPiAgIEY6CWFyY2gvYXJtL2Jvb3QvZHRzL3JrMyoKPiA+ID4gICBGOglh
cmNoL2FybS9ib290L2R0cy9ydjExMDgqCj4gPiA+ICAgRjoJYXJjaC9hcm0vbWFjaC1yb2NrY2hp
cC8KPiA+ID4gK0Y6CWluY2x1ZGUvKi8qL3JrODA4LmgKPiA+ID4gK0Y6CWluY2x1ZGUvKi8qLyov
cms4MDguaAo+ID4gPiAgIEY6CWRyaXZlcnMvY2xrL3JvY2tjaGlwLwo+ID4gPiAgIEY6CWRyaXZl
cnMvaTJjL2J1c3Nlcy9pMmMtcmszeC5jCj4gPiA+ICAgRjoJZHJpdmVycy8qLypyb2NrY2hpcCoK
PiA+ID4gK0Y6CWRyaXZlcnMvKi8qcms4MCoKPiA+ID4gICBGOglkcml2ZXJzLyovKi8qcm9ja2No
aXAqCj4gPiA+ICAgRjoJc291bmQvc29jL3JvY2tjaGlwLwo+ID4gPiAgIE46CXJvY2tjaGlwICAK
PiA+IEZvciB0aGUgUm9ja2NoaXAgUE1JQywgaXMgaXQgYmV0dGVyIHRvIGhhdmUgYSBORVcgTUFJ
TlRBSU5FUiBlbnRyeSBsaWtlIAo+ID4gIlJPQ0tDSElQIFBNSUMgRFJJVkVSIgo+ID4gd2hpY2gg
c2hhcmUgdGhlIHNhbWUgbWFpbGluZyBsaXN0IGxpbnV4LXJvY2tjaGlwQCwgYmVjYXVzZSB0aGVy
ZSBpcyBub3QgCj4gPiBvbmx5IHJrODA4LAo+ID4gYnV0IGFsc28gcms4MDUsIHJrODA5LCByazgx
Nywgcms4MTgsIGFuZCBtYXkgYmUgbW9yZSB0byBjb21lLgo+ID4gCj4gPiBCVFcsIHdlIHNob3Vs
ZCB1c2UgJ3JrOCcgaW5zdGVhZCBvZiAncms4MCcgdG8gbWF0Y2ggYWxsIHRoZSBSb2NrY2hpcCBQ
TUlDcy4gIAo+IAo+IHllcCwgSSBhZ3JlZSB3aXRoIEtldmVyIG9uIHRoaXMgLi4uIGFsc28gdGhh
dCBuZXcgcG1pYy1yZWxhdGVkIGVudHJ5IHNob3VsZAo+IG5vdCByZWFsbHkgbGluayB0byBhIGdp
dCB0cmVlIGFzIHBhdGNoZXMgZm9yIGl0IHdpbGwgZ2V0IGRpc3RyaWJ1dGVkIHRocm91Z2gKPiBt
dWx0aXBsZSB0cmVlcyAobWZkLCByZWd1bGF0b3IsIHJ0YykgbW9zdCBvZiB0aGUgdGltZS4KCkkg
dGhpbmsgaXQgaXMgaW1wb3J0YW50IHRoYXQgdGhlIG1haW50YWluZXIgcmVjZWl2ZSBhbGwgUm9j
a2NoaXAKcmVsYXRlZCBwYXRjaGVzLCBhcyBoZSBoYXMgdGhlIGJpZ2dlciBwaWN0dXJlIGluIG1p
bmQuIE9mIGNvdXJzZSBpdCBpcwpwb3NzaWJsZSB0byBhZGQgYW4gYWRkaXRpb25hbCBNQUlOVEFJ
TkVSIGVudHJ5IGZvciBSb2NrY2hpcCBQTUlDCmRyaXZlcnMgc3BlY2lmaWNhbGx5LgoKU28gaW4g
dGhlIGVuZCwgSSB3aWxsIHMvcms4MC9yazgvLCBzaGFsbCBJIHJlbW92ZSBhIHNwZWNpZmljIGVu
dHJ5IGZyb20KdGhlIDQgYWRkZWQ/Cgo+IAo+IE1pcXVlbCBjYW4geW91IGRvIGEgdjIgcGxlYXNl
PwoKT2YgY291cnNlLCB0aGlzIGlzIHBsYW5uZWQsIEknbSBqdXN0IGEgYml0IGxhdGUgaW4gbXkg
ZS1tYWlsIGJhY2tsb2chCgpDaGVlcnMsCk1pcXXDqGwKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
