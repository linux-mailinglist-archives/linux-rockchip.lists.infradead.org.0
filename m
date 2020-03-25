Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 395521931F0
	for <lists+linux-rockchip@lfdr.de>; Wed, 25 Mar 2020 21:30:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=px8f9tMnCnHzCq00ZPjom2LVM737A449PR73Z09qhnE=; b=QtUF+RACRJ54Rs
	/XNydOX1zKmh1mk3spXqtbGLyRcuKGNSbDCnvvQituY10nPxQWtdbNHbxbVoWBZsDe/tv1cjNeY2y
	AB3CTgpwr1J4qkS8K8b7bkGiLFoIn2I+fcPmfwTrLb3X3muMrmT+2ZqIArakWClOOcGt4IawFWrkX
	wJZhBzb/jyHPBSdJjNgg1I6XGe1jOXZ/sfgwALfRsFd8FXP3b47yGVLm46RW9HUH8OVPZs68Cm/Yd
	XRgWbkkssLexbJmhcbe/Av9Jat99MLbpINjx+nE6KQJHN1tqordDbgBgZyLD6+gjnN9hTpPWBHQWh
	g7qlaInew+p7J8v1Tkow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHCfo-0006FY-J6; Wed, 25 Mar 2020 20:30:48 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHCfl-0006EV-96
 for linux-rockchip@lists.infradead.org; Wed, 25 Mar 2020 20:30:46 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 4D7FB2971D9
Message-ID: <648c8411353071a7e1ffd3576d268b01177ab678.camel@collabora.com>
Subject: Re: [PATCH v2 3/8] hantro: Use v4l2_m2m_buf_done_and_job_finish
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, Nicolas Dufresne
 <nicolas@ndufresne.ca>,  linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org,  linux-kernel@vger.kernel.org
Date: Wed, 25 Mar 2020 17:30:32 -0300
In-Reply-To: <50d764ec-1c15-99bd-192b-9aa6ae5bf368@xs4all.nl>
References: <20200318132108.21873-1-ezequiel@collabora.com>
 <20200318132108.21873-4-ezequiel@collabora.com>
 <13b1efe1-8b52-070b-cf11-b230bd405d3e@xs4all.nl>
 <0a8f6d97e6869ff694aedd67a3176217a885c938.camel@ndufresne.ca>
 <50d764ec-1c15-99bd-192b-9aa6ae5bf368@xs4all.nl>
