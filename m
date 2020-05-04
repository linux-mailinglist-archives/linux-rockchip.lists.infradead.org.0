Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D7051C46C2
	for <lists+linux-rockchip@lfdr.de>; Mon,  4 May 2020 21:06:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XjdQdAfWu/ZGWIquz3pwwGs7/j7VJyqLtvVCC5R6SiI=; b=JiVsyRCGbtf9nJ
	+1TyKf0zurxWs+t/0esBzUNOggZ/makUZunMVAvVHwu12G2Hu3/+ROBDWzWDvVXW1IOZrbq9JXlHg
	5VsmOjkVzna9++PECh67qgnySckeAWagEDyWOSb86an79SDIBEDjjSOLbl5KY1eEG333PCOOL1VxO
	MvrHsljDtPkFwJq42UIZgSRG+H/SLwcxYn+yLDXskOdMf3oOnnR9cyqW02nKBji0wALnLCdFlViDF
	0qySrHpfwvBxTbMwZI7Y3mMjpn3GElM6/MvQabtAE8KO2U+TmIDVMXVO5MOe9o/n+jLeTvqx6/OTm
	cw9IzNiTj0f+SR1UVUuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVgQQ-0004Ag-Qd; Mon, 04 May 2020 19:06:46 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVgQI-0003yd-4k
 for linux-rockchip@lists.infradead.org; Mon, 04 May 2020 19:06:39 +0000
