Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9554F10FEBF
	for <lists+linux-rockchip@lfdr.de>; Tue,  3 Dec 2019 14:27:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=layOKGBAjlSNZZ+ERQhjDgrdP2uul+Z3cdA+lHSYDp0=; b=XCN/jGGqJMH7Vh
	Us6TXEkNPxE8UrbUbOCOO/UCN3wX7vPRZ+kBYcITCezx+hanGseIpN6wr3i1b57bXu3Q5w5aY/eCH
	spv+1WQ5qSZTdRFntEh0y7/p4kFT2NZlCJMbkiLt0jgHCs8a8KNR2zCGhE2iEdQ6cpfd+Wuyh/cMl
	Rt5i2+J5yM5M++73a2HcAo/JBcXRZHVlrnUOyGYXpvwLolz/7f58fnQsBuyIJjQccQFZ43BBJnfbf
	MaJFsYy6WSWyX+vG0BjUTu72sJMDMpp3I3GBegq/caiy8xmOQOc23gWHTrVVV2p86epPnabOvaYFK
	2dvv5jmJ8n1Fo8IJXZdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic8Ci-0000Mz-Sf; Tue, 03 Dec 2019 13:27:00 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic8Cc-0000K4-Lw
 for linux-rockchip@lists.infradead.org; Tue, 03 Dec 2019 13:26:58 +0000
Received: by mail-lf1-x143.google.com with SMTP id l18so2970299lfc.1
 for <linux-rockchip@lists.infradead.org>; Tue, 03 Dec 2019 05:26:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=KgNg5NNZGR0exGpYVHoss0gt+wdaKyNS8ghAP3VHhsg=;
 b=igkQQe78pMODNDUT8UJdAPTI3XPGUsbvE7Z0opW/4i+YxWrghvsSkBxmC/Tg4MAZQg
 u5ZCPeygt2VJ078TncPJqyerJr+k4NUeqCpp7Dh0OBHp8gjo3k/DsH8Gr5VBesqs75a8
 E65Uzd9tnumQ0HmJBFOkIjpsE+qiAiBGNBWizShXH0BbhJI+OxD2k4x0VqoRCnn9RbFa
 ZgG6GyycqKiJ/HgewELwsHSwS1T7Fqca13xC4y9rCOnm72R0g4bAA3zklkZX8aF4tMoa
 yUOVp/SKpaE9qzr5p2jCe2+z5C1ENiqT8IY/mK0+zIndY7yy1I//Hzhfrt1rLvU8FUDS
 bmIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=KgNg5NNZGR0exGpYVHoss0gt+wdaKyNS8ghAP3VHhsg=;
 b=f4RcAtwicEV+W+kX31zg6C/BfDlmcTjXAyPuQRWp62Oovnpcx04TDz7jhffQd7FR2E
 11h1lUHP6sluNWK8do7F5iEcn5nPdSMQwpEovQkJwZhYQDJv1HhjFcs2L6AFiuYny+BY
 hUAOtE3AvhQJ26nLYGJpK9/e1Md1nNBsn6E20+jD7hArAektc7Tz1GPEfyGyWZv5uGqH
 onXNEbnoee80ZdKOys7R9T2OdFOFOGHgrmcjxQRdTQtaE3Z4FJ4UccdbjXTNv7MxKisd
 GIUpyd0j8HAE/46BODZoAkfLcWMNoi31IZfiCTq3zcIvb8FTpaktpRRzv4qcVunNJOmG
 F4gg==
X-Gm-Message-State: APjAAAUp372pp6I4vpYh2gIfibKKyOweqcVbl4wqmedaqISSCeQTdc9r
 O/XkXSxVIVttUxHsvq6r8YKVkXj19flprBdW+YgGLQ==
X-Google-Smtp-Source: APXvYqzpK5xVCXuWnpb6zuvLbpHseb2a4Nv0GYrRiK24+O1ab7jDScclek+59Vfvj4nYCDMcLN7eKeirkaGez7A3MBw=
X-Received: by 2002:a19:c84:: with SMTP id 126mr2719867lfm.5.1575379612995;
 Tue, 03 Dec 2019 05:26:52 -0800 (PST)
MIME-Version: 1.0
References: <20191202193230.21310-1-sam@ravnborg.org>
 <20191202193230.21310-7-sam@ravnborg.org>
