Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4697145FD3
	for <lists+linux-rockchip@lfdr.de>; Fri, 14 Jun 2019 16:01:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hCnsHPYxeyJjjNoWa0UKh8qrVCW8Jsr5B9OLvpsgpS0=; b=A+ZC1sRNKJ0ln6
	ZXu+ptvY9pKOObg34At0MlZfFGQhAPDxelqeTKzhmGHFgSUiNRXtgm8aI7cLZjfIH1Z0nKhSjtW4x
	qf/Jvgg2+cvc5fO0wz5kucToZWh+b0GohoivAJtE/DeV37R7uYeeDyFkTrP6dBfjntTVKVNEulBrR
	MEz0JmmMJ96zo6aTc0mg64kq+Ax23IDiQaYwv6QMcEJ/lC2glSqqGeuPvOfdqmN4ku0vG8kZ05MXC
	VHbU3x4W7nAiHKrPGabJiELT0zL1ZTDCiFcy2+Vn3W42/LoXHBr/YqZofmYvm8pgcZ60Sg+/dzbN/
	/fHD0h6YNLCGLxHFlgoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbmlf-0006At-Rk; Fri, 14 Jun 2019 14:01:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmlT-0005rj-00; Fri, 14 Jun 2019 14:01:12 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hbmlN-0005Zq-MY; Fri, 14 Jun 2019 16:01:05 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Nick Xie <xieqinick@gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add support for Khadas
 Edge/Edge-V/Captain boards
Date: Fri, 14 Jun 2019 16:01:05 +0200
Message-ID: <1719008.LxYQEzyXAE@diego>
In-Reply-To: <CAP4nuTUQZRG9yV1Bz2hpe10K3CrWhVWf_YYBnMs3O1KyahhrMw@mail.gmail.com>
References: <1559035267-1884-1-git-send-email-xieqinick@gmail.com>
 <4566563.QzcLDyM7tj@phil>
 <CAP4nuTUQZRG9yV1Bz2hpe10K3CrWhVWf_YYBnMs3O1KyahhrMw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_070111_191016_97A90DED 
X-CRM114-Status: GOOD (  11.95  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, nick@khadas.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgTmljaywKCkFtIEZyZWl0YWcsIDE0LiBKdW5pIDIwMTksIDE1OjMyOjExIENFU1Qgc2Nocmll
YiBOaWNrIFhpZToKPiBUaGFua3MsIEknbGwgY2hlY2sgdGhlbSBvdXQuCj4gCj4gQnV0IHRoZXJl
IGlzIGEgc21hbGwgdHlwbzoKPiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgv
a2VybmVsL2dpdC9tbWluZC9saW51eC1yb2NrY2hpcC5naXQvdHJlZS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzM5OS1raGFkYXMtZWRnZS5kdHNpP2g9djUuMy1hcm1zb2MvZHRzNjQm
aWQ9OTEwMjQ5ODk3ZDEzYmVhYTBiNDYwNjllMjcxMzkwMjRjZDc3ZTkxNiNuMjk5Cj4gCj4gKjIy
IChHUElPMV9DNikqIHNob3VsZCBiZSAqUktfUEM2KiBOT1QgKlJLX1BENiouCgp0aGFua3MgZm9y
IGRvdWJsZS1jaGVja2luZyAuLi4gSSd2ZSB1cGRhdGVkIHRoZSBjb21taXQgdG8gdXNlIHRoZSBy
aWdodCBncGlvIG5vdy4KCkhlaWtvCgo+IAo+IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2gu
ZGU+IOS6jjIwMTnlubQ25pyIMTTml6XlkajkupQg5LiL5Y2INzozMuWGmemBk++8mgo+IAo+ID4g
QW0gTW9udGFnLCAxMC4gSnVuaSAyMDE5LCAwOTo1Nzo1MyBDRVNUIHNjaHJpZWIgeGllcWluaWNr
QGdtYWlsLmNvbToKPiA+ID4gRnJvbTogTmljayBYaWUgPG5pY2tAa2hhZGFzLmNvbT4KPiA+ID4K
PiA+ID4gQWRkIGRldmljZXRyZWUgc3VwcG9ydCBmb3IgS2hhZGFzIEVkZ2UvRWRnZS1WL0NhcHRh
aW4gYm9hcmRzLgo+ID4gPiBLaGFkYXMgRWRnZSBpcyBhbiBleHBhbmRhYmxlIFJvY2tjaGlwIFJL
MzM5OSBib2FyZCB3aXRoIGdvbGRmaW5nZXIuCj4gPiA+IEtoYWRhcyBDYXB0YWluIGlzIHRoZSBj
YXJyaWVyIGJvYXJkIGZvciBLaGFkYXMgRWRnZS4KPiA+ID4gS2hhZGFzIEVkZ2UtViBpcyBhIEto
YWRhcyBWSU0gZm9ybSBmYWN0b3IgUm9ja2NoaXAgUkszMzk5IGJvYXJkLgo+ID4gPgo+ID4gPiBT
aWduZWQtb2ZmLWJ5OiBOaWNrIFhpZSA8bmlja0BraGFkYXMuY29tPgo+ID4KPiA+IGFwcGxpZWQg
Zm9yIDUuMyBhZnRlciBkb2luZyBzb21lIHN0eWxlLWZpeGVzIHRvIHRoZSBlZGdlLmR0c2kKPiA+
ICgyIG1pc3NpbmcgZ3BpbyBjb25zdGFudHMsIHNvbWUgbmV3bGluZXMgYW5kIHNkaW8tcmVndWxh
dG9yCj4gPiByZWZlcmVuY2VzIHdlcmUgbWlzc2luZyAiPC4uPiIpCj4gPgo+ID4gUGxlYXNlIGRv
dWJsZS1jaGVjayB0aGUgcmVzdWx0Cj4gPgo+ID4KPiA+IFRoYW5rcwo+ID4gSGVpa28KPiA+Cj4g
Pgo+ID4KCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
