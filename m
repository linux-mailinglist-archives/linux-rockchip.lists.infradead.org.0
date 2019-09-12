Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6990EB0DF4
	for <lists+linux-rockchip@lfdr.de>; Thu, 12 Sep 2019 13:35:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LhNORHVRpCOX6P24datYt6hleqVMhyC1nR5h6pJr/8c=; b=dP6ySXVQG4qIHh
	iAG7lmkoVS84/Y7P0a+SiXYqxcXAaV/WyAuXunWnA5wzhcVsT8Iaz5nT0BZlIwg2EcCjMz0y+RIx7
	1uOQTTJ5Kj3uaFa0re+lLVmKxhr9DuOCGVGiIESyezBRuTxJIv2R6MdF9jZKTR3T9+GPH+jwer7FR
	Gl1Z13x35UFILooB6k92mzHNyjtgOEo8N/9RQJNjWwYQGp53hXFRKCwvXaQ8gBnpVlBo+U3adsWiv
	HLfsNc9oetZGxHkoaTKsln5ri9nV5OVQc+dbKd7YGbk51+NqSvLuZh7kCNuAEs30M2iQnNZjgpnWt
	8P9NncTCwUwflCFvEKZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8NNm-0003yi-UJ; Thu, 12 Sep 2019 11:35:26 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8NNh-0003xs-E5
 for linux-rockchip@lists.infradead.org; Thu, 12 Sep 2019 11:35:23 +0000