In-Reply-To: <20191202193230.21310-7-sam@ravnborg.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 3 Dec 2019 14:26:41 +0100
Message-ID: <CACRpkdaCgWu2ZhHc2L=bVW8S4V+omaZZhitpSKE4n0y4J6bdQQ@mail.gmail.com>
Subject: Re: [PATCH v1 06/26] drm/panel: decouple connector from drm_panel
To: Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_052654_731781_5E0409A4 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
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
Cc: Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Fabio Estevam <festevam@gmail.com>, Marek Vasut <marex@denx.de>,
 Stefan Agner <stefan@agner.ch>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Joonyoung Shim <jy0922.shim@samsung.com>,
 Vincent Abriou <vincent.abriou@st.com>, Allison Randal <allison@lohutok.net>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Chen-Yu Tsai <wens@csie.org>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Jagan Teki <jagan@amarulasolutions.com>, Rob Clark <robdclark@chromium.org>,
 Jitao Shi <jitao.shi@mediatek.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, Sascha Hauer <s.hauer@pengutronix.de>,
 Alison Wang <alison.wang@nxp.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Brian Masney <masneyb@onstation.org>, Maxime Ripard <mripard@kernel.org>,
 Inki Dae <inki.dae@samsung.com>, Alexios Zavras <alexios.zavras@intel.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Abhinav Kumar <abhinavk@codeaurora.org>, linux-tegra@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, Sean Paul <sean@poorly.run>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Purism Kernel Team <kernel@puri.sm>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Sandy Huang <hjc@rock-chips.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Shayenne Moura <shayenneluzmoura@gmail.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, Torsten Duwe <duwe@lst.de>,
 Kukjin Kim <kgene@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Sean Paul <seanpaul@chromium.org>, Icenowy Zheng <icenowy@aosc.io>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gTW9uLCBEZWMgMiwgMjAxOSBhdCA4OjMzIFBNIFNhbSBSYXZuYm9yZyA8c2FtQHJhdm5ib3Jn
