Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCCC8667EC
	for <lists+linux-rockchip@lfdr.de>; Fri, 12 Jul 2019 09:43:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O7eaY9JWV5MGFjjCzM9FhrtTKKMYAxYdbPnO42hdYKg=; b=NAeWADxXE7P8Mh
	3oEyyf4z2zx+ZGFXoj+8ib2ElT8BDt7Xq8S7roFjamrM4Qir3ZfUtNn4e/P0kLM/LS9m78Ma1Zhkb
	eBAa72QAzvT8RIKjhWT6EoQf60oufxEFSTs4qk0oVCJqZHT4/9JCoTF9mbFYnJFKnDp2eYy9mm8Yj
	YSZtJj/B1sFTbz4Ns3ErcE6X/nd4Q1q4cENbXnYkO380eZgRWdFKlLQKM7TjFUmA+g/aKYusC0Zhf
	MFBHxnC0m0JjsUvn3VliN2qm+NY/+R8PgBaUm3O+UlJ7aB30k09/AymuFdVRMwjUkZl2VdhcHBK7Y
	32JM95iK/gmBESkcv09g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlqCr-0001Q5-H4; Fri, 12 Jul 2019 07:43:01 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlqCm-0001O8-Jk
 for linux-rockchip@lists.infradead.org; Fri, 12 Jul 2019 07:42:59 +0000
Received: by mail-qk1-x741.google.com with SMTP id w190so5732138qkc.6
 for <linux-rockchip@lists.infradead.org>; Fri, 12 Jul 2019 00:42:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=T9t4sMdQ7ju6F95r8VqvTuSRnDoqwe8Mg8/EN7g9bjA=;
 b=rk/R6JuNMGMSZJb+YPovsTkrtFyiszy1QWZh3TpLHFIqylcWHxh/ewIgd5a91wVrQN
 ceahiCjA8ikBPJluTWFpkNkYsV/2p3vlCRMfVhOMdONZ8Zsfd3+3N/qVDb4F6+pIMDnK
 MbECjms9qZWlKYELmMDYGSebaDp1YXaSOCKmgRxegfoFrGHo+siChFMRBKT6zhvAcFLi
 UXNatuEC7/Nah1UVkg8fj0wFrba/yP9t7EBPLYREIDMsvG8kovZq5n+fy87RmOjt2+sl
 282rTn+x8xEupAa3RoC0ULJjlpGrxGjO+Ro8hneewvhjGYR9H4mz+vUwj9n1jyvbXOaQ
 ghUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=T9t4sMdQ7ju6F95r8VqvTuSRnDoqwe8Mg8/EN7g9bjA=;
 b=dqS7k5LQuOZjqutapqrwJNAVFv5dEUSZpY/K952VYQvX6lhJs2/Xg+juSIvnfEb6Y3
 wnymPRGAq9Xi44fnESpvRo1NjZYwVnTw4YeOTHjy2dMPep8IAGdvsCQIU3hQL2gR89ka
 DC3Gmi7idjWpp6ZS2E4Rx2iGFNfr9sw1LABMd5VmmL2iEcyoN1f5JpsAQ/qqTeMhxGxo
 iBiBg71+Nv0xJhxlhitdLamjUL3DwP4Yj1TqVe7wwi011bKmzBOIX+Uaifv5569fknte
 qluYCdN2+lxshZM2XOaTe27o/25fdeJLCa5kaFdRxZa8BElwKeYY1VrbGKGCpq4zKDJG
 WxfA==
X-Gm-Message-State: APjAAAWgaAChfb9DYV/NbE/zBR8bRl1bfDP/xXannxberPjjNHdNRJJL
 zH0DVo+sQP8aCz4putA3AvANwfJK+VUlR7XVCmUtVg==
X-Google-Smtp-Source: APXvYqwrgaL71IJVsa72rhVPOh+cWEZTyj1wxVLTO7GH4TREGLwUjIqC+Ue6eLE9ZNTL9jxZF/dPXtjZfP7KY6zczmo=
X-Received: by 2002:a37:bcc7:: with SMTP id m190mr5072496qkf.433.1562917375149; 
 Fri, 12 Jul 2019 00:42:55 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1562843413.git.andrzej.p@collabora.com>
 <86afdc0bca6939901870176dcf55f279f7b10a08.1562843413.git.andrzej.p@collabora.com>
