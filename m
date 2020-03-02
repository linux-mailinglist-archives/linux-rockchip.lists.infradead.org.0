Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ABA2175D9A
	for <lists+linux-rockchip@lfdr.de>; Mon,  2 Mar 2020 15:53:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tOqA/oZMUTPhEbixCwGq+Am2Jhs3lhVk1UQH3O+nT6E=; b=jQ1gZ44B8/Ipgr
	B1LBicTlcQRawcGKQ+6Zl/GRoJKLAohECY24iyWCirvllLmzk57aOBkom7IK9gHufHOCoA318qquG
	hlun//GBNFCiSyKN9yNpKZm8LmjTGSp9rY37e2Qa/kFG/qQQ8sUzi+aWgJyrPgqBTd9DiGV84vXRh
	/m3mBzQWBW2vhPZEb5hMC31Kzr5Pbv1Q5xcfcJBNqUd5FsTqJn2H55WgynQE2NWcNYtmYQ4b0APfk
	zIIlZUafTt7dmCDAgaEKx2zEgzEJYyMXPnDDjbr+m7MphNL/7AlKu55Dtpvt4q3A/xUq8oVyKLbfL
	hkChwM51O/haxXDIilyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8mRd-0005iv-TG; Mon, 02 Mar 2020 14:53:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8mRb-0005iS-1p
 for linux-rockchip@lists.infradead.org; Mon, 02 Mar 2020 14:53:20 +0000
Received: from coco.lan (ip5f5ad4e9.dynamic.kabel-deutschland.de
 [95.90.212.233])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 33B702080C;
 Mon,  2 Mar 2020 14:53:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583160798;
 bh=1w9gTDD0mrerWDAhBZGXC4+5deyJLyj8xbrGt2brb1M=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=vbwhZe/bLsp7NOTdfaVhIg+efxFdCJXjCBx2bckpQ3qaVSuNgaPyuipY86T6XKLqX
 DOW1RIhCiMORXa1+yh/1bhqlm3O6V8hFAnkYx0EswUdqMs97/5Y36Y2eWBV0tHP8WC
 KxF/fGryhEoQqyJOI147qTKoyO0TkR3UmSczIyxQ=
Date: Mon, 2 Mar 2020 15:53:12 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v6 5/6] media: rkvdec: Add the rkvdec driver
Message-ID: <20200302155312.62185b98@coco.lan>
In-Reply-To: <20200302153039.0c4ff54f@collabora.com>
References: <20200220163016.21708-1-ezequiel@collabora.com>
 <20200220163016.21708-6-ezequiel@collabora.com>
 <20200302145746.3e94c1d1@coco.lan>
 <20200302153039.0c4ff54f@collabora.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_065319_134176_A7500C12 