Lm9yZz4gd3JvdGU6Cgo+IFRvIGZhY2lsaXRhdGUgdGhhdCBjb25uZWN0b3IgY3JlYXRpb24gd2ls
bCBiZSBtb3ZlZAo+IHRvIGRpc3BsYXkgZHJpdmVycywgZGVjb3VwbGUgdGhlIGRybV9jb25uZWN0
b3IgZnJvbSBkcm1fcGFuZWwuCj4gQWRkIGEgY29ubmVjdG9yIGFyZ3VtZW50IHRvIGRybV9wYW5l
bF9nZXRfbW9kZXMoKQo+Cj4gQWxsIHVzZXJzIG9mIGRybV9wYW5lbF9nZXRfbW9kZXMoKSBhbHJl
YWR5IGhhZCB0aGUgY29ubmVjdG9yCj4gYXZhaWxhYmxlLCBzbyB1cGRhdGluZyB1c2VycyB3YXMg
dHJpdmlhbC4KPgo+IFdpdGggdGhpcyBwYXRjaCBkcm1fcGFuZWwgbm8gbG9uZ2VyIGtlZXAgYSBj
b3B5IG9mIHRoZSBkcm1fY29ubmVjdG9yLgo+Cj4gU2lnbmVkLW9mZi1ieTogU2FtIFJhdm5ib3Jn
IDxzYW1AcmF2bmJvcmcub3JnPgo+IENjOiBUaGllcnJ5IFJlZGluZyA8dGhpZXJyeS5yZWRpbmdA
Z21haWwuY29tPgo+IENjOiBMYXVyZW50IFBpbmNoYXJ0IDxMYXVyZW50LnBpbmNoYXJ0QGlkZWFz
b25ib2FyZC5jb20+Cj4gQ2M6IFNhbSBSYXZuYm9yZyA8c2FtQHJhdm5ib3JnLm9yZz4KPiBDYzog
QW5kcnplaiBIYWpkYSA8YS5oYWpkYUBzYW1zdW5nLmNvbT4KPiBDYzogTmVpbCBBcm1zdHJvbmcg
PG5hcm1zdHJvbmdAYmF5bGlicmUuY29tPgo+IENjOiBKb25hcyBLYXJsbWFuIDxqb25hc0Brd2li
b28uc2U+Cj4gQ2M6IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5ldD4KPiBD
YzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4K
PiBDYzogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPgo+IENjOiBEYXZpZCBBaXJs
aWUgPGFpcmxpZWRAbGludXguaWU+Cj4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5j
aD4KPiBDYzogSW5raSBEYWUgPGlua2kuZGFlQHNhbXN1bmcuY29tPgo+IENjOiBKb29ueW91bmcg
U2hpbSA8ankwOTIyLnNoaW1Ac2Ftc3VuZy5jb20+Cj4gQ2M6IFNldW5nLVdvbyBLaW0gPHN3MDMx
Mi5raW1Ac2Ftc3VuZy5jb20+Cj4gQ2M6IEt5dW5nbWluIFBhcmsgPGt5dW5nbWluLnBhcmtAc2Ft
c3VuZy5jb20+Cj4gQ2M6IEt1a2ppbiBLaW0gPGtnZW5lQGtlcm5lbC5vcmc+Cj4gQ2M6IEtyenlz
enRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4KPiBDYzogU3RlZmFuIEFnbmVyIDxzdGVm
YW5AYWduZXIuY2g+Cj4gQ2M6IEFsaXNvbiBXYW5nIDxhbGlzb24ud2FuZ0BueHAuY29tPgo+IENj
OiBQaGlsaXBwIFphYmVsIDxwLnphYmVsQHBlbmd1dHJvbml4LmRlPgo+IENjOiBTaGF3biBHdW8g
PHNoYXduZ3VvQGtlcm5lbC5vcmc+Cj4gQ2M6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRy
b25peC5kZT4KPiBDYzogUGVuZ3V0cm9uaXggS2VybmVsIFRlYW0gPGtlcm5lbEBwZW5ndXRyb25p
eC5kZT4KPiBDYzogRmFiaW8gRXN0ZXZhbSA8ZmVzdGV2YW1AZ21haWwuY29tPgo+IENjOiBOWFAg
TGludXggVGVhbSA8bGludXgtaW14QG54cC5jb20+Cj4gQ2M6IENLIEh1IDxjay5odUBtZWRpYXRl
ay5jb20+Cj4gQ2M6IE1hdHRoaWFzIEJydWdnZXIgPG1hdHRoaWFzLmJnZ0BnbWFpbC5jb20+Cj4g
Q2M6IE1hcmVrIFZhc3V0IDxtYXJleEBkZW54LmRlPgo+IENjOiBUb21pIFZhbGtlaW5lbiA8dG9t
aS52YWxrZWluZW5AdGkuY29tPgo+IENjOiBLaWVyYW4gQmluZ2hhbSA8a2llcmFuLmJpbmdoYW0r
cmVuZXNhc0BpZGVhc29uYm9hcmQuY29tPgo+IENjOiBTYW5keSBIdWFuZyA8aGpjQHJvY2stY2hp
cHMuY29tPgo+IENjOiAiSGVpa28gU3TDvGJuZXIiIDxoZWlrb0BzbnRlY2guZGU+Cj4gQ2M6IEJl
bmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBsaW5hcm8ub3JnPgo+IENjOiBWaW5j
ZW50IEFicmlvdSA8dmluY2VudC5hYnJpb3VAc3QuY29tPgo+IENjOiBDaGVuLVl1IFRzYWkgPHdl
bnNAY3NpZS5vcmc+Cj4gQ2M6IEpvbmF0aGFuIEh1bnRlciA8am9uYXRoYW5oQG52aWRpYS5jb20+
Cj4gQ2M6IFRvcnN0ZW4gRHV3ZSA8ZHV3ZUBsc3QuZGU+Cj4gQ2M6IFZhc2lseSBLaG9ydXpoaWNr
IDxhbmFyc291bEBnbWFpbC5jb20+Cj4gQ2M6IEljZW5vd3kgWmhlbmcgPGljZW5vd3lAYW9zYy5p
bz4KPiBDYzogU2VhbiBQYXVsIDxzZWFucGF1bEBjaHJvbWl1bS5vcmc+Cj4gQ2M6IExpbnVzIFdh
bGxlaWogPGxpbnVzLndhbGxlaWpAbGluYXJvLm9yZz4KPiBDYzogQm9yaXMgQnJlemlsbG9uIDxi
b3Jpcy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4KPiBDYzogSGFyaXByYXNhZCBLZWxhbSA8aGFy
aXByYXNhZC5rZWxhbUBnbWFpbC5jb20+Cj4gQ2M6IEFsZXhpb3MgWmF2cmFzIDxhbGV4aW9zLnph
dnJhc0BpbnRlbC5jb20+Cj4gQ2M6IEJyaWFuIE1hc25leSA8bWFzbmV5YkBvbnN0YXRpb24ub3Jn
Pgo+IENjOiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BjaHJvbWl1bS5vcmc+Cj4gQ2M6IFRob21hcyBH
bGVpeG5lciA8dGdseEBsaW51dHJvbml4LmRlPgo+IENjOiBBbGxpc29uIFJhbmRhbCA8YWxsaXNv
bkBsb2h1dG9rLm5ldD4KPiBDYzogU2hheWVubmUgTW91cmEgPHNoYXllbm5lbHV6bW91cmFAZ21h
aWwuY29tPgo+IENjOiBBYmhpbmF2IEt1bWFyIDxhYmhpbmF2a0Bjb2RlYXVyb3JhLm9yZz4KPiBD
YzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gQ2M6IGxpbnV4LXNhbXN1
bmctc29jQHZnZXIua2VybmVsLm9yZwo+IENjOiBsaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRl
YWQub3JnCj4gQ2M6IGxpbnV4LXJlbmVzYXMtc29jQHZnZXIua2VybmVsLm9yZwo+IENjOiBsaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gQ2M6IGxpbnV4LXRlZ3JhQHZnZXIua2Vy
bmVsLm9yZwoKVGhpcyBpcyBhIGdvb2QgcmVmYWN0b3JpbmcuIEl0IG1ha2VzIGl0IGVhc2llciB0
byB1bmRlcnN0YW5kCndoZXJlIHRoaW5ncyBiZWxvbmcuCgpSZXZpZXdlZC1ieTogTGludXMgV2Fs
bGVpaiA8bGludXMud2FsbGVpakBsaW5hcm8ub3JnPgoKWW91cnMsCkxpbnVzIFdhbGxlaWoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
