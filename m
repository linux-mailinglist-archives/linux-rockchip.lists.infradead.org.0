Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 683E5120368
	for <lists+linux-rockchip@lfdr.de>; Mon, 16 Dec 2019 12:12:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B0k5xevqTG6Gb2E1Ik+3Q5NkYI5BkcgjdAr2Xt4t4VM=; b=GtqDVlC1eYuh6K
	CptcHIpUXhhJRbZ8T/VK1VdafzsWLJ9k4BhgIGbKwAjV3+yxrVYxN+By/ryvgUKL1U3Qe7gl2AqZ7
	GBA57bJwfsX+ydDfv590MaGR2g32nEfIezdYC4O8zyOx3WHcajk+7p9xgoKrRZymj1MODIo6mIj5K
	Mu2wv/yZ2lD898HalrUK8QdYH96o0NeVvCIycl73Qvejhfp36JWTf7mdonZezXVEoXH2HS7iM/TTt
	2cWNLykZ+AxD0cm4Z0jeAV/XYo4VclbKITpozlA4PgGkYjFkfm+7B09e95zX7cBaHVIRGh+7C4QZD
	JhOt75RP0g6bdLaE5Kqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igoIa-00010l-Jf; Mon, 16 Dec 2019 11:12:24 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igoIX-00010E-GZ
 for linux-rockchip@lists.infradead.org; Mon, 16 Dec 2019 11:12:22 +0000
Received: by mail-wm1-x342.google.com with SMTP id q9so6256304wmj.5
 for <linux-rockchip@lists.infradead.org>; Mon, 16 Dec 2019 03:12:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=xZD3I8JJZiaennb6LqqpxxDp1hFQeIAfrE2ggo+moyA=;
 b=eCnAcMdU/8Xsd7tXngpzHvylikavyroEfIf5ssmpsu7HrQvZvm7j5p3gP3iogyxpUU
 CWSoN0EFQOCm8ydUGAXjvaLBNL2mwSBhoBNAEHvxvhFwiOboRx+6nmziUIQRwnzG/9cf
 pzIu0hCnxzVmJFpkE8KJbEJ5l/SynyYOATVdLa030uSPX3Xz9GDEwqXA7rEmmpO89tV9
 700KZ0pX0ITJdwQ4fXCqoAZRcPMK1RRDwEpmyKJbNHUMNrnuNRz1tX+7VX+ig8J1tVOs
 TnPwEWP6ch1u5yk5HZurHDFUsWr1Dkagx/9ov49IOjtDAmRsiqkM6OrhgWKgV8tOiUYd
 Alkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=xZD3I8JJZiaennb6LqqpxxDp1hFQeIAfrE2ggo+moyA=;
 b=OLjagi5AxnhpQOxpmafSVoraaGdYo5EcN3CQDKNGyZwaoYldnBlPJiGigz2pumPwnJ
 5Or5NnUygMhY6s76JH6zVIHzKKjz/t5+Uc7ELzzS7NIfGZqhifkbcD/9Uasj0kW62gi3
 nGYZrqty04wtMvv4KgRObHFkFQrGyG8FAJvuPvRwomNta3712UVdorD3P11VIPihDAIV
 fyzr1gUniyESdndhlQyI8j//MMUgyr6viZcXuLXCOGMDqrIct6sFPnHhL56jR7jGDNfU
 iTF7cCu9l+QcXrdin9L05JHI2E2Qd87ZEZPPoWScuDcNdJ+pjLgCAGWkBtNcGmrJTg37
 Z8Qg==
X-Gm-Message-State: APjAAAXL2OEVHJc6/trhTsaWX0Nwj9ZQIE1UR4PmqvSn/LqYQexoEIuv
 Ij0GDoqCuTReuk7kCF44M5Q92g==
X-Google-Smtp-Source: APXvYqxE3TURcwU8c4mOA/IY6sniQvPajLj4vaeEei4fadshdSN5tW8h51K+7bVQg8iJ6T/rBlHhGw==
X-Received: by 2002:a05:600c:10cd:: with SMTP id
 l13mr31169017wmd.102.1576494739800; 
 Mon, 16 Dec 2019 03:12:19 -0800 (PST)
Received: from dell ([2.27.35.132])
 by smtp.gmail.com with ESMTPSA id s16sm21268284wrn.78.2019.12.16.03.12.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 03:12:19 -0800 (PST)
