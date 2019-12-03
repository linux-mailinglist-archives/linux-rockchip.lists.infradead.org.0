Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8DDA10FEBA
	for <lists+linux-rockchip@lfdr.de>; Tue,  3 Dec 2019 14:25:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eVzpioXJ9GFfMfadrj6YU6gXiYRrZUkEXyetsFstnoE=; b=eN2/Ylgs8gf4xK
	a8T3g5CBcXuN9r6lkVZsQwZcX9ZJq3Ddy3nby7w0aQAX8ZBRKz1ZRNsyLpDArejUQjilcrwJc4/OG
	l8XPHoILeBItC4Kcw4Eu11FsfEzjo8D8oXK0bSX1wpcorHDJJRIG/AoANTBnpV2R0xN7oTrOcWodU
	71Og3fUjU1EFiQuBggVqJCdbE+NwMd/dzV7JwCkSDxpvupcLyokgfnCHPe/wN/rExFwaryL9bMuGX
	KXhywfeaka2qjJCTjeN25iCPry6On6AnnHjDLZPkHTPX2U6svw5O5dRjTBt1luVl+NVIHwl/6MBId
	23Kb2fXxHbdIa7Eu0Fig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic8B9-0008Qb-CL; Tue, 03 Dec 2019 13:25:23 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic8B5-0008Ow-2Q
 for linux-rockchip@lists.infradead.org; Tue, 03 Dec 2019 13:25:20 +0000
Received: by mail-lf1-x141.google.com with SMTP id a17so2896418lfi.13
 for <linux-rockchip@lists.infradead.org>; Tue, 03 Dec 2019 05:25:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=9a1hL+PexI1M8Jq7K439+8ni7/mVSuwFTy8tepPE5ag=;
 b=xvis201gXI3TiO7rQvoI1mKBfSgzASqAd5iNB/gKNTcG/vn4Yqzhacn1uV/53tfqU8
 kD2NRTag5a/3oe4AJYonE/5qZUY9d/e3gtDw1PcpmJ/wbepHuPFpAO2vAYkoiRl+EaUf
 eNzFxpDgdSJ7gWNidrFThpe2xiov+axfIBro+R28+EWkRF0w07eNS6dozJjhFBRBpmMt
 usXLfgmME3MTm5zAC5CIERmWX1iAN+xefTx1Q2ApRqbMrUAp3Ylf9AiZA9HwCUstvsYg
 6tssUWKZp25YEHHE3kRX0wSoNqFps0sLQNBE4276+BCka+7PILtOjKGV7mxPqc5LGtcR
 hgNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=9a1hL+PexI1M8Jq7K439+8ni7/mVSuwFTy8tepPE5ag=;
 b=R3o1cXEhSB26b2snXeiR03VlIjZaRZ0IqpPwo62jO1ZiEPdyxEtHny432+4aBmDh0N
 CFxIX6udQl76noUIk4ntt7OmkzE+hVvcrDa+o9W+IH/EgWFL/+PiSKpaSMsuYPYg3cfT
 9Uyk+YQyimU6jtebzgxJ2UNnjAB4hQWNK/G5rLyvZw1i38Ozd9r1SiMG5USSSoWRCzY6
 JPPg2QbAakl+Tfd91KKB4U5UvcfQH3Jy2vsHX65CjP859+NFGGzVaBWX1iDI6PL4imEW
 pBcjugaYZtHzMFo4zvuZx9eX2Nv1vioOh3sozOhrkIT7/KOiAUSoP5UsAwB9Xwcn29iQ
 4whQ==
X-Gm-Message-State: APjAAAXUVc+OZLVb3DC4xEfL622ShSLCJM7Xr1LCpALugScppGXOB8Sh
 AA9qI9/fT0hWK1h84mToygMQ7YvR2Q9bC4ebBn4VbA==
X-Google-Smtp-Source: APXvYqxTXADDPAMH7cAkcCdHzl2vjK+aV5Roq/rNhp0U0HmtoXe1KfDsidebtQJoYG7+XHWaVda6PVL/JLS+4QQ0S+k=
X-Received: by 2002:a19:7611:: with SMTP id c17mr2569127lff.86.1575379516980; 
 Tue, 03 Dec 2019 05:25:16 -0800 (PST)