Organization: Collabora
User-Agent: Evolution 3.36.0-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_133045_452239_35ADADB5 
X-CRM114-Status: GOOD (  25.88  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Alexandre Courbot <acourbot@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 Tomasz Figa <tfiga@chromium.org>, Jeffrey Kardatzke <jkardatzke@chromium.org>,
 kernel@collabora.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

ICAgMS4gT24gV2VkLCAyMDIwLTAzLTI1IGF0IDE2OjI4ICswMTAwLCBIYW5zIFZlcmt1aWwgd3Jv
dGU6Cj4gT24gMy8yNS8yMCAzOjAyIFBNLCBOaWNvbGFzIER1ZnJlc25lIHdyb3RlOgo+ID4gTGUg
bWVyY3JlZGkgMjUgbWFycyAyMDIwIMOgIDA5OjIyICswMTAwLCBIYW5zIFZlcmt1aWwgYSDDqWNy
aXQgOgo+ID4gPiBPbiAzLzE4LzIwIDI6MjEgUE0sIEV6ZXF1aWVsIEdhcmNpYSB3cm90ZToKPiA+
ID4gPiBMZXQgdGhlIGNvcmUgc29ydCBvdXQgdGhlIG51YW5jZXMgb2YgcmV0dXJuaW5nIGJ1ZmZl
cnMKPiA+ID4gPiB0byB1c2Vyc3BhY2UsIGJ5IHVzaW5nIHRoZSB2NGwyX20ybV9idWZfZG9uZV9h
bmRfam9iX2ZpbmlzaAo+ID4gPiA+IGhlbHBlci4KPiA+ID4gPiAKPiA+ID4gPiBUaGlzIGNoYW5n
ZSBhbHNvIHJlbW92ZXMgdXNhZ2Ugb2YgYnVmZmVyIHNlcXVlbmNlIGZpZWxkcywKPiA+ID4gPiB3
aGljaCBzaG91bGRuJ3QgaGF2ZSBhbnkgbWVhbmluZyBmb3Igc3RhdGVsZXNzIGRlY29kZXJzLgo+
ID4gPiAKPiA+ID4gVWgsIHdoeSByZW1vdmUgdGhpcz8gRm9yIG9uZSwgZG9lc24ndCB0aGlzIGNh
dXNlIGZhaWxzIGluIHY0bDItY29tcGxpYW5jZT8KPiA+ID4gQWxzbywgd2hpbGUgSSBhZ3JlZSB0
aGF0IGl0IGlzIG5vdCB0ZXJyaWJseSB1c2VmdWwsIGl0IGRvZXNuJ3QgaHVydCwgZG9lcyBpdD8K
PiA+ID4gCj4gPiA+IEFuZCB0aGUgVjRMMiBzcGVjIG1ha2VzIG5vIGV4Y2VwdGlvbiBmb3Igc3Rh
dGVsZXNzIGNvZGVjcyB3aXRoIHJlc3BlY3QgdG8gdGhlCj4gPiA+IHNlcXVlbmNlIGZpZWxkLgo+
ID4gPiAKPiA+ID4gTmFja2VkLWJ5OiBIYW5zIFZlcmt1aWwgPGh2ZXJrdWlsLWNpc2NvQHhzNGFs
bC5ubD4KPiA+IAo+ID4gVGhlIHNwZWMgYWxzbyBkb2VzIG5vdCBzYXkgd2hhdCBpdCBtZWFucyBl
aXRoZXIuIEFzIGFuIGV4YW1wbGUsIHlvdQo+ID4gaGF2ZSBzcGVjIGZvciBBTFRFUk5BVEUgaW50
ZXJsYWNpbmcgbW9kZSB0aGF0IGNoYW5nZXMgdGhlIG1lYW5pbmcgb2YKPiA+IHRoZSBzZXF1ZW5j
ZSwgYnV0IG5vdCBmb3IgYWx0ZXJuYXRlIEgyNjQgZmllbGRzICh3aGljaCBjYW5ub3QgYmUgcGFy
dAo+ID4gb2YgdGhlIGZvcm1hdCwgc2luY2UgdGhpcyBjaGFuZ2VzIG9mdGVuKS4gV2UgYWxzbyBk
b24ndCBoYXZlIHNwZWMgZm9yCj4gPiB0aGUgdGhlIHNlcXVlbmNlIGJlaGF2aW91ciB3aGlsZSB1
c2luZyBIT0xEIGZlYXR1cmVzLgo+IAo+IEkgaGF0ZSBpdCB0aGF0IHRoZSBzcGVjIGNoYW5nZXMg
dGhlIHNlcXVlbmNlIG1lYW5pbmcgZm9yIEZJRUxEX0FMVEVSTkFURSwKPiBJIGFsd2F5cyB0aG91
Z2h0IHRoYXQgdGhhdCBtYWRlIGRyaXZlcnMgdW5uZWNlc3NhcmlseSBjb21wbGljYXRlZC4gVW5m
b3J0dW5hdGVseSwKPiB0aGlzIGlzIHNvbWV0aGluZyB3ZSBpbmhlcml0ZWQuCj4gCj4gQ3VycmVu
dGx5IHRoZSBzcGVjIHNheXMgZm9yIHNlcXVlbmNlOgo+IAo+ICJTZXQgYnkgdGhlIGRyaXZlciwg
Y291bnRpbmcgdGhlIGZyYW1lcyAobm90IGZpZWxkcyEpIGluIHNlcXVlbmNlLiBUaGlzIGZpZWxk
IGlzIHNldAo+ICBmb3IgYm90aCBpbnB1dCBhbmQgb3V0cHV0IGRldmljZXMuIgo+IAo+IFRoZSBv
bmx5IHRoaW5nIG1pc3NpbmcgaGVyZSBpcyB0aGF0IGl0IHNob3VsZCBzYXkgdGhhdCBmb3IgY29t
cHJlc3NlZCBmb3JtYXRzIHRoaXMKPiBjb3VudHMgdGhlIGJ1ZmZlcnMsIHNpbmNlIG9uZSBidWZm
ZXIgd2l0aCBjb21wcmVzc2VkIGRhdGEgbWF5IG5vdCBoYXZlIGEgb25lLXRvLW9uZQo+IG1hcHBp
bmcgd2l0aCBmcmFtZXMuCj4gCj4gVGhpcyBkZXNjcmlwdGlvbiBmb3IgJ3NlcXVlbmNlJyB3YXMg
bmV2ZXIgdXBkYXRlZCB3aGVuIGNvbXByZXNzZWQgZGF0YSBmb3JtYXRzIHdlcmUKPiBhZGRlZCwg
c28gaXQgaXMgYSBiaXQgb3V0IG9mIGRhdGUuCj4gCj4gPiBJJ20gd29ycmllZCB3ZSBhcmUgZmFs
bGluZyBpbnRvIHRoZSB0ZXN0IGRyaXZlbiB0cmFwLCB3ZXJlIHBlb3BsZQo+ID4gaW1wbGVtZW50
IGZlYXR1cmVzIHRvIHNhdGlzZnkgYSB0ZXN0LCB3aGlsZSB0aGUgYWRkZWQgY29tcGxleGl0eSBk
b24ndAo+ID4gcmVhbGx5IG1ha2Ugc2Vuc2UuIFNob3VsZG4ndCB3ZSBjaGFuZ2Ugb3VyIGFwcHJv
YWNoIGFuZCBvcHQtb3V0Cj4gPiBmZWF0dXJlcyBmb3IgbmV3IHR5cGUgb2YgSFcsIHNvIHRoYXQg
d2UgY2FuIGtlZXAgdGhlIGRyaXZlcnMgY29kZQo+ID4gc2FuZXI/Cj4gCj4gV2h5IHdhc24ndCB0
aGUgZXhpc3RpbmcgY29kZSBpbiB0aGlzIHBhdGNoIHNhbmU/IFN1cmUsIHdlIGNhbiBjaGFuZ2Ug
dGhlIHNwZWMsIGJ1dAo+IHRoZW4gMSkgYWxsIGV4aXN0aW5nIGRyaXZlcnMgbmVlZCB0byBiZSB1
cGRhdGVkIGFzIHdlbGwsIGFuZCAyKSB2NGwyLWNvbXBsaWFuY2UgbmVlZHMKPiB0byBiZSBjaGFu
Z2VkIHRvIHRlc3Qgc3BlY2lmaWNhbGx5IGZvciB0aGlzIGNsYXNzIG9mIGRyaXZlcnMgYW5kIGVu
c3VyZSB0aGF0IGZvciB0aG9zZQo+IHRoZSBzZXF1ZW5jZSBmaWVsZCBpcyBzZXQgdG8gMC4gTm90
IHRvIG1lbnRpb24gaW50cm9kdWNpbmcgYW4gZXhjZXB0aW9uIGluIHRoZSB1QVBJCj4gd2hlcmUg
dGhlIHNlcXVlbmNlIGZpZWxkIHN1ZGRlbmx5IGlzbid0IHVzZWQgYW55bW9yZS4KPiAKPiBGcmFu
a2x5LCBJIHdvdWxkIHByZWZlciB0aGF0IHRoZSB3aG9sZSBzZXF1ZW5jZSBoYW5kbGluZyBpcyBt
b3ZlZCB0byB2aWRlb2J1ZjItdjRsMi5jLgo+IEl0IHJlYWxseSBkb2Vzbid0IGJlbG9uZyBpbiBk
cml2ZXJzLCB3aXRoIHRoZSBleGNlcHRpb24gb2YgaW5jcmVtZW50aW5nIHRoZSBzZXF1ZW5jZQo+
IGNvdW50ZXIgaW4gY2FzZSBvZiBkcm9wcGVkIGZyYW1lcy4KPiAKPiBJIHRoaW5rIEkgc3VnZ2Vz
dGVkIGl0IHdoZW4gdmIyIHdhcyBiZWluZyBkZXNpZ25lZCwgYnV0IGF0IHRoZSB0aW1lIHRoZSBw
cmVmZXJlbmNlCj4gd2FzIHRvIGtlZXAgaXQgaW4gdGhlIGRyaXZlci4gTG9uZyB0aW1lIGFnbywg
dGhvdWdoLgo+IAoKRG8geW91IHRoaW5rIHdlIGNvdWxkIHRyeSB0byBtb3ZlIHRoaXMgdG8gdGhl
IGNvcmU/CgpJIG1pZ2h0IGJlIGFibGUgZmluZCBzb21lIHRpbWUgdG8gdHJ5IHRoYXQuCgo+IEFu
ZCBhbm90aGVyIHJlYXNvbiB3aHkgSSB3YW50IHRvIGtlZXAgaXQ6IEkgZmluZCBpdCBhY3R1YWxs
eSB1c2VmdWwgdG8gc2VlIGEgcnVubmluZwo+IGNvdW50ZXI6IGl0IGhlbHBzIGtlZXBpbmcgdHJh
Y2sgb2YgaG93IG1hbnkgYnVmZmVycyB5b3UndmUgcHJvY2Vzc2VkIHNpbmNlIHlvdSBzdGFydGVk
Cj4gc3RyZWFtaW5nLgo+IAoKKzEKCj4gRmluYWxseSwgdGhlIHJlbW92YWwgb2YgdGhlIHNlcXVl
bmNlIGNvdW50ZXIgc2ltcGx5IGRvZXMgbm90IGJlbG9uZyBpbiB0aGlzIHBhdGNoLgo+IAoKQWdy
ZWVkLCBubyBjb21wbGFpbnRzIG9uIG15IHNpZGUuCgpJIGFtIGFjdHVhbGx5IGhhcHB5IGFib3V0
IHRoaXMgZmVlZGJhY2suCgpUaGFua3MsCkV6ZXF1aWVsCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