Received: from [IPv6:2001:8a0:6c2f:b301:66f4:e6a0:633:7a5e] (unknown
 [IPv6:2001:8a0:6c2f:b301:66f4:e6a0:633:7a5e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: ezequiel)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id B00F728A88C;
 Thu, 12 Sep 2019 12:35:16 +0100 (BST)
Message-ID: <9d7cb0caf39aa4704e5d83fab56a65b305c5b924.camel@collabora.com>
Subject: Re: [PATCH 0/4] Enable Hantro G1 post-processor
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Tomasz Figa <tfiga@chromium.org>, Nicolas Dufresne <nicolas@ndufresne.ca>
Date: Thu, 12 Sep 2019 12:35:12 +0100
In-Reply-To: <CAAFQd5CKkdN0byeAonPvvzmHQ5CRXLRVidAG8FGmxExHzgvaqA@mail.gmail.com>
References: <20190903181711.7559-1-ezequiel@collabora.com>
 <CAAFQd5AdikoN+7TG=0ZGFkSzaK2UFHM4VG7SYtfUtmjQgD61zA@mail.gmail.com>
 <6e493142690d48ee7e65c1cb2a4d6aec1e3b671b.camel@collabora.com>
 <c7b62640ae0e57a9da0c6c5245b5454af08ad2a0.camel@ndufresne.ca>
 <CAAFQd5CKkdN0byeAonPvvzmHQ5CRXLRVidAG8FGmxExHzgvaqA@mail.gmail.com>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_043521_738304_DA833304 
X-CRM114-Status: GOOD (  22.90  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com,
 Chris Healy <cphealy@gmail.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gVGh1LCAyMDE5LTA5LTEyIGF0IDE0OjUyICswOTAwLCBUb21hc3ogRmlnYSB3cm90ZToKPiBP
biBUaHUsIFNlcCAxMiwgMjAxOSBhdCA0OjQ5IEFNIE5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXNA
bmR1ZnJlc25lLmNhPiB3cm90ZToKPiA+IExlIG1lcmNyZWRpIDExIHNlcHRlbWJyZSAyMDE5IMOg
IDA5OjI3ICswMTAwLCBFemVxdWllbCBHYXJjaWEgYSDDqWNyaXQgOgo+ID4gPiBPbiBNb24sIDIw
MTktMDktMDkgYXQgMTY6MDcgKzA5MDAsIFRvbWFzeiBGaWdhIHdyb3RlOgo+ID4gPiA+IEhpIEV6
ZXF1aWVsLAo+ID4gPiA+IAo+ID4gPiA+IE9uIFdlZCwgU2VwIDQsIDIwMTkgYXQgMzoxNyBBTSBF
emVxdWllbCBHYXJjaWEgPGV6ZXF1aWVsQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+ID4gPiA+ID4g
SGkgYWxsLAo+ID4gPiA+ID4gCj4gPiA+ID4gPiBUaGlzIHNlcmllcyBlbmFibGVzIHRoZSBwb3N0
LXByb2Nlc3NvciBzdXBwb3J0IGF2YWlsYWJsZQo+ID4gPiA+ID4gb24gdGhlIEhhbnRybyBHMSBW
UFUuIFRoZSBwb3N0LXByb2Nlc3NvciBibG9jayBjYW4gYmUKPiA+ID4gPiA+IHBpcGVsaW5lZCB3
aXRoIHRoZSBkZWNvZGVyIGhhcmR3YXJlLCBhbGxvd2luZyB0byBwZXJmb3JtCj4gPiA+ID4gPiBv
cGVyYXRpb25zIHN1Y2ggYXMgY29sb3IgY29udmVyc2lvbiwgc2NhbGluZywgcm90YXRpb24sCj4g
PiA+ID4gPiBjcm9wcGluZywgYW1vbmcgb3RoZXJzLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBUaGUg
ZGVjb2RlciBoYXJkd2FyZSBuZWVkcyBpdHMgb3duIHNldCBvZiBOVjEyIGJ1ZmZlcnMKPiA+ID4g
PiA+ICh0aGUgbmF0aXZlIGRlY29kZXIgZm9ybWF0KSwgYW5kIHRoZSBwb3N0LXByb2Nlc3NvciBp
cyB0aGUKPiA+ID4gPiA+IG93bmVyIG9mIHRoZSBDQVBUVVJFIGJ1ZmZlcnMuIFRoaXMgYWxsb3dz
IHRoZSBhcHBsaWNhdGlvbgo+ID4gPiA+ID4gZ2V0IHByb2Nlc3NlZCAoc2NhbGVkLCBjb252ZXJ0
ZWQsIGV0YykgYnVmZmVycywgY29tcGxldGVseQo+ID4gPiA+ID4gdHJhbnNwYXJlbnRseS4KPiA+
ID4gPiA+IAo+ID4gPiA+ID4gVGhpcyBmZWF0dXJlIGlzIGltcGxlbWVudGVkIGJ5IGV4cG9zaW5n
IG90aGVyIENBUFRVUkUgcGl4ZWwKPiA+ID4gPiA+IGZvcm1hdHMgdG8gdGhlIGFwcGxpY2F0aW9u
IChFTlVNX0ZNVCkuIFdoZW4gdGhlIGFwcGxpY2F0aW9uCj4gPiA+ID4gPiBzZXRzIGEgcGl4ZWwg
Zm9ybWF0IG90aGVyIHRoYW4gTlYxMiwgdGhlIGRyaXZlciB3aWxsIGVuYWJsZQo+ID4gPiA+ID4g
YW5kIHVzZSB0aGUgcG9zdC1wcm9jZXNzb3IgdHJhbnNwYXJlbnRseS4KPiA+ID4gPiAKPiA+ID4g
PiBJJ2xsIHRyeSB0byByZXZpZXcgdGhlIHNlcmllcyBhIGJpdCBsYXRlciwgYnV0IGEgZ2VuZXJh
bCBjb21tZW50IGhlcmUKPiA+ID4gPiBpcyB0aGF0IHRoZSB1c2Vyc3BhY2Ugd291bGRuJ3QgaGF2
ZSBhIHdheSB0byBkaXN0aW5ndWlzaCBiZXR3ZWVuIHRoZQo+ID4gPiA+IG5hdGl2ZSBhbmQgcG9z
dC1wcm9jZXNzZWQgZm9ybWF0cy4gSSdtIHByZXR0eSBtdWNoIHN1cmUgdGhhdAo+ID4gPiA+IHBv
c3QtcHJvY2Vzc2luZyBhdCBsZWFzdCBpbXBvc2VzIHNvbWUgcG93ZXIgcGVuYWx0eSwgc28gaXQg
d291bGQgYmUKPiA+ID4gPiBnb29kIGlmIHRoZSB1c2Vyc3BhY2UgY291bGQgYXZvaWQgaXQgaWYg
dW5uZWNlc3NhcnkuCj4gPiA+ID4gCj4gPiA+IAo+ID4gPiBIbSwgdGhhdCdzIHRydWUsIGdvb2Qg
Y2F0Y2guCj4gPiA+IAo+ID4gPiBTbywgaXQgd291bGQgYmUgZGVzaXJhYmxlIHRvIHJldGFpbiB0
aGUgY3VycmVudCBiZWhhdmlvciBvZiBhbGxvd2luZwo+ID4gPiB0aGUgYXBwbGljYXRpb24gdG8g
anVzdCBzZXQgYSBkaWZmZXJlbnQgcGl4ZWwgZm9ybWF0IGFuZCBnZXQKPiA+ID4gYSBwb3N0LXBy
b2Nlc3NlZCBmcmFtZSwgdHJhbnNwYXJlbnRseS4KPiA+ID4gCj4gPiA+IEJ1dCBhdCB0aGUgc2Ft
ZSB0aW1lLCBpdCB3b3VsZCBiZSBuaWNlIGlmIHRoZSBhcHBsaWNhdGlvbiBpcyBzb21laG93Cj4g
PiA+IGF3YXJlIG9mIHRoZSBwb3N0LXByb2Nlc3NpbmcgaGFwcGVuaW5nLiBNYXliZSB3ZSBjYW4g
ZXhwb3NlIGEgbW9yZQo+ID4gPiBhY2N1cmF0ZSBtZWRpYSBjb250cm9sbGVyIHRvcG9sb2d5LCBo
YXZlIGFwcGxpY2F0aW9ucyBlbmFibGUKPiA+ID4gdGhlIHBvc3QtcHJvY2Vzc2luZyBwaXBlbGlu
ZSBleHBsaWNpdGx5Lgo+ID4gCj4gPiBIb3cgaXQgd29ya3Mgb24gdGhlIHN0YXRlZnVsIHNpZGUg
aXMgdGhhdCB1c2Vyc3BhY2Ugc2V0IHRoZSBlbmNvZGluZwo+ID4gdHlwZSAodGhlIGNvZGVjKSwg
dGhlbiBwYXNzZXMgYSBoZWFkZXIgKGluIG91ciBjYXNlLCB0aGVyZSB3aWxsIGJlCj4gPiBwYXJz
ZWQgc3RydWN0dXJlcyByZXBsYWNpbmcgdGhpcykgZmlyc3QuIFRoZSBkcml2ZXIgdGhlbiBjb25m
aWd1cmUKPiA+IGNhcHR1cmUgZm9ybWF0LCBnaXZpbmcgYSBoaW50IG9mIHRoZSAiZGVmYXVsdCIg
b3IgIm5hdGl2ZSIgZm9ybWF0LiBUaGlzCj4gPiBtYXkgb3IgbWF5IG5vdCBiZSBzdWZmaWNpZW50
LCBidXQgaXQgZG9lcyB3b3JrIGluIGdpdmluZyB1c2Vyc3BhY2UgYQo+ID4gaGludC4KPiAKPiBU
aGUgYmFkIHNpZGUgb2YgdGhhdCBpcyB0aGF0IHdlIGNhbid0IGhhbmRsZSBtb3JlIHRoYW4gMSBu
YXRpdmUgZm9ybWF0Lgo+IAo+IEZvciB0aGUgbW9zdCBiYWNrd2FyZHMtY29tcGF0aWJsZSBiZWhh
dmlvciwgc29ydGluZyB0aGUgcmVzdWx0cyBvZgo+IEVOVU1fRk1UIGFjY29yZGluZyB0byBmb3Jt
YXQgcHJlZmVyZW5jZSB3b3VsZCBhbGxvdyB0aGUgYXBwbGljYXRpb25zCj4gdGhhdCBjaG9vc2Ug
dGhlIGZpcnN0IGZvcm1hdCByZXR1cm5lZCB0aGF0IHdvcmtzIGZvciB0aGVtIHRvIGNob29zZQo+
IHRoZSBiZXN0IG9uZS4KPiAKPiBGb3IgYSBmdXJ0aGVyIGltcHJvdmVtZW50LCBhbiBFTlVNX0ZN
VCBmbGFnIHRoYXQgdGVsbHMgdGhlIHVzZXJzcGFjZQo+IHRoYXQgYSBmb3JtYXQgaXMgcHJlZmVy
cmVkIGNvdWxkIHdvcmsuCj4gCj4gVGhhdCBzYWlkLCBtb2RlbGxpbmcgdGhlIHBpcGVsaW5lIGFw
cHJvcHJpYXRlbHkgdXNpbmcgdGhlIG1lZGlhCj4gY29udHJvbGxlciBpcyB0aGUgaWRlYSBJIGxp
a2UgdGhlIG1vc3QsIGJlY2F1c2UgaXQncyB0aGUgbW9zdAo+IGNvbXByZWhlbnNpdmUgc29sdXRp
b24uIFRoYXQgd291bGQgaGF2ZSB0byBiZSB3ZWxsIHNwZWNpZmllZCBhbmQKPiBkb2N1bWVudGVk
LCB0aG91Z2gsIGFuZCBzb3VuZHMgbGlrZSBhIGxvbmcgdGVybSBlZmZvcnQuCj4gCgpDb21wbGV0
ZWx5IGFncmVlZC4KClRoYW5rcywKRXplcXVpZWwKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