MIME-Version: 1.0
References: <20191202193230.21310-1-sam@ravnborg.org>
 <20191202193230.21310-6-sam@ravnborg.org>
In-Reply-To: <20191202193230.21310-6-sam@ravnborg.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 3 Dec 2019 14:25:04 +0100
Message-ID: <CACRpkdb9c__FUBWE6j6g9uFwYRE6CrX8gu2gbHZ-xPpZ+YkF6Q@mail.gmail.com>
Subject: Re: [PATCH v1 05/26] drm/panel: add drm_connector argument to
 get_modes()
To: Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_052519_111719_B41BAD2F 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Stefan Agner <stefan@agner.ch>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Stefan Mavrodiev <stefan@olimex.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Tomi Valkeinen <tomi.valkeinen@ti.com>, NXP Linux Team <linux-imx@nxp.com>,
 Robert Chiras <robert.chiras@nxp.com>, Jagan Teki <jagan@amarulasolutions.com>,
 Jitao Shi <jitao.shi@mediatek.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Abhinav Kumar <abhinavk@codeaurora.org>, linux-tegra@vger.kernel.org,
 Sean Paul <sean@poorly.run>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Purism Kernel Team <kernel@puri.sm>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gTW9uLCBEZWMgMiwgMjAxOSBhdCA4OjMzIFBNIFNhbSBSYXZuYm9yZyA8c2FtQHJhdm5ib3Jn
Lm9yZz4gd3JvdGU6Cgo+IFRvZGF5IHRoZSBicmlkZ2UgY3JlYXRlcyB0aGUgZHJtX2Nvbm5lY3Rv
ciwgYnV0IHRoYXQgaXMgcGxhbm5lZAo+IHRvIGJlIG1vdmVkIHRvIHRoZSBkaXNwbGF5IGRyaXZl
cnMuCj4gVG8gZmFjaWxpdGF0ZSB0aGlzLCB1cGRhdGUgZHJtX3BhbmVsX2Z1bmNzLmdldF9tb2Rl
cygpIHRvCj4gdGFrZSBkcm1fY29ubmVjdG9yIGFzIGFuIGFyZ3VtZW50Lgo+IEFsbCBwYW5lbCBk
cml2ZXJzIGltcGxlbWVudGluZyBnZXRfbW9kZXMoKSBhcmUgdXBkYXRlZC4KPgo+IFNpZ25lZC1v
ZmYtYnk6IFNhbSBSYXZuYm9yZyA8c2FtQHJhdm5ib3JnLm9yZz4KPiBDYzogVGhpZXJyeSBSZWRp
bmcgPHRoaWVycnkucmVkaW5nQGdtYWlsLmNvbT4KPiBDYzogTGF1cmVudCBQaW5jaGFydCA8bGF1
cmVudC5waW5jaGFydEBpZGVhc29uYm9hcmQuY29tPgo+IENjOiBTYW0gUmF2bmJvcmcgPHNhbUBy
YXZuYm9yZy5vcmc+Cj4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBs
aW51eC5pbnRlbC5jb20+Cj4gQ2M6IE1heGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4K
PiBDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGxpbnV4LmllPgo+IENjOiBEYW5pZWwgVmV0dGVy
IDxkYW5pZWxAZmZ3bGwuY2g+Cj4gQ2M6IExpbnVzIFdhbGxlaWogPGxpbnVzLndhbGxlaWpAbGlu
YXJvLm9yZz4KPiBDYzogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4g
Q2M6IFN0ZWZhbiBNYXZyb2RpZXYgPHN0ZWZhbkBvbGltZXguY29tPgo+IENjOiBSb2JlcnQgQ2hp
cmFzIDxyb2JlcnQuY2hpcmFzQG54cC5jb20+Cj4gQ2M6ICJHdWlkbyBHw7xudGhlciIgPGFneEBz
aWd4Y3B1Lm9yZz4KPiBDYzogUHVyaXNtIEtlcm5lbCBUZWFtIDxrZXJuZWxAcHVyaS5zbT4KClRo
aXMgbG9va3MgcmVhc29uYWJsZSB0byBtZS4KClJldmlld2VkLWJ5OiBMaW51cyBXYWxsZWlqIDxs
aW51cy53YWxsZWlqQGxpbmFyby5vcmc+CgpZb3VycywKTGludXMgV2FsbGVpagoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
