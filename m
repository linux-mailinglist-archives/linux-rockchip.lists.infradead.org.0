Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD3572A8C
	for <lists+linux-rockchip@lfdr.de>; Wed, 24 Jul 2019 10:51:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QEPyTavabsrvEaXUDRbTvOvYFJHBNdv7l0Yj9lFlXTw=; b=FjbvzeMT3SWaFsTypCM1tkmao
	nBL8kGPCqxPeTMEruTu4OHrZ4gSFWXbvb4mKAqB8jI9SgNKMylGQOhhnMCGKgn+MpdWkHCc/OEtBf
	hhiFBMWpG/NuETXyPLEmUI0TjSZTH0bzYNr1AjV+lj+5xS7vFdSxrAvpqvQeHh0qO37KZaS7METG6
	Ivg+ZNcHao0MmtDGa8KpeXYAMZw+1HN2cUBrLFXvAkai2IzAG1Mjd/LazrsxM8PP//5irgDnsAZQJ
	0/mHULHA5gWRh8qa9SEj2h4tvEo73BDjrzQG3Es06klq3ovSPAhNyGX84PJ8Db+v5oFcYrPJuWNo9
	yoF48l5vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqCzv-00015s-Dw; Wed, 24 Jul 2019 08:51:43 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqCzO-0000pV-7N; Wed, 24 Jul 2019 08:51:12 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 7B36728C14E
Subject: Re: [PATCH v4 14/23] drm/tilcdc: Provide ddc symlink in connector
 sysfs directory
To: Thomas Zimmermann <tzimmermann@suse.de>, Sam Ravnborg <sam@ravnborg.org>
References: <cover.1562843413.git.andrzej.p@collabora.com>
 <d1d415022c598fb7acd033f0f322dd67250adaa9.1562843413.git.andrzej.p@collabora.com>
 <20190723090532.GA787@ravnborg.org>
 <3ad60be5-49cf-4017-4b74-53a2d6272deb@collabora.com>
 <acfd895d-ab59-0190-e25c-1827bd8d214b@suse.de>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <f051455a-3559-8f8e-cc76-1a6388b102b5@collabora.com>
Date: Wed, 24 Jul 2019 10:51:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <acfd895d-ab59-0190-e25c-1827bd8d214b@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_015110_398375_B5CCCDAA 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Shawn Guo <shawnguo@kernel.org>, kernel@collabora.com,
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Sean Paul <sean@poorly.run>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Dave Airlie <airlied@redhat.com>,
 Jonas Karlman <jonas@kwiboo.se>, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Jyri Sarha <jsarha@ti.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, linux-tegra@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, Vincent Abriou <vincent.abriou@st.com>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 amd-gfx@lists.freedesktop.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Douglas Anderson <dianders@chromium.org>, Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Huang Rui <ray.huang@amd.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Alex Deucher <alexander.deucher@amd.com>, freedreno@lists.freedesktop.org,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgVGhvbWFzLAoKVyBkbml1IDI0LjA3LjIwMTkgb8KgMTA6MDEsIFRob21hcyBaaW1tZXJtYW5u
IHBpc3plOgo+IEhpCj4gCgoKPiAKPiBJIHRoaW5rIHRoaXMgZWNob2VzIG15IGNvbmNlcm4gYWJv
dXQgdGhlIGltcGxpY2l0IG9yZGVyIG9mIG9wZXJhdGlvbi4gSXQKPiBzZWVtcyB0b28gZWFzeSB0
byBnZXQgdGhpcyB3cm9uZy4gSWYgeW91IGRvbid0IHdhbnQgdG8gYWRkIGFuIGFkZGl0aW9uYWwK
PiBpbnRlcmZhY2UgZm9yIHNldHRpbmcgdGhlIGRkYyBmaWVsZCwgd2h5IG5vdCBhZGQgYSBkZWRp
Y2F0ZWQgaW5pdGlhbGl6ZXIKPiBmdW5jdGlvbiB0aGF0IHNldHMgdGhlIGRkYyBmaWVsZD8gU29t
ZXRoaW5nIGxpa2UgdGhpcy4KPiAKPiBpbnQgZHJtX2Nvbm5lY3Rvcl9pbml0X3dpdGhfZGRjKGNv
bm5lY3RvciwgZnVuY3MsIC4uLiwgZGRjKQo+IHsKPiAJcmV0ID0gZHJtX2Nvbm5lY3Rvcl9pbml0
KGNvbm5lY3RvciwgZnVuY3MsIC4uLik7Cj4gCWlmIChyZXQpCj4gCQlyZXR1cm4gcmV0Owo+IAo+
IAlpZiAoIWRkYykKPiAJCXJldHVybiAwOwo+IAo+IAljb25uZWN0b3ItPmRkYyA9IGRkYzsKPiAJ
Lyogc2V0IHVwIHN5c2ZzICovCj4gCj4gCXJldHVybiAwOwo+IH0KPiAKClRydWUuIEkgd2lsbCBz
ZW5kIGEgdjUgc29vbi4KClRoYW5rcywKCkFuZHJ6ZWoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
