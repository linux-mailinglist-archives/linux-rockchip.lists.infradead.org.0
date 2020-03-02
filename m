Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C17F17579C
	for <lists+linux-rockchip@lfdr.de>; Mon,  2 Mar 2020 10:48:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x3VwmyyPe0yhGvAuOBmEyyiPOS4aFhQWO6yA0e75sus=; b=FjGtYy+Nez7U0b
	PRmQhy2VVLH0AogvqRm2ZbwQkWivmoKy1m7/j/8MbyK9s221ZN37kZawujKWsqZpRONcEOu9LJ/R+
	7q4trX9E9MNC6WMHI7+F72YY++pVeywSd08oZLGtU2UYvvb+LtZ9aMWTkXODC1ZUnPJq7h3onwuAX
	Q2PU7OQZq/PR5sIae6qgMOA91PjZKn47dYVPgoLoontGfiEIo6WL0aT+Apeu95bQgyeNAfvGKKkUv
	pBfQjwwhPARRQoPeO1WAyGzIy4qatHiTScCLLIfXIE4QEtUKOx79tP/j4iekjG5N3UnqyqgLKo6Yb
	wEKDozTmrdgghpIocXvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8hgo-0008Ka-3N; Mon, 02 Mar 2020 09:48:42 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8hge-0008Ci-RY; Mon, 02 Mar 2020 09:48:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=KHxxvYImJT7QiDa3sc8KENVWKTPjXD62w1dc/5cT9rU=; b=yNc0Z6lQSzSl/z4cE43aSfUXZ6
 F6/9s6Rsz20ol+JZJ9zWW7MgYGJ1UyhNmx3DgNZ1IKI4jv0F85NyNgrO3ADQDK1T2SuyAn5dopfdt
 OCPOcVNq2GwR+9yH3sAMNlsIX9ohdDLjeF863YDmm9zXxG/qctvIEIYZMeTnluZPtxhMGxDmq+74D
 YNPjsM3tOBbkAe3E1en2bKFLkwl4rw6xFrjxTLiAnn4nPOcSGwhbdJzXMVa1kG/qvIMFkGWG99WbR
 PRuSIldznfsDGtNSqM4ouLGwWGpU46etpONJL+i/7jbafDgbkVy7FNtv61KQEi6+KqVWhT/WRuGqa
 zfuw5c8w==;
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8hgc-00064V-DE; Mon, 02 Mar 2020 09:48:31 +0000
X-Originating-IP: 90.89.41.158
Received: from xps13 (lfbn-tou-1-1473-158.w90-89.abo.wanadoo.fr [90.89.41.158])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 5FD5040006;
 Mon,  2 Mar 2020 09:47:55 +0000 (UTC)
Date: Mon, 2 Mar 2020 10:47:54 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Yifeng Zhao <yifeng.zhao@rock-chips.com>
Subject: Re: [PATCH 1/3] mtd: rawnand: rockchip: NFC drivers for RK3308,
 RK3188 and others
Message-ID: <20200302104754.61204e72@xps13>
In-Reply-To: <20200302024744.28185-2-yifeng.zhao@rock-chips.com>
References: <20200302024744.28185-1-yifeng.zhao@rock-chips.com>
 <20200302024744.28185-2-yifeng.zhao@rock-chips.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.194 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
ZSBvbiBNb24sICAyIE1hciAyMDIwCjEwOjQ3OjQyICswODAwOgoKPiBUaGlzIGRyaXZlciBzdXBw
b3J0cyBSb2NrY2hpcCBORkMgKE5BTkQgRmxhc2ggQ29udHJvbGxlcikgZm91bmQgb24gUkszMzA4
LAo+IFJLMzM2OCwgUktQWDMwLCBSVjExMDggYW5kIG90aGVyIFNPQ3MuIFRoZSBkcml2ZXIgaGFz
IGJlZW4gdGVzdGVkIHVzaW5nCj4gOC1iaXQgTkFORCBpbnRlcmZhY2Ugb24gdGhlIEFSTSBiYXNl
ZCBSSzMzMDggcGxhdGZvcm0uCgpJIG1pc3NlZCB0aGlzIHNlcmllcywgeW91IHNob3VsZCBoYXZl
IGl0IHByZWZpeGVkICJ2MiIuIFBsZWFzZSB1c2UKZ2l0LWZvcm1hdC1wYXRjaCB0byBnZW5lcmF0
ZSB5b3VyIHNlcmllcy4gVGhpcyB0aW1lIHlvdSBtaXNzIHRoZSBjb3ZlcgpsZXR0ZXIgKG9yIGF0
IGxlYXN0IHlvdXIgc2Vjb25kIGFuZCB0aGlyZCBwYXRjaGVzIHNob3VsZCBiZSBhbnN3ZXJzIHRv
CnRoZSBmaXJzdCBvbmUpIG90aGVyd2lzZSBpdCBpcyBub3QgZWFzeSB0byBmb2xsb3cgd2hlbiBw
ZW9wbGUgc3RhcnQKZGlzY3Vzc2luZzoKCglnaXQgZm9ybWF0LXBhdGNoIC0tY292ZXItbGV0dGVy
IC12PHg+IFtjb21taXRzXQoJZ2l0IHNlbmQtZW1haWwgdjx4Pi0qLnBhdGNoIC0tdG8gLi4uIC0t
Y2MgLi4uCgpGb3IgdGhlIG5leHQgaXRlcmF0aW9uLCA8eD4gc2hvdWxkIGJlIDMuCgpBbHNvLCBt
aW5kIHRoZSB0aXRsZSBjaGFuZ2UgZm9yIHRoZSBiaW5kaW5ncyBjaGFuZ2VzLgoKR29vZCBsdWNr
LApNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