Received: from localhost (unknown [IPv6:2a01:e0a:2c:6930:5cf4:84a1:2763:fe0d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E22D52A0C98;
 Mon,  4 May 2020 20:06:33 +0100 (BST)
Date: Mon, 4 May 2020 21:06:30 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Subject: Re: [PATCH v2 2/3] media: uapi: Add VP9 stateless decoder controls
Message-ID: <20200504210630.1489df6e@collabora.com>
In-Reply-To: <e53824aed3eeb27419e5399576cce028f0ba8203.camel@collabora.com>
References: <20200410115113.31728-1-ezequiel@collabora.com>
 <20200410115113.31728-3-ezequiel@collabora.com>
 <9126475c-275d-71ab-0308-6ae85e22446b@xs4all.nl>
 <bf475e70cca6f9ebf645aed51276e57668eaf43b.camel@collabora.com>
 <20200502203707.402ea3cd@collabora.com>
 <db9fa91be8084fe9c87f263a4a97dc38d46f9bd1.camel@collabora.com>
 <e53824aed3eeb27419e5399576cce028f0ba8203.camel@collabora.com>
Organization: Collabora
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_120638_326053_312A5DA4 
X-CRM114-Status: GOOD (  19.40  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 linux-rockchip@lists.infradead.org,
 Jeffrey Kardatzke <jkardatzke@chromium.org>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gTW9uLCAwNCBNYXkgMjAyMCAxNDowMTozMiAtMDQwMApOaWNvbGFzIER1ZnJlc25lIDxuaWNv
bGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5jb20+IHdyb3RlOgoKPiBMZSBzYW1lZGkgMDIgbWFpIDIw
MjAgw6AgMTk6NTUgLTAzMDAsIEV6ZXF1aWVsIEdhcmNpYSBhIMOpY3JpdCA6Cj4gPiArTmljb2xh
cwo+ID4gCj4gPiBPbiBTYXQsIDIwMjAtMDUtMDIgYXQgMjA6MzcgKzAyMDAsIEJvcmlzIEJyZXpp
bGxvbiB3cm90ZTogIAo+ID4gPiBPbiBGcmksIDAxIE1heSAyMDIwIDEzOjU3OjQ5IC0wMzAwCj4g
PiA+IEV6ZXF1aWVsIEdhcmNpYSA8ZXplcXVpZWxAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4gPiA+
ICAgCj4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gKy4uIHRhYnVsYXJjb2x1bW5zOjogfHB7MS41
Y219fHB7Ni4zY219fHB7OS40Y219fAo+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ICsuLiBmbGF0
LXRhYmxlOjogZW51bSB2NGwyX3ZwOV9yZXNldF9mcmFtZV9jb250ZXh0Cj4gPiA+ID4gPiA+ICsg
ICAgOmhlYWRlci1yb3dzOiAgMAo+ID4gPiA+ID4gPiArICAgIDpzdHViLWNvbHVtbnM6IDAKPiA+
ID4gPiA+ID4gKyAgICA6d2lkdGhzOiAgICAgICAxIDIKPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4g
PiArICAgICogLSBgYFY0TDJfVlA5X1JFU0VUX0ZSQU1FX0NUWF9OT05FYGAKPiA+ID4gPiA+ID4g
KyAgICAgIC0gRG8gbm90IHJlc2V0IGFueSBmcmFtZSBjb250ZXh0Lgo+ID4gPiA+ID4gPiArICAg
ICogLSBgYFY0TDJfVlA5X1JFU0VUX0ZSQU1FX0NUWF9OT05FX0FMVGBgCj4gPiA+ID4gPiA+ICsg
ICAgICAtIERvIG5vdCByZXNldCBhbnkgZnJhbWUgY29udGV4dC4gVGhpcyBpcyBhbiBhbHRlcm5h
dGl2ZSB2YWx1ZSBmb3IKPiA+ID4gPiA+ID4gKyAgICAgICAgVjRMMl9WUDlfUkVTRVRfRlJBTUVf
Q1RYX05PTkUuICAgIAo+ID4gPiA+ID4gCj4gPiA+ID4gPiBBZGQgYGAgYXJvdW5kIFY0TDJfVlA5
X1JFU0VUX0ZSQU1FX0NUWF9OT05FLgo+ID4gPiA+ID4gICAgIAo+ID4gPiA+IAo+ID4gPiA+IEht
LCBub3cgdGhhdCBJIGxvb2sgY2xvc2VyLCB3aGF0J3MgdGhlIHBvaW50Cj4gPiA+ID4gb2YgaGF2
aW5nIHRoZSBOT05FX0FMVCBpbiBvdXIgdUFQSSBpZiBpdAo+ID4gPiA+IGhhcyBzYW1lIG1lYW5p
bmcgYXMgTk9ORT8KPiA+ID4gPiAKPiA+ID4gPiBJIHRoaW5rIGl0IGNhbiBiZSByZW1vdmVkLiAg
Cj4gPiA+IAo+ID4gPiBUaGUgaW50ZW50IHdhcyB0byBtYXRjaCB0aGUgc3BlYyBzbyB0aGF0IG9u
ZSBjYW4gcGFzcyB0aGUgdmFsdWUKPiA+ID4gZXh0cmFjdGVkIGZyb20gdGhlIGJpdHN0cmVhbSBk
aXJlY3RseS4gIAo+IAo+IHJlc2V0X2ZyYW1lX2NvbnRleHRzcGVjaWZpZXMgd2hldGhlciB0aGUg
ZnJhbWUgY29udGV4dCBzaG91bGQgYmUgcmVzZXQKPiB0byBkZWZhdWx0IHZhbHVlczoKPiAgIOKI
kiAwIG9yIDEgbWVhbnMgZG8gbm90IHJlc2V0IGFueSBmcmFtZSBjb250ZXh0Cj4gICDiiJIgMiBy
ZXNldHMganVzdCB0aGUgY29udGV4dCBzcGVjaWZpZWQgaW4gdGhlIGZyYW1lIGhlYWRlcgo+ICAg
4oiSIDMgcmVzZXRzIGFsbCBjb250Cj4gCj4gQnV0IGFyZW4ndCB3ZSBnb2luZyB0b28gZmFyIGJ5
IG1ha2luZyB0aGlzIGFuIGVtdW0gPwoKSSBsaWtlIHRvIG5vdCBoYXZlIHRvIGNvbnN0YW50bHkg
Z28gYmFjayB0byB0aGUgc3BlYyB3aGVuIEkgcmVhZCBjb2RlLAphbmQgaGF2aW5nIGNvbnN0YW50
IHZhbHVlcyBkZWZpbmVkIHRocm91Z2ggZW51bXMgZGVmaW5pdGVseSBoZWxwcyBpbgp0aGlzIHJl
Z2FyZCwgYnV0IG1heWJlIGl0J3MganVzdCBtZS4KCj4gSW4gTWljcm9zZm90IERYVkEsCj4gd2Ug
cGFzcyB0aGF0IHZhbHVlIHdpdGhvdXQgaW50ZXJwcmV0aW5nIGl0IGluIHVzZXJzcGFjZS4gRm9y
IHRoZQo+IGZvbGxvd2luZyBSS1ZERUMsIGl0IGlzIChzdXNwaWNpb3VzbHkgPykgaWdub3JlZC4K
CklJUkMsIHRoZSBwcm9iIGNvbnRleHQgaGFzIHRvIGJlIGtlcHQgaW4gdXNlcnNwYWNlIGFueXdh
eSAoYW5kIHJlc2V0CndoZW4gbmVlZGVkKSwgYW5kIHRoZSBya3ZkZWMgZW5naW5lIGRvZXMgbm90
IGhhdmUgYW55IGhhcmR3YXJlIGNvbnRleHQuClRoYXQncyBwcm9iYWJseSB3aHkgdGhpcyB2YWx1
ZSBpcyBpZ25vcmVkIGhlcmUuCgo+IE1heWJlIGp1c3QgcGFzc2luZwo+IG92ZXIgdGhlIHZhbHVl
IHdvdWxkIG1ha2UgbW9yZSBzZW5zZSwgbGVzcyB3b3JrID8KCkkgZG9uJ3Qgc2VlIGhvdyBhZGRp
bmcgYW4gZW51bSBhZGRzIG1vcmUgd29yaywgZ2l2ZW4gdGhlIGVudW0gdmFsdWVzCm1hdGNoIHRo
ZSBvbmVzIGRlZmluZWQgVlAgOSBzcGVjLCBidXQgbWF5YmUgSSdtIG1pc3Npbmcgc29tZXRoaW5n
LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
