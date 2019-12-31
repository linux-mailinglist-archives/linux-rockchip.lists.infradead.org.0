Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0E512D9E8
	for <lists+linux-rockchip@lfdr.de>; Tue, 31 Dec 2019 16:42:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uudgc+LRuKLHfxeluTkBV1kGtO9wshk4E/5gAy+FgbE=; b=Jdr6iu4HedPFjD
	E4l9HrXbG1JgGm+xJQqwi5rZV4recs2B+4st461eU9DCGfr6drIZPZCYUpOE9UiEB+LK/PsQjSAh2
	psGy3h7fJ81ujZ+JJrz3ctqHzze30rU1wfSgTZ5VqWH2zJAYY7uhGh1GpEImhPIkY7hUxK302YXCB
	CTlBxfAE1a9PH6xdG2ertsQlyHSXpCMmArwKo0pxhfIdjinq+LHIHznbpTj2P8QgC0Hq0cyY2VIkt
	8JxBtEPIMWbvky+oPENOBQP9x6cYBwZRXFJBG+z6GJoh4iSInWy+HBWlB+DimD6D99XBXmcmI2ZlY
	6hTTXJ1TGYknaTlEmpiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imJee-000274-Bh; Tue, 31 Dec 2019 15:41:56 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imJeP-0001xQ-R5; Tue, 31 Dec 2019 15:41:43 +0000
X-Originating-IP: 91.224.148.103
Received: from xps13 (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 2BBBAC0005;
 Tue, 31 Dec 2019 15:41:27 +0000 (UTC)
Date: Tue, 31 Dec 2019 16:41:25 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2 10/11] arm64: dts: rockchip: Add PX30 DSI DPHY
Message-ID: <20191231164125.2aaad2e2@xps13>
In-Reply-To: <10740878.zWD4iEhqxt@phil>
References: <20191224143900.23567-1-miquel.raynal@bootlin.com>
 <20191224143900.23567-11-miquel.raynal@bootlin.com>
 <1796464.bE5sXyoQCg@phil> <10740878.zWD4iEhqxt@phil>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_074142_016619_D67E3734 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgSGVpa28sCgpIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZSBvbiBUdWUs
IDMxIERlYyAyMDE5IDEzOjE0OjAyCiswMTAwOgoKPiBBbSBEaWVuc3RhZywgMzEuIERlemVtYmVy
IDIwMTksIDEyOjU2OjE0IENFVCBzY2hyaWViIEhlaWtvIFN0dWVibmVyOgo+ID4gQW0gRGllbnN0
YWcsIDI0LiBEZXplbWJlciAyMDE5LCAxNTozODo1OSBDRVQgc2NocmllYiBNaXF1ZWwgUmF5bmFs
OiAgCj4gPiA+IEFkZCB0aGUgUEhZIHdoaWNoIG91dHB1dHMgTUlQSSBEU0kgYW5kIExWRFMuCj4g
PiA+IAo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBNaXF1ZWwgUmF5bmFsIDxtaXF1ZWwucmF5bmFsQGJv
b3RsaW4uY29tPiAgCj4gPiAKPiA+IGFwcGxpZWQgZm9yIDUuNiAocGlja2VkIGVhcmx5IGR1ZSB0
byBpdCBiZWluZyBzaGFyZWQgYmV0d2VlbiBsdmRzIGFuZCBkc2kpICAKPiAKPiBhbmQgSSd2ZSBq
dXN0IGFkZGVkIHRoZSBWTyBwb3dlcmRvbWFpbiB0byB0aGUgZHNpLWRwaHkgbm9kZS4KPiAKPiBX
aGlsZSB0aGUgVFJNIGlzIG5vdCByZWFsbHkgZm9ydGhjb21pbmcgaW4gdGVsbGluZyBtZSBpZiB0
aGUgZHBoeSBuZWVkcwo+IHRoZSBwb3dlci1kb21haW4gYXMgd2VsbCwgdGhlIHZlbmRvciBrZXJu
ZWwgZG9lcywgc28gd2Ugc2hvdWxkIHByb2JhYmx5Cj4ganVzdCBmb2xsb3cgdGhlaXIgZXhhbXBs
ZSA7LSkgLgoKQWdyZWVkIQoKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
