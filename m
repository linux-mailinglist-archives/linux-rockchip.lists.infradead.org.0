Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8330D7504A
	for <lists+linux-rockchip@lfdr.de>; Thu, 25 Jul 2019 15:54:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xH5WsZfu9nIL93STzP2CWuFQGQsKCKz/2GSWgTgZHvs=; b=szKy8caz27JxPl
	7w6TLRnK2fcd1MrbMWJY4u7NvUx+lPeKvJZO/abf4JxYdQwc31LiY8LYqarcBUEPBKnxB6Wf8MUGP
	gGkc456AcgPu8kB0j4Vhb6a9lYeqja4fZ9gwdyb9/fP5TKJ7ZT3nYIaVbK+o9r4ydZLIKHx7XOfbm
	icTlUBtEsypCltFIJHlflVK7cPCCzfj9MOcb2E1+25UueQyO+z9LUZt1QjrMiGEU3C53ZJKikzVDz
	a8P0+w/81/fOlWaENAZ86nOyc3sCuDmt6k04HCJenBwj7XKVI9QECURg6xidjgjDYGj3OHED2o+GM
	d7C4xf161ZWHJwWK2Q0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqeCa-0000xo-5L; Thu, 25 Jul 2019 13:54:36 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqeCV-0000w7-Tl
 for linux-rockchip@lists.infradead.org; Thu, 25 Jul 2019 13:54:34 +0000
Received: by mail-wr1-x442.google.com with SMTP id z1so50874431wru.13
 for <linux-rockchip@lists.infradead.org>; Thu, 25 Jul 2019 06:54:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=kiGD59LaW0LszoAZzmVLJ1Hft59fIaEtybxXjg0U4OU=;
 b=sQQDJiby1lR9rJnYwpFayBJL1RCmEUHrXJL5ktfkxstXcB1e72/IJ+7W0b7G/ZBDE7
 l2/Oe7WGAKBlaplOUnR9eKLvijJm+yqgNtv1e2Xt94tpqVPUHg4DEcD9UGsRs0szMquI
 gd0SnX7mYKDLhjJOaB+OD74kiTzZcmfgGeIajBjxHk8HORwabuVH5qYZ14shV48okQcq
 oV1q3+hmkLuRmabQQ4N1s3WbE9w1LtffyarQQhGJ98ItiO4babxYtOZPj/d8HElgIXh3
 +7ifv5dKadFG/B1N65t8KG2r29CwpiyOZg/YA0MfSDcC9TY3HZioK4MipWty6YP9bw5P
 6xWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=kiGD59LaW0LszoAZzmVLJ1Hft59fIaEtybxXjg0U4OU=;
 b=qRW4pBU0LfH5x0U2jxdr7ihVFYvoRXITzPzUPgd3PjrW7/nXLlmSX7EcN5UleLtgMt
 TsiF+j3+3jWvHbXfyTnK6uirbjHHvVh7leI3x/NQPZPJkzuT4Pcf4WAzHLU9ayV585rT
 AJoEH9T8kH1dd0qJf+JsfALEp2XEnfeATW5b2Ym8wFh/owykg1y6kiEJkhKoIuB9xxdY
 DDE6GP6vUgymziC/5Qu/6HsV5ReOQgckrPYwnIS38vcaYpK9MWJN+RgV8NeLm83h/r0q
 TogetfQykUBvcZthqTpBfOL8Fq9yihGPuGCpKlsfFwqYblsD5Q+dDRqmoZ0cSUzTgBHD
 0JMg==
X-Gm-Message-State: APjAAAVlb86XPzfAgxNtRPEmO9NjiM2l8bt6GhmSVkqn3tF+P8/BMG3O
 n8IK3OU5T5Ac3Upcbr/OVRba1w==
X-Google-Smtp-Source: APXvYqyi+7SaHwgU0aK/nQJij+0evagD7L54rP/lc55M34rnwnlBR+KX1Ln1iOdMtsPd3Xr0XJt2kw==
X-Received: by 2002:adf:f3d1:: with SMTP id g17mr64650717wrp.38.1564062869954; 
 Thu, 25 Jul 2019 06:54:29 -0700 (PDT)
Received: from dell ([2.27.35.164])
 by smtp.gmail.com with ESMTPSA id c9sm40786310wml.41.2019.07.25.06.54.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 25 Jul 2019 06:54:29 -0700 (PDT)
Date: Thu, 25 Jul 2019 14:54:02 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v3 2/7] drivers: Introduce device lookup variants by
 of_node
