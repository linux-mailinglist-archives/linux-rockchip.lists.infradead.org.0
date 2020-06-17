Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E9B1FC958
	for <lists+linux-rockchip@lfdr.de>; Wed, 17 Jun 2020 10:58:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yBVwH8hrJMkp1TJkI3MMu22ojOPsWTzt+p12eaziP7U=; b=kPghne/4IJRf91
	cP1ZXGfT0mcEnxaBnZmq2plBoOgiWXmJDs9s7fFifIbfgfVBHPeWgegIm9lqLQUuD6TW5fpsJ6JLB
	MuJx/kpAcN2oDgJHJ+z4N3qkUAazuYsu00u5bFyRASoUaQcI98rIZ9RA7Gl59HhwRY7KlIzaGahmp
	onBweOqvuYf6wXAG/vSOe+CZ47Bync8TYIoAAS8oUZQRaRk+8W6t7FsM8Lt97wgykY53vON/uT4P9
	Ua3rRd3kGA1zxmWqaDITehRpaVEnan62Vl3C1B2qyG/MkwFu9jghGM7mXtEV/I+SQ7kjBwehxMekW
	5+mKLS0nuWoRlI9yDaRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlTu2-0006is-Oc; Wed, 17 Jun 2020 08:58:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlTts-0006Zo-F7; Wed, 17 Jun 2020 08:58:29 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jlTtp-0006BR-SR; Wed, 17 Jun 2020 10:58:25 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: robh+dt@kernel.org,
 =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@collabora.com>,
 sboyd@kernel.org, mturquette@baylibre.com
Subject: Re: [PATCH v4 0/2] ARM: Add Rockchip rk3288w support
Date: Wed, 17 Jun 2020 10:58:23 +0200
Message-Id: <159238429476.1470505.6023847362048785737.b4-ty@sntech.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200602080644.11333-1-mylene.josserand@collabora.com>
References: <20200602080644.11333-1-mylene.josserand@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_015828_507199_804D64CB 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gVHVlLCAyIEp1biAyMDIwIDEwOjA2OjQyICswMjAwLCBNeWzDqG5lIEpvc3NlcmFuZCB3cm90
ZToKPiBDb250ZXh0Cj4gLS0tLS0tLQo+IAo+IEhlcmUgaXMgbXkgVjQgb2YgbXkgcGF0Y2hlcyB0
aGF0IGFkZCB0aGUgc3VwcG9ydCBmb3IgdGhlIFJvY2tjaGlwCj4gUkszMjg4dyB3aGljaCBpcyBh
IHJldmlzaW9uIG9mIHRoZSBSSzMyODguIEl0IGlzIG1vc3RseSB0aGUgc2FtZSBTT0MKPiBleGNl
cHQgZm9yLCBhdCBsZWFzdCwgb25lIGNsb2NrIHRyZWUgd2hpY2ggaXMgZGlmZmVyZW50Lgo+IFRo
aXMgZGlmZmVyZW5jZSBpcyBvbmx5IGtub3duIGJ5IGxvb2tpbmcgYXQgdGhlIEJTUCBrZXJuZWwg
WzFdLgo+IAo+IFsuLi5dCgpBcHBsaWVkLCB0aGFua3MhCgpbMS8yXSBjbGs6IHJvY2tjaGlwOiBI
YW5kbGUgY2xvY2sgdHJlZSBmb3IgcmszMjg4dyB2YXJpYW50CiAgICAgIGNvbW1pdDogMTYyN2Y2
ODM2MzZkZjcwZmIyNTM1OGIwYTdiMzlhMjRlOGZjZTViZgpbMi8yXSBkdC1iaW5kaW5nczogY2xv
Y2tzOiBhZGQgcmszMjg4dyB2YXJpYW50IGNvbXBhdGlibGUKICAgICAgY29tbWl0OiAwMGJkNDA0
MTQ0MjQxMTU1NjUzYmIwZDBjMTViZTUxZTRlNjk4M2FhCgpCZXN0IHJlZ2FyZHMsCi0tIApIZWlr
byBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
