Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF275BE82
	for <lists+linux-rockchip@lfdr.de>; Mon,  1 Jul 2019 16:41:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=deoNZtNaZoQ5ygtALHUZxEtSzxgaXMJDvHDKP7hyYnU=; b=QUVr9pP2bZhAJN
	s7gx+HaBDcSMQ2ZSfFcPkNYYMoAOt42ycjhO5TtKCqR1Dhj58jCFMTP3JriRxTa+83OkyU/1vWyed
	9yQD2klW+zgf6Jt1NkG7Oo4qM0qhNEpJmBxM0aIdJZhE05GB+VXUtZRuvhtCRDL4b1AcTgfwxqokf
	EPOAa+kz5dnlVH6SmwQ01i7hUzMSOF+3MKB6HzDwQ0HSC2QAQR5tWOdEqGmkgChjniPMdXPTLLEPu
	tO0YA58h+0SFeoaBUf9F8FownW9SUDFbXLDW+InJoEqOtjsqLOzCjakQOkPUBEwsV9vvNYD/HJtOn
	ty26SMSL1LyeqNv4fR5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhxUg-0004FU-2T; Mon, 01 Jul 2019 14:41:22 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhxUb-0004EA-Uw; Mon, 01 Jul 2019 14:41:19 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D2C7CAF3F;
 Mon,  1 Jul 2019 14:41:13 +0000 (UTC)
Subject: Re: [PATCH v3 01/22] drm: Include ddc adapter pointer in struct
 drm_connector
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 dri-devel@lists.freedesktop.org
References: <3fb19371-db7d-f9dc-31a7-1ccd126f6784@collabora.com>
 <cover.1561735433.git.andrzej.p@collabora.com>
 <d6381c020ea1c848a7044d830bdb0ec9663d1619.1561735433.git.andrzej.p@collabora.com>
 <9b03d145-ec50-927c-55a8-dff1cd51d655@suse.de>
 <cf1984e4-50af-302d-ef67-9ad530118c29@collabora.com>
From: Thomas Zimmermann <tzimmermann@suse.de>
Openpgp: preference=signencrypt
Autocrypt: addr=tzimmermann@suse.de; keydata=
 xsBNBFs50uABCADEHPidWt974CaxBVbrIBwqcq/WURinJ3+2WlIrKWspiP83vfZKaXhFYsdg
 XH47fDVbPPj+d6tQrw5lPQCyqjwrCPYnq3WlIBnGPJ4/jreTL6V+qfKRDlGLWFjZcsrPJGE0
 BeB5BbqP5erN1qylK9i3gPoQjXGhpBpQYwRrEyQyjuvk+Ev0K1Jc5tVDeJAuau3TGNgah4Yc
 hdHm3bkPjz9EErV85RwvImQ1dptvx6s7xzwXTgGAsaYZsL8WCwDaTuqFa1d1jjlaxg6+tZsB
 9GluwvIhSezPgnEmimZDkGnZRRSFiGP8yjqTjjWuf0bSj5rUnTGiyLyRZRNGcXmu6hjlABEB
 AAHNKFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmNvbT7CwJQEEwEIAD4W
 IQRyF/usjOnPY0ShaOVoDcEdUwt6IwUCWznTtgIbAwUJA8JnAAULCQgHAgYVCgkICwIEFgID
 AQIeAQIXgAAKCRBoDcEdUwt6I7D7CACBK42XW+7mCiK8ioXMEy1NzGbXC51RzGea8N83oEJS
 1KVUtQxrkDxgrW/WLSl/TfqHFsJpdEFOv1XubWbleun3uKPy0e5vZCd5UjZPkeNjnqfCYTDy
 hVVsdOuFbtWDppJyJrThLqr9AgSFmoCNNUt1SVpYEEOLNE6C32BhlnSq21VLC+YXTgO/ZHTa
 YXkq54hHj63jwrcjkBSCkXLh37kHeqnl++GHpN+3R+o3w2OpwHAlvVjdKPT27v1tVkiydsFG
 65Vd0n3m/ft+IOrGgxQM1C20uqKvsZGB4r3OGR50ekAybO7sjEJJ1Obl4ge/6RRqcvKz4LMb
 tGs85D6tPIeFzsBNBFs50uABCADGJj+DP1fk+UWOWrf4O61HTbC4Vr9QD2K4fUUHnzg2B6zU
 R1BPXqLGG0+lzK8kfYU/F5RjmEcClsIkAaFkg4kzKP14tvY1J5+AV3yNqcdg018HNtiyrSwI
 E0Yz/qm1Ot2NMZ0DdvVBg22IMsiudQ1tx9CH9mtyTbIXgACvl3PW2o9CxiHPE/bohFhwZwh/
 kXYYAE51lhinQ3oFEeQZA3w4OTvxSEspiQR8dg8qJJb+YOAc5IKk6sJmmM7JfFMWSr22satM
 23oQ3WvJb4RV6HTRTAIEyyZS7g2DhiytgMG60t0qdABG5KXSQW+OKlZRpuWwKWaLh3if/p/u
 69dvpanbABEBAAHCwHwEGAEIACYWIQRyF/usjOnPY0ShaOVoDcEdUwt6IwUCWznS4AIbDAUJ
 A8JnAAAKCRBoDcEdUwt6I6X3CACJ8D+TpXBCqJE5xwog08+Dp8uBpx0T9n1wE0GQisZruACW
 NofYn8PTX9k4wmegDLwt7YQDdKxQ4+eTfZeLNQqWg6OCftH5Kx7sjWnJ09tOgniVdROzWJ7c
 VJ/i0okazncsJ+nq48UYvRGE1Swh3A4QRIyphWX4OADOBmTFl9ZYNPnh23eaC9WrNvFr7yP7
 iGjMlfEW8l6Lda//EC5VpXVNza0xeae0zFNst2R9pn+bLkihwDLWxOIyifGRxTqNxoS4I1aw
 VhxPSVztPMSpIA/sOr/N/p6JrBLn+gui2K6mP7bGb8hF+szfArYqz3T1rv1VzUWAJf5Wre5U
 iNx9uqqx