Date: Mon, 16 Dec 2019 11:12:19 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 0/4] mfd: RK8xx tidyup
Message-ID: <20191216111219.GB2369@dell>
References: <cover.1575932654.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1575932654.git.robin.murphy@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_031221_557348_13A3D2DA 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux.amoon@gmail.com, linux-rockchip@lists.infradead.org, smoch@web.de,
 linux-kernel@vger.kernel.org, heiko@sntech.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gVHVlLCAxMCBEZWMgMjAxOSwgUm9iaW4gTXVycGh5IHdyb3RlOgoKPiBIaSBhbGwsCj4gCj4g
SW4gdHJ5aW5nIHRvIGRlYnVnIHN1c3BlbmQgaXNzdWVzIG9uIG15IFJLMzMyOCBib3gsIEkgd2Fz
IGxvb2tpbmcgYXQKPiBob3cgdGhlIFJLOHh4IGRyaXZlciBoYW5kbGVzIHRoZSBSSzgwNSBzbGVl
cCBwaW4sIGFuZCBmcmFua2x5IHRoZSB3aG9sZQo+IGRyaXZlciBzZWVtZWQgdW50aWR5IGVub3Vn
aCB0byB3YXJyYW50IHNvbWUgY2xlYW51cCBhbmQgbWlub3IgZml4ZXMKPiBiZWZvcmUgZ29pbmcg
YW55IGZ1cnRoZXIuIEkndmUgYmFzZWQgdGhlIHNlcmllcyBvbiB0b3Agb2YgU29lcmVuJ3MKPiAi
bWZkOiByazgwODogQWx3YXlzIHVzZSBwb3dlcm9mZiB3aGVuIHJlcXVlc3RlZCIgcGF0Y2hbMV0u
Cj4gCj4gTm90ZSB0aGF0IEkndmUgb25seSBoYWQgdGltZSB0byBidWlsZC10ZXN0IHRoZXNlIHBh
dGNoZXMgc28gZmFyLCBidXQgSQo+IHdhbnRlZCB0byBzaGFyZSB0aGVtIGVhcmx5IGZvciB0aGUg
c2FrZSBvZiBkaXNjdXNzaW9uIGluIHJlc3BvbnNlIHRvCj4gdGhlIG90aGVyIHRocmVhZFsyXS4K
PiAKPiBSb2Jpbi4KPiAKPiBbMV0gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8x
MTI3OTI0OS8KPiBbMl0gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9jb3Zlci8xMTI3Njk0
NS8KPiAKPiBSb2JpbiBNdXJwaHkgKDQpOgo+ICAgbWZkOiByazgwODogU2V0IGdsb2JhbCBpbnN0
YW5jZSB1bmNvbmRpdGlvbmFsbHkKPiAgIG1mZDogcms4MDg6IEFsd2F5cyByZWdpc3RlciBzeXNj
b3JlIG9wcwo+ICAgbWZkOiByazgwODogUmVkdWNlIHNodXRkb3duIGR1cGxpY2F0aW9uCj4gICBt
ZmQ6IHJrODA4OiBDb252ZXJ0IFJLODA1IHRvIHN5c2NvcmUvUE0gb3BzCj4gCj4gIGRyaXZlcnMv
bWZkL3JrODA4LmMgICAgICAgfCAxMjIgKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KPiAgaW5jbHVkZS9saW51eC9tZmQvcms4MDguaCB8ICAgMiAtCj4gIDIgZmlsZXMgY2hh
bmdlZCwgNTAgaW5zZXJ0aW9ucygrKSwgNzQgZGVsZXRpb25zKC0pCgpOb3Qgc3VyZSB3aGF0J3Mg
aGFwcGVuaW5nIHdpdGggdGhlc2UgKGNvbXBldGluZz8pIHBhdGNoLXNldHMuICBJJ20gbm90CnBs
YW5uaW5nIG9uIGdldHRpbmcgaW52b2x2ZWQgdW50aWwgeW91IGd1eXMgaGF2ZSBhcnJpdmVkIGF0
IGFuZCBhZ3JlZWQKdXBvbiBhIHNpbmdsZSBzb2x1dGlvbi4KCi0tIApMZWUgSm9uZXMgW+adjueQ
vOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4g
c291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3
aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
