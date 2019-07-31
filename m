Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C40A47C2F7
	for <lists+linux-rockchip@lfdr.de>; Wed, 31 Jul 2019 15:10:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dyQyOW8DoQvOm188ayMglNWAictz47jVYXQjZ2tlp3Q=; b=tv5RebfB2dFmHA1ebEJeNie6a
	f+qu3m7aWX5JAwPZDnjWWVksNCVKXv//Vb5W2MXfyT3NPgHcJn9JWSLWtxQFP/gYi2171tD4wgH2n
	sYNm1Kenm2kG+czbbh8QV9xIY9OUNo41W1Y8FPMiYPtgrP23coflYL+Wo+ciYFUQDLqM55U6adObD
	x5UV/Pi32UnKSX9mG6fEq+U7vo8/Aab/1Y/sjiUJm5Bnm8AYtTopOP8+4WjjWwMOoBTpzYwUAm4ZT
	krAynNedEn23JNKZuzw1v3rGhNhTmQOo8VgTxEfZPOa9vERpn3/SSyEwlr+I0tduBJZd1A6SQOT1k
	PdHcUbsNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsoNN-0006RP-BS; Wed, 31 Jul 2019 13:10:41 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsoNC-0006G5-4I; Wed, 31 Jul 2019 13:10:31 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 05184289377
Subject: Re: Review required [Was: Associate ddc adapters with connectors]
To: Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <narmstrong@baylibre.com>
References: <cover.1564161140.git.andrzej.p@collabora.com>
 <20190726183520.GA22572@ravnborg.org> <20190726185538.GD14981@ravnborg.org>
 <6560f93c-a48f-2a8c-afeb-d5e8e200480d@baylibre.com>
 <20190731104007.GA23138@ravnborg.org>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <959cf323-c6b9-895b-592c-81c52aacae6e@collabora.com>
Date: Wed, 31 Jul 2019 15:10:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190731104007.GA23138@ravnborg.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_061030_302143_99236DBC 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: David Airlie <airlied@linux.ie>, Liviu Dudau <liviu.dudau@arm.com>,
 dri-devel@lists.freedesktop.org, Douglas Anderson <dianders@chromium.org>,
 linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, kernel@collabora.com,
 linux-samsung-soc@vger.kernel.org, Vincent Abriou <vincent.abriou@st.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Dave Airlie <airlied@redhat.com>, freedreno@lists.freedesktop.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Jyri Sarha <jsarha@ti.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Maxime Ripard <mripard@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 amd-gfx@lists.freedesktop.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, linux-kernel@vger.kernel.org,
 Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Huang Rui <ray.huang@amd.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>, Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

VyBkbml1IDMxLjA3LjIwMTkgb8KgMTI6NDAsIFNhbSBSYXZuYm9yZyBwaXN6ZToKPiBIaSBOZWls
Lgo+IAo+IE9uIFdlZCwgSnVsIDMxLCAyMDE5IGF0IDEwOjAwOjE0QU0gKzAyMDAsIE5laWwgQXJt
c3Ryb25nIHdyb3RlOgo+PiBIaSBTYW0sCj4+Cj4+IE9uIDI2LzA3LzIwMTkgMjA6NTUsIFNhbSBS
YXZuYm9yZyB3cm90ZToKPj4+IEhpIGFsbC4KPj4+Cj4+PiBBbmRyemVqIGhhdmUgZG9uZSBhIGdv
b2Qgam9iIGZvbGxvd2luZyB1cCBvbiBmZWVkYmFjayBhbmQgdGhpcyBzZXJpZXMgaXMKPj4+IG5v
dyByZWFkeS4KPj4+Cj4+PiBXZSBuZWVkIGFjayBvbiB0aGUgcGF0Y2hlcyB0b3VjaGluZyB0aGUg
aW5kaXZpZHVhbCBkcml2ZXJzIGJlZm9yZSB3ZSBjYW4KPj4+IHByb2NlZWQuCj4+PiBQbGVhc2Ug
Y2hlY2sgeW91ciBkcml2ZXJzIGFuZCBnZXQgYmFjay4KPj4KPj4gSSBjYW4gYXBwbHkgYWxsIGNv
cmUgYW5kIG1haW50YWluZXItYWNrZWQgcGF0Y2hlcyBmb3Igbm93IDoKPj4gMSwgMiwgNywgMTAs
IDExLCAxNiwgMTcsIDE4LCAxOSwgMjAsIDIxLCAyMiwgMjMKPj4KPj4gYW5kIEFuZHJ6ZWogY2Fu
IHJlc2VuZCBub3QgYXBwbGllZCBwYXRjaGVzIHdpdGggWW91cnMgYW5kIEVtaWwncyBSZXZpZXdl
ZC1ieSwKPj4gc28gd2UgY2FuIHdhaXQgYSBmZXcgbW9yZSBkYXlzIHRvIGFwcGx5IHRoZW0uCj4g
Cj4gU291bmRzIGxpa2UgYSBnb29kIHBsYW4uCj4gVGhhbmtzIGZvciB0aGFraW5nIGNhcmUgb2Yg
dGhpcy4KCldoZW4gaXMgaXQgZ29vZCB0aW1lIHRvIHJlc2VuZCBwYXRjaGVzIDMsIDQsIDUsIDYs
IDgsIDksIDEyLCAxMywgMTQsIDE1LCAyNCBhcyBhCm5ldyBzZXJpZXM/CgpBbmRyemVqCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
