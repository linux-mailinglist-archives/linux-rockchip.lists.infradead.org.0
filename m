Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 318AC175724
	for <lists+linux-rockchip@lfdr.de>; Mon,  2 Mar 2020 10:31:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a5XfcQ5Z8rimcG4zyix+p/9uWZSkhI4NX+/bZOlQN6g=; b=M4GcYrVTtyL1pt
	EIOVoc9i/9hCIJsG4dXCU6NowYsIuh3M6yUsPBaMemIY90SV8NCHbw7jZVV/11CMCRGQiOB3mTCtg
	Sqb+azKmNfE3940zoE4SXFsJuS1HOBWS3ya1fTggLT0kKk5u/fd8RYkYY3FJqa4hkyg2Q76GpHo9/
	k3yPDP29tqj681nudzLcaUY/b8PgURTr0xTBV3g1gyyRYE8ala4TVwkyM5vp7Z1PkgxTSspmR5XzD
	JSRCxUPESqYEcAebSupAYkABdQ3mUItGbqzs9/IqrHNJH6JE8FLMvKV5BWyPeujXAe90ZQz96z2ef
	rb0oTXIvkhyiyHNb1P7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8hQV-0000bG-1g; Mon, 02 Mar 2020 09:31:51 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8hQG-0000Q1-Oj; Mon, 02 Mar 2020 09:31:38 +0000
X-Originating-IP: 90.89.41.158
Received: from xps13 (lfbn-tou-1-1473-158.w90-89.abo.wanadoo.fr [90.89.41.158])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 80483FF803;
 Mon,  2 Mar 2020 09:31:03 +0000 (UTC)
Date: Mon, 2 Mar 2020 10:31:03 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Yifeng Zhao <yifeng.zhao@rock-chips.com>
Subject: Re: [PATCH 0/3] Add Rockchip NFC drivers for RK3308 and others
Message-ID: <20200302103103.1eb7df94@xps13>
In-Reply-To: <1582884076-27615-1-git-send-email-yifeng.zhao@rock-chips.com>
References: <1582884076-27615-1-git-send-email-yifeng.zhao@rock-chips.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_013136_944736_AEE4DFD0 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, vigneshr@ti.com, richard@nod.at,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, heiko@sntech.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgWWlmZW5nLAoKWWlmZW5nIFpoYW8gPHlpZmVuZy56aGFvQHJvY2stY2hpcHMuY29tPiB3cm90
ZSBvbiBGcmksIDI4IEZlYiAyMDIwCjE4OjAxOjEzICswODAwOgoKPiBSb2NrY2hwJ3MgTkZDKE5h
bmQgRmxhc2ggQ29udHJvbGxlcikgaGFzIHRocmVlIHZlcnNpb25zOiBWNiwgVjggYW5kIFY5Lgo+
IFRoaXMgc2VyaWVzIHBhdGNoIGNhbiBzdXBwb3J0IGFsbCAgdGhyZWUgdmVyc2lvbnMuCj4gCgpZ
b3VyIHNlcmllcyBoYXMgYmVlbiBiYWRseSBjcmVhdGVkLCBzdHJhbmdlbHkgSSByZWNlaXZlZCB0
d2ljZSBwYXRjaCAxCndpdGggdHdvIGRpZmZlcmVudCBjb250ZW50cywgcGF0Y2ggMiBhcnJpdmVk
IHdheSBsYXRlciB0aGFuIHBhdGNoIDEgYW5kCjMgYW5kIHRoZSBjb21taXQgdGl0bGUgb2YgdGhl
IGJpbmRpbmdzIHBhdGNoIGlzIHdyb25nLCBpdCBzaG91bGQKYmVzb21ldGhpbmcgbGlrZToKCglk
dC1iaW5kaW5nczogbXRkOiBEZXNjcmliZSBSb2NrY2hpcCBSSzN4eHggTkFORCBmbGFzaCBjb250
cm9sbGVyCgpDYW4geW91IHBsZWFzZSByZXNlbmQgdGhpcyBzZXJpZXMgaW4gYSB2Mj8KClRoYW5r
cywKTWlxdcOobAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