Message-ID: <20190725135402.GL23883@dell>
References: <20190723221838.12024-1-suzuki.poulose@arm.com>
 <20190723221838.12024-3-suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190723221838.12024-3-suzuki.poulose@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_065432_021561_F5BBA060 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: axentia.se]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: axentia.se]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Thor Thayer <thor.thayer@linux.intel.com>,
 Heiko Stuebner <heiko@sntech.de>, rafael@kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-fpga@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 linux-i2c@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-rockchip@lists.infradead.org,
 Wolfram Sang <wsa@the-dreams.de>, David Airlie <airlied@linux.ie>,
 Jiri Slaby <jslaby@suse.com>, devicetree@vger.kernel.org,
 Alan Tull <atull@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Rob Herring <robh+dt@kernel.org>, Moritz Fischer <mdf@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>, gregkh@linuxfoundation.org,
 Takashi Iwai <tiwai@suse.com>, linux-spi@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Peter Rosin <peda@axentia.se>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gVHVlLCAyMyBKdWwgMjAxOSwgU3V6dWtpIEsgUG91bG9zZSB3cm90ZToKCj4gSW50cm9kdWNl
IHdyYXBwZXJzIGZvciB7YnVzL2RyaXZlci9jbGFzc31fZmluZF9kZXZpY2UoKSB0bwo+IGxvY2F0
ZSBkZXZpY2VzIGJ5IGl0cyBvZl9ub2RlLgo+IAo+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFh
cnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+IENjOiBNYXhpbWUgUmlwYXJkIDxtYXhp
bWUucmlwYXJkQGJvb3RsaW4uY29tPgo+IENjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCj4gQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT4KPiBDYzogRGFuaWVsIFZl
dHRlciA8ZGFuaWVsQGZmd2xsLmNoPgo+IENjOiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZwo+
IENjOiBGbG9yaWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNvbT4KPiBDYzogRnJhbmsg
Um93YW5kIDxmcm93YW5kLmxpc3RAZ21haWwuY29tPgo+IENjOiBIZWlrbyBTdHVlYm5lciA8aGVp
a29Ac250ZWNoLmRlPgo+IENjOiBMaWFtIEdpcmR3b29kIDxsZ2lyZHdvb2RAZ21haWwuY29tPgo+
IENjOiBsaW51eC1pMmNAdmdlci5rZXJuZWwub3JnCj4gQ2M6IGxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKPiBDYzogbGludXgtc3BpQHZnZXIua2VybmVsLm9yZwo+IENjOiBNYXRo
aWV1IFBvaXJpZXIgPG1hdGhpZXUucG9pcmllckBsaW5hcm8ub3JnPgo+IENjOiBSb2IgSGVycmlu
ZyA8cm9iaCtkdEBrZXJuZWwub3JnPgo+IENjOiBTcmluaXZhcyBLYW5kYWdhdGxhIDxzcmluaXZh
cy5rYW5kYWdhdGxhQGxpbmFyby5vcmc+Cj4gQ2M6IFRha2FzaGkgSXdhaSA8dGl3YWlAc3VzZS5j
b20+Cj4gQ2M6IFdvbGZyYW0gU2FuZyA8d3NhQHRoZS1kcmVhbXMuZGU+Cj4gQ2M6IEFsYW4gVHVs
bCA8YXR1bGxAa2VybmVsLm9yZz4KPiBDYzogTW9yaXR6IEZpc2NoZXIgPG1kZkBrZXJuZWwub3Jn
Pgo+IENjOiBsaW51eC1mcGdhQHZnZXIua2VybmVsLm9yZwo+IENjOiBQZXRlciBSb3NpbiA8cGVk
YUBheGVudGlhLnNlPgo+IENjOiBNYXJrIEJyb3duIDxicm9vbmllQGtlcm5lbC5vcmc+Cj4gQ2M6
IEZsb3JpYW4gRmFpbmVsbGkgPGYuZmFpbmVsbGlAZ21haWwuY29tPgo+IENjOiBIZWluZXIgS2Fs
bHdlaXQgPGhrYWxsd2VpdDFAZ21haWwuY29tPgo+IENjOiAiRGF2aWQgUy4gTWlsbGVyIiA8ZGF2
ZW1AZGF2ZW1sb2Z0Lm5ldD4KPiBDYzogQW5kcmV3IEx1bm4gPGFuZHJld0BsdW5uLmNoPgo+IENj
OiBMaWFtIEdpcmR3b29kIDxsZ2lyZHdvb2RAZ21haWwuY29tPgo+IENjOiBHcmVnIEtyb2FoLUhh
cnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPgo+IENjOiAiUmFmYWVsIEouIFd5c29j
a2kiIDxyYWZhZWxAa2VybmVsLm9yZz4KPiBDYzogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJv
Lm9yZz4KPiBDYzogVGhvciBUaGF5ZXIgPHRob3IudGhheWVyQGxpbnV4LmludGVsLmNvbT4KPiBD
YzogSmlyaSBTbGFieSA8anNsYWJ5QHN1c2UuY29tPgo+IENjOiBNYXJrIEJyb3duIDxicm9vbmll
QGtlcm5lbC5vcmc+Cj4gQ2M6IEFuZHJldyBMdW5uIDxhbmRyZXdAbHVubi5jaD4KPiBDYzogUGV0
ZXIgUm9zaW4gPHBlZGFAYXhlbnRpYS5zZT4KPiBTaWduZWQtb2ZmLWJ5OiBTdXp1a2kgSyBQb3Vs
b3NlIDxzdXp1a2kucG91bG9zZUBhcm0uY29tPgo+IC0tLQo+ICAtIERyb3BwZWQgdGhlIHJldmll
d2VkLWJ5IHRhZ3MgZnJvbSBUaG9yLCBNYXJrLCBBbmRyZXcgYW5kIFBldGVyIGFzIHRoZQo+ICAg
IHBhdGNoZXMgYXJlIG1lcmVnZWQsIHRob3VnaCB0aGVyZSBhcmUgbm8gZnVuY3Rpb25hbCBjaGFu
Z2VzLgo+IC0tLQo+ICBkcml2ZXJzL2FtYmEvdGVncmEtYWhiLmMgICAgICAgICAgICAgIHwgMTEg
Ky0tLS0tLS0KPiAgZHJpdmVycy9mcGdhL2ZwZ2EtYnJpZGdlLmMgICAgICAgICAgICB8ICA4ICst
LS0tLQo+ICBkcml2ZXJzL2ZwZ2EvZnBnYS1tZ3IuYyAgICAgICAgICAgICAgIHwgIDggKy0tLS0t
Cj4gIGRyaXZlcnMvZ3B1L2RybS9kcm1fbWlwaV9kc2kuYyAgICAgICAgfCAgNyArLS0tLQo+ICBk
cml2ZXJzL2kyYy9pMmMtY29yZS1vZi5jICAgICAgICAgICAgIHwgIDcgKy0tLS0KPiAgZHJpdmVy
cy9tZmQvYWx0ZXJhLXN5c21nci5jICAgICAgICAgICB8IDE0ICsrLS0tLS0tLS0KCkZvciBteSBv
d24gcmVmZXJlbmNlOgogIEFja2VkLWZvci1NRkQtYnk6IExlZSBKb25lcyA8bGVlLmpvbmVzQGxp
bmFyby5vcmc+CgpXaGF0J3MgdGhlIG1lcmdlIHBsYW4gZm9yIHRoaXMgcGF0Y2g/CgpJcyBhbnlv
bmUgcHJlcGFyZWQgdG8gY3JlYXRlIGFuIGltbXV0YWJsZSBicmFuY2ggZm9yIHVzIHRvIHB1bGwg
ZnJvbT8KSSdtIGhhcHB5IHRvIGRvIGl0IGlmIG5vIG9uZSBlbHNlIHN0ZXBzIHVwLgoKPiAgZHJp
dmVycy9tdXgvY29yZS5jICAgICAgICAgICAgICAgICAgICB8ICA3ICstLS0tCj4gIGRyaXZlcnMv
bmV0L3BoeS9tZGlvX2J1cy5jICAgICAgICAgICAgfCAgOSArLS0tLS0tCj4gIGRyaXZlcnMvbnZt
ZW0vY29yZS5jICAgICAgICAgICAgICAgICAgfCAgNyArLS0tLQo+ICBkcml2ZXJzL29mL29mX21k
aW8uYyAgICAgICAgICAgICAgICAgIHwgIDggKy0tLS0tCj4gIGRyaXZlcnMvb2YvcGxhdGZvcm0u
YyAgICAgICAgICAgICAgICAgfCAgNyArLS0tLQo+ICBkcml2ZXJzL3JlZ3VsYXRvci9vZl9yZWd1
bGF0b3IuYyAgICAgIHwgIDcgKy0tLS0KPiAgZHJpdmVycy9zcGkvc3BpLmMgICAgICAgICAgICAg
ICAgICAgICB8IDIwICsrKy0tLS0tLS0tLS0tLQo+ICBpbmNsdWRlL2xpbnV4L2RldmljZS5oICAg
ICAgICAgICAgICAgIHwgMzcgKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIHNvdW5kL3Nv
Yy9yb2NrY2hpcC9yazMzOTlfZ3J1X3NvdW5kLmMgfCAgOSArKy0tLS0tCj4gIDE1IGZpbGVzIGNo
YW5nZWQsIDU2IGluc2VydGlvbnMoKyksIDExMCBkZWxldGlvbnMoLSkKCi0tIApMZWUgSm9uZXMg
W+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSC
IE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9v
ayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