X-CRM114-Status: GOOD (  22.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, kernel@collabora.com,
 Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Sakari Ailus <sakari.ailus@iki.fi>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

RW0gTW9uLCAyIE1hciAyMDIwIDE1OjMwOjM5ICswMTAwCkJvcmlzIEJyZXppbGxvbiA8Ym9yaXMu
YnJlemlsbG9uQGNvbGxhYm9yYS5jb20+IGVzY3JldmV1OgoKPiBPbiBNb24sIDIgTWFyIDIwMjAg
MTQ6NTc6NDYgKzAxMDAKPiBNYXVybyBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIraHVhd2VpQGtl
cm5lbC5vcmc+IHdyb3RlOgo+IAo+ID4gPiArI2RlZmluZSBNX04oY3R4aWR4LCBpZGMwX20sIGlk
YzBfbiwgaWRjMV9tLCBpZGMxX24sCQlcCj4gPiA+ICsJICAgIGlkYzJfbSwgaWRjMl9uLCBpbnRy
YV9tLCBpbnRyYV9uKQkJCVwKPiA+ID4gKwlbMF1bKGN0eGlkeCldID0ge2lkYzBfbSwgaWRjMF9u
fSwJCQlcCj4gPiA+ICsJWzFdWyhjdHhpZHgpXSA9IHtpZGMxX20sIGlkYzFfbn0sCQkJXAo+ID4g
PiArCVsyXVsoY3R4aWR4KV0gPSB7aWRjMl9tLCBpZGMyX259LAkJCVwKPiA+ID4gKwlbM11bKGN0
eGlkeCldID0ge2ludHJhX20sIGludHJhX259ICAgIAo+ID4gCj4gPiBIbW0uLi4gSSBjYW4ndCBl
dmVuIGltYWdpbmUgd2hhdCBhIG1hY3JvIG5hbWVkICJNX04iIHdvdWxkIGRvLgo+ID4gUGxlYXNl
IHVzZSBhIGJldHRlciBuYW1lIGZvciBpdC4gIAo+IAo+IFdlbGwsIHRoZSBtZWFuaW5nIG9mIHRo
b3NlIGZpZWxkcyBpcyBleHBsYWluZWQgaW4gdGhlIHNwZWMsIGFuZCB0aGUKPiBuYW1lIGl0c2Vs
ZiBoYXMgYmVlbiBjaG9zZW4gc28gaXQncyBzaG9ydCBlbm91Z2ggdG8gbm90IGhhdmUgbGluZXMK
PiBleGNlZWRpbmcgODAgY2hhcnMgd2hpbGUgc3RpbGwga2VlcGluZyB0aGUgbnVtYmVyIG9mIGxp
bmVzIHVzZWQgZm9yIHRoZQo+IGNhYmFjX3RhYmxlW10gZGVmaW5pdGlvbiBhY2NlcHRhYmxlLiBC
dXQsIEknbSBvcGVuIHRvIGFueSBvdGhlcgo+IHN1Z2dlc3Rpb24uCgpXZWxsLCBjb2RlIHJldmll
d2VycyBtYXkgbm90IGhhdmUgdGhlIHNwZWNzIG9uIHRoZWlyIGhhbmRzIHdoZW4KcmV2aWV3aW5n
IHBhdGNoZXMgOi0pCgpLZWVwIDgwIGNvbHVtbnMgaXMgc29tZXRoaW5nIHdlIGRlc2lyZSwgYnV0
IG5vdCBhdCB0aGUgZXhwZW5zZSBvZgptYWtpbmcgdGhlIGNvZGUgaGFyZGVyIHRvIG1haW50YWlu
IG9yIHVuZGVyc3RhbmQuIFlldCwgSSBzdXNwZWN0CnRoYXQgaW5jcmVhc2luZyB0aGUgbmFtZSBi
eSBhIGZldyBleHRyYSBieXRlcyB3aWxsIHN0aWxsIGFsbG93IGl0IHRvCnNpdCBhdCB0aGUgODAg
Y29sdW1ucyBzcGFjZVsxXS4KClsxXSBUaGlzIG1hY3JvIHBhc3NlcyA5IHBhcmFtZXRlcnMuIElm
IGVhY2ggcGFyYW1ldGVyIGNvbnN1bWVzIDQgY2hhcnMsCiAgICBhbmQgdGhleSdyZSBwcmVjZWRl
ZCBieSBhIHRhYiwgdGhhdCB3b3VsZCBtZWFuIDQ0IGNvbHVtbnMuCgpQZXJoYXBzIHNvbWV0aGlu
ZyBsaWtlIENBQkFDX0VOVFJZIG9yIGV2ZW4gTU5fVkFMVUVTIHdvdWxkIGJlIGJldHRlci4KCj4g
Cj4gPiAKPiA+IC0KPiA+IAo+ID4gV2l0aCByZWdhcmRzIHRvIHRoZSBtYWNybyBpdHNlbGYsIGF0
IGxlYXN0IGZvciBteSBleWVzLCBpdCBsb29rZWQgYmFkLAo+ID4gZnJvbSBsb25nLXRlcm0gbWFp
bnRlbmFuY2UgUG9WLCB0byBoYXZlIGEgZmlyc3QgYXJndW1lbnQgKGN0eGlkeCkgd2hvc2UKPiA+
IHZhbHVlIGlzIGp1c3QgYSBtb25vdG9uaWMgbGluZWFybHktaW5jcmVtZW50ZWQgY291bnRlci4g
IAo+IAo+IEl0J3Mgbm90LCB3ZSBoYXZlIGhvbGVzIGluIHRoZSBtaWRkbGUsIGhlbmNlIHRoZSBl
eHBsaWNpdCBpbmRleGluZy4gSQo+IGFsc28gdHJpZWQgdG8gaGF2ZSBzb21ldGhpbmcgYXMgY2xv
c2UgYXMgcG9zc2libGUgdG8gdGhlIHNwZWMsIHNvCj4gcGVvcGxlIGNhbiBlYXNpbHkgc2VlIHdo
ZXJlIGl0IGNvbWVzIGZyb20uCj4gCj4gPiAKPiA+IEkgbWVhbiwgdGhlIHdheSBpdCBpcywgaXQg
c291bmRzIHJpc2t5LCBhcyBvbmUgbWlnaHQgbWlzcyBhIG51bWJlcgo+ID4gYW5kIG9uZSBlbnRp
cmUgbGluZSBvZiB0aGUgYXJyYXkgd291bGQgYmUgZmlsbGVkIHdpdGggemVyb3MuICAKPiAKPiBU
aGF0J3MgZXhhY3RseSB3aHkgSSB1c2VkIGV4cGxpY2l0IGluZGV4aW5nOiBJIHdhbnQgc3BlY2lm
aWMgcG9ydGlvbnMKPiBvZiB0aGUgdGFibGUgdG8gYmUgMC1maWxsZWQgOi0pLgoKQWgsIE9LISBJ
bXBsZW1lbnRhdGlvbiBtYWtlcyBzZW5zZSB0aGVuLgo+IAo+ID4gICAKPiA+ID4gKwo+ID4gPiAr
LyoKPiA+ID4gKyAqIENvbnN0YW50IENBQkFDIHRhYmxlLgo+ID4gPiArICogQnVpbHQgZnJvbSB0
aGUgdGFibGVzIGRlc2NyaWJlZCBpbiBzZWN0aW9uICc5LjMuMS4xIEluaXRpYWxpc2F0aW9uIHBy
b2Nlc3MKPiA+ID4gKyAqIGZvciBjb250ZXh0IHZhcmlhYmxlcycgb2YgdGhlIEgyNjQgc3BlYy4K
PiA+ID4gKyAqLwo+ID4gPiArc3RhdGljIGNvbnN0IHM4IHJrdmRlY19oMjY0X2NhYmFjX3RhYmxl
WzRdWzQ2NF1bMl0gPSB7Cj4gPiA+ICsJLyogVGFibGUgOS0xMiDigJMgVmFsdWVzIG9mIHZhcmlh
YmxlcyBtIGFuZCBuIGZvciBjdHhJZHggZnJvbSAwIHRvIDEwICovCj4gPiA+ICsJTV9OKDAsIDIw
LCAtMTUsIDIwLCAtMTUsIDIwLCAtMTUsIDIwLCAtMTUpLCAgICAKPiA+IAo+ID4gU28sIChtYXli
ZSBleGNlcHQgaWYgdGhlIGN0eGlkeCB2YWx1ZSBoYXMgc29tZSByZWFsIG1lYW5pbmcpLAo+ID4g
cGVyaGFwcyB5b3UgY291bGQsIGluc3RlYWQsIHN3aXRjaCB0aGUgYXJyYXkgb3JkZXIgYXQgdGhl
IHRhYmxlcywKPiA+IGFuZCBnZXQgcmlkIG9mIGN0eGlkeCBwYXJhbWV0ZXIgZm9yIGdvb2QsIHNv
IHRoZSBhYm92ZSBjb2RlIHdvdWxkCj4gPiBiZSBsaWtlOiAgCj4gCj4gSSBjYW4ndCBzd2l0Y2gg
dGhlIGFycmF5IG9yZGVyIHNpbmNlIHRoZSBIVyBleHBlY3RzIHRoaW5ncyB0byBiZQo+IG9yZ2Fu
aXplZCB0aGlzIHdheSAodGhhdCB0YWJsZSBpcyBkaXJlY3RseSBjb3BpZWQgdG8gYSBtZW1vcnkg
cmVnaW9uCj4gdGhhdCdzIHBhc3NlZCB0byB0aGUgSFcpLgo+IAo+ID4gCj4gPiAjZGVmaW5lIElO
SVRfTU5fUEFJUlMoaWRjMF9tLCBpZGMwX24sIGlkYzFfbSwgaWRjMV9uLAlcCj4gPiAJICAgICAg
IGlkYzJfbSwgaWRjMl9uLCBpbnRyYV9tLCBpbnRyYV9uKQlcCj4gPiAJewkJCQkJCVwKPiA+IAkJ
WzBdID0ge2lkYzBfbSwgaWRjMF9ufSwJCQlcCj4gPiAJCVsxXSA9IHtpZGMxX20sIGlkYzFfbn0s
CQkJXAo+ID4gCQlbMl0gPSB7aWRjMl9tLCBpZGMyX259LAkJCVwKPiA+IAkJWzNdID0ge2ludHJh
X20sIGludHJhX259CQlcCj4gPiAJfSwKPiA+IAo+ID4gc3RhdGljIGNvbnN0IHM4IHJrdmRlY19o
MjY0X2NhYmFjX3RhYmxlWzQ2NF1bNF1bMl0gPSB7Cj4gPiAJLyogVGFibGUgOS0xMiDigJMgVmFs
dWVzIG9mIHZhcmlhYmxlcyBtIGFuZCBuIGZvciBjdHhJZHggZnJvbSAwIHRvIDEwICovCj4gPiAJ
SU5JVF9NTl9QQUlSUygyMCwgLTE1LCAyMCwgLTE1LCAyMCwgLTE1LCAyMCwgLTE1KSwKPiA+IAku
Li4gIAo+IAoKClRoYW5rcywKTWF1cm8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