In-Reply-To: <86afdc0bca6939901870176dcf55f279f7b10a08.1562843413.git.andrzej.p@collabora.com>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Fri, 12 Jul 2019 09:42:44 +0200
Message-ID: <CA+M3ks63WY4umDR_1apjLj4kDf8jpm-CLsC-XO7dY=LbY--p-w@mail.gmail.com>
Subject: Re: [PATCH v4 15/23] drm: sti: Provide ddc symlink in hdmi connector
 sysfs directory
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_004256_667712_1B310A29 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: "Y.C. Chen" <yc_chen@aspeedtech.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <narmstrong@baylibre.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Ramalingam C <ramalingam.c@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Liviu Dudau <liviu.dudau@arm.com>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 Douglas Anderson <dianders@chromium.org>, Andrzej Hajda <a.hajda@samsung.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 "moderated list:ARM/S5P EXYNOS AR..." <linux-samsung-soc@vger.kernel.org>,
 Joonyoung Shim <jy0922.shim@samsung.com>, linux-rockchip@lists.infradead.org,
 Vincent Abriou <vincent.abriou@st.com>, Rob Clark <robdclark@gmail.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 David Airlie <airlied@linux.ie>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 CK Hu <ck.hu@mediatek.com>, Dave Airlie <airlied@redhat.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Shashank Sharma <shashank.sharma@intel.com>, freedreno@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>, Inki Dae <inki.dae@samsung.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Jyri Sarha <jsarha@ti.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Chris Wilson <chris@chris-wilson.co.uk>,
 Sean Paul <sean@poorly.run>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Allison Randal <allison@lohutok.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 amd-gfx@lists.freedesktop.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Eric Anholt <eric@anholt.net>, Thomas Zimmermann <tzimmermann@suse.de>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Sandy Huang <hjc@rock-chips.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Huang Rui <ray.huang@amd.com>,
 Daniel Vetter <daniel@ffwll.ch>, Alex Deucher <alexander.deucher@amd.com>,
 Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

TGUgamV1LiAxMSBqdWlsLiAyMDE5IMOgIDEzOjMwLCBBbmRyemVqIFBpZXRyYXNpZXdpY3oKPGFu
ZHJ6ZWoucEBjb2xsYWJvcmEuY29tPiBhIMOpY3JpdCA6Cj4KPiBVc2UgdGhlIGRkYyBwb2ludGVy
IHByb3ZpZGVkIGJ5IHRoZSBnZW5lcmljIGNvbm5lY3Rvci4KPgo+IFNpZ25lZC1vZmYtYnk6IEFu
ZHJ6ZWogUGlldHJhc2lld2ljeiA8YW5kcnplai5wQGNvbGxhYm9yYS5jb20+CgpSZXZpZXdlZC1i
eTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGxpbmFyby5vcmc+Cgo+IC0t
LQo+ICBkcml2ZXJzL2dwdS9kcm0vc3RpL3N0aV9oZG1pLmMgfCAxICsKPiAgMSBmaWxlIGNoYW5n
ZWQsIDEgaW5zZXJ0aW9uKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3N0aS9z
dGlfaGRtaS5jIGIvZHJpdmVycy9ncHUvZHJtL3N0aS9zdGlfaGRtaS5jCj4gaW5kZXggZjAzZDYx
N2VkYzRjLi45MGY4ZGI2M2MwOTUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3N0aS9z
dGlfaGRtaS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3N0aS9zdGlfaGRtaS5jCj4gQEAgLTEy
NzksNiArMTI3OSw3IEBAIHN0YXRpYyBpbnQgc3RpX2hkbWlfYmluZChzdHJ1Y3QgZGV2aWNlICpk
ZXYsIHN0cnVjdCBkZXZpY2UgKm1hc3Rlciwgdm9pZCAqZGF0YSkKPiAgICAgICAgIGRybV9icmlk
Z2VfYXR0YWNoKGVuY29kZXIsIGJyaWRnZSwgTlVMTCk7Cj4KPiAgICAgICAgIGNvbm5lY3Rvci0+
ZW5jb2RlciA9IGVuY29kZXI7Cj4gKyAgICAgICBkcm1fY29ubmVjdG9yLT5kZGMgPSBoZG1pLT5k
ZGNfYWRhcHQ7Cj4KPiAgICAgICAgIGRybV9jb25uZWN0b3IgPSAoc3RydWN0IGRybV9jb25uZWN0
b3IgKiljb25uZWN0b3I7Cj4KPiAtLQo+IDIuMTcuMQo+CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