Message-ID: <9e65f3c0-941d-d04c-5745-6b3a2965b990@suse.de>
Date: Mon, 1 Jul 2019 16:41:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <cf1984e4-50af-302d-ef67-9ad530118c29@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_074118_287982_ED2BB2A9 
X-CRM114-Status: GOOD (  22.33  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: "Y.C. Chen" <yc_chen@aspeedtech.com>,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <narmstrong@baylibre.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Douglas Anderson <dianders@chromium.org>, Andrzej Hajda <a.hajda@samsung.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>, kernel@collabora.com,
 Fabio Estevam <festevam@gmail.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "David \(ChunMing\) Zhou" <David1.Zhou@amd.com>,
 linux-samsung-soc@vger.kernel.org, Joonyoung Shim <jy0922.shim@samsung.com>,
 linux-rockchip@lists.infradead.org, Vincent Abriou <vincent.abriou@st.com>,
 Rob Clark <robdclark@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, CK Hu <ck.hu@mediatek.com>,
 Dave Airlie <airlied@redhat.com>, linux-tegra@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-arm-msm@vger.kernel.org,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jyri Sarha <jsarha@ti.com>, Inki Dae <inki.dae@samsung.com>,
 Mamta Shukla <mamtashukla555@gmail.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Thomas Gleixner <tglx@linutronix.de>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 amd-gfx@lists.freedesktop.org, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Eric Anholt <eric@anholt.net>, freedreno@lists.freedesktop.org,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-kernel@vger.kernel.org, Todor Tomov <todor.tomov@linaro.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Huang Rui <ray.huang@amd.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Alex Deucher <alexander.deucher@amd.com>, Shawn Guo <shawnguo@kernel.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Gerd Hoffmann <kraxel@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkKCkFtIDAxLjA3LjE5IHVtIDE1OjI3IHNjaHJpZWIgQW5kcnplaiBQaWV0cmFzaWV3aWN6Ogo+
IEhpIFRob21hcywKPiAKPiBUaGFuayB5b3UgZm9yIHlvdXIgY29tbWVudHMuIFBsZWFzZSBzZWUg
aW5saW5lLgo+IAo+IFcgZG5pdSAzMC4wNi4yMDE5IG/CoDEwOjEyLCBUaG9tYXMgWmltbWVybWFu
biBwaXN6ZToKPj4gSGkKPj4KPj4gSSBsaWtlIHRoZSBpZGVhLCBidXQgd291bGQgcHJlZmVyIGEg
bW9yZSBzdHJ1Y3R1cmVkIGFwcHJvYWNoLgo+Pgo+PiBTZXR0aW5nIGNvbm5lY3Rvci0+ZGRjIGJl
Zm9yZSBjYWxsaW5nIGRybV9zeXNmc19jb25uZWN0b3JfYWRkKCkgc2VlbXMKPj4gZXJyb3IgcHJv
bmUuIFRoZSBkZXBlbmRlbmN5IGlzIG5vdCByZWFsbHkgY2xlYXIgZnJvbSB0aGUgY29kZSBvcgo+
PiBpbnRlcmZhY2VzLgo+Pgo+PiBUaGUgb3RoZXIgdGhpbmcgaXMgdGhhdCBkcml2ZXJzIEkgbW9z
dGx5IHdvcmsgb24sIGFzdCBhbmQgbWdhZzIwMCwgaGF2ZQo+PiBjb2RlIGxpa2UgdGhpczoKPj4K
Pj4gwqDCoCBzdHJ1Y3QgYXN0X2kyY19jaGFuIHsKPj4gwqDCoMKgwqBzdHJ1Y3QgaTJjX2FkYXB0
ZXIgYWRhcHRlcjsKPj4gwqDCoMKgwqBzdHJ1Y3QgZHJtX2RldmljZSAqZGV2Owo+PiDCoMKgwqDC
oHN0cnVjdCBpMmNfYWxnb19iaXRfZGF0YSBiaXQ7Cj4+IMKgwqAgfTsKPj4KPj4gwqDCoCBzdHJ1
Y3QgYXN0X2Nvbm5lY3RvciB7Cj4+IMKgwqDCoMKgc3RydWN0IGRybV9jb25uZWN0b3IgYmFzZTsK
Pj4gwqDCoMKgwqBzdHJ1Y3QgYXN0X2kyY19jaGFuICppMmM7Cj4+IMKgwqAgfTsKPj4KPj4gSXQg
YWxyZWFkeSBlbmNvZGVzIHRoZSBjb25uZWN0aW9uIGJldHdlZW4gY29ubmVjdG9yIGFuZCBkZGMg
YWRhcHRlci4KPj4KPj4gSSBzdWdnZXN0IHRvIGludHJvZHVjZSBzdHJ1Y3QgZHJtX2kyY19hZGFw
dGVyCj4+Cj4+IMKgwqAgc3RydWN0IGRybV9pMmNfYWRhcHRlciB7Cj4+IMKgwqDCoMKgc3RydWN0
IGkyY19hZGFwdGVyIGJhc2U7Cj4+IMKgwqDCoMKgc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5l
Y3RvcjsKPj4gwqDCoCB9Owo+Pgo+PiBhbmQgY29udmVydCBkcml2ZXJzIG92ZXIgdG8gaXQuIEFz
dCB3b3VsZCBsb29rIGxpa2UgdGhpczoKPj4KPj4gwqDCoCBzdHJ1Y3QgYXN0X2kyY19jaGFuIHsK
Pj4gwqDCoMKgwqBzdHJ1Y3QgZHJtX2kyY19hZGFwdGVyIGFkYXB0ZXI7Cj4+IMKgwqDCoMKgc3Ry
dWN0IGkyY19hbGdvX2JpdF9kYXRhIGJpdDsKPj4gwqDCoCB9Owo+Pgo+IAo+IFRoZXJlIGFyZSBm
ZXcgZmxhdm9ycyBvZiB0aGVzZSBkcml2ZXJzLiBJbiBzb21lIG9mIHRoZW0KPiB0aGUgaTJjX2Fk
YXB0ZXIgZm9yIGRkYyBpcyBhbGxvY2F0ZWQgYW5kIGluaXRpYWxpemVkIGJ5Cj4gdGhlIGRyaXZl
ciwgd2hpY2ggbXVzdCBwcm92aWRlIGEgcGxhY2UgaW4gbWVtb3J5IHRvIGhvbGQKPiB0aGUgYWRh
cHRlci4gYXN0IGlzIGFuIGV4YW1wbGUgb2YgdGhpcyBhcHByb2FjaC4KPiAKPiBCdXQgdGhlcmUg
YXJlIG90aGVycywgc3VjaCBhcyBmb3IgZXhhbXBsZSBleHlub3NfaGRtaS5jLgo+IEl0IGdldHMg
aXRzIGRkYyBhZGFwdGVyIHdpdGggb2ZfZmluZF9pMmNfYWRhcHRlcl9ieV9ub2RlKCkKPiBhbmQg
bWVyZWx5IHN0b3JlcyBhIHBvaW50ZXIgdG8gaXQsIHdoaWxlIG5vdCBtYW5hZ2luZyB0aGUKPiBt
ZW1vcnkgbmVlZGVkIHRvIGhvbGQgdGhlIGkyY19hZGFwdGVyLgoKSSBzZWUuCgo+IERvIHlvdSBo
YXZlIGFueSBpZGVhIGhvdyB0byBhY2NvbW1vZGF0ZSB0aGVzZSB2YXJpb3VzCj4gZmxhdm9ycyBv
ZiBkcml2ZXJzIGluIHRoZSBzY2hlbWUgeW91IHByb3Bvc2U/CgpTb21ldGhpbmcgbGlrZQoKICBz
dHJ1Y3QgZHJtX2kyY19hZGFwdGVyIHsKCXN0cnVjdCBpMmNfYWRhcHRlciAqYWRhcHRlcjsKCXN0
cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3I7CiAgfTsKCndpdGggYWRhcHRlciBlaXRoZXIg
YmVpbmcgYWxsb2NhdGVkIGR5bmFtaWNhbGx5IG9yIGFjcXVpcmVkIHZpYQpvZl9maW5kX2kyY19h
ZGFwdGVyX2J5X25vZGUoKTsgd2l0aCBzZXBhcmF0ZSBpbml0IGFuZCBmaW5pc2ggZnVuY3Rpb25z
CmZvciBlYWNoIHZhcmlhbnQuIEJ1dCBpdCBsb29rcyBsaWtlIG92ZXItYWJzdHJhY3Rpb24gdG8g
bWUuIFdpdGhvdXQKcHJvdG90eXBpbmcgdGhlIGlkZWEsIEkgY2Fubm90IHNheSBpZiBpdCdzIHdv
cnRoIHRoZSBlZmZvcnQuCgpGb3Igc29tZXRoaW5nIG1vcmUgc2ltcGxlLCBtYXliZSBqdXN0IGhh
dmUgYSBmdW5jdGlvbiB0byBhdHRhY2ggYW4gaTJjCmFkYXB0ZXIgdG8gYSBjb25uZWN0b3I6Cgog
IGRybV9jb25uZWN0b3JfYXR0YWNoX2kyY19hZGFwdGVyKGNvbm5lY3RvciwgaTJjX2FkYXB0ZXIp
Cgp3aGljaCBzZXRzIHRoZSBjb25uZWN0b3IncyBkZGMgcG9pbnRlciBhbmQgY3JlYXRlcyB0aGUg
c3lzZnMgZW50cnkgaWYKdGhlIGNvbm5lY3RvcidzIGVudHJ5IGlzIGFscmVhZHkgcHJlc2VudC4K
CkJlc3QgcmVnYXJkcwpUaG9tYXMKCj4gQW5kcnplago+IAo+IAoKLS0gClRob21hcyBaaW1tZXJt
YW5uCkdyYXBoaWNzIERyaXZlciBEZXZlbG9wZXIKU1VTRSBMaW51eCBHbWJILCBNYXhmZWxkc3Ry
YXNzZSA1LCA5MDQwOSBOdWVybmJlcmcsIEdlcm1hbnkKR0Y6IEZlbGl4IEltZW5kw7ZyZmZlciwg
TWFyeSBIaWdnaW5zLCBTcmkgUmFzaWFoCkhSQiAyMTI4NCAoQUcgTsO8cm5iZXJnKQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
