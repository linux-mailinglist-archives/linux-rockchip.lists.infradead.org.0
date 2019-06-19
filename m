Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD36F4BCB3
	for <lists+linux-rockchip@lfdr.de>; Wed, 19 Jun 2019 17:23:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eVS+VOts7QfwN69m1l76MIMkb/icW3KKa7RZ2hdoQHY=; b=OmcqUj9dJBRljH
	nHCEa0w2/+P0Taak8OyMPOBRJJmAZILLUkcbBbT8N3HA6kqdUnPUGGZC9/Y+UYanUG8w8ErW9ZFv1
	8WsmCuoSoOvK8uIr2+U5majs16Nc8Ahj1A5bckJ6J6RmjbPYbsjjZFaBwFbGu7Nazh0HRIxNfs5xk
	+Y6gJ3hV8RoE2ce3sSuQrz0+mmN3B5GVJk7E/uNZ2CNT6wed+ArbmqQZTSinMT7yyE3T11D1U4/YZ
	5w0dkqivoHp4DWaRkjIVa/REscxdeGmh1UQ2hhDHOgFJ250rAnn/yEDEykdKoUSUeRBx3c0MPZLOO
	X8mES0+nYTuK6dSibesw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdcQU-00031K-0T; Wed, 19 Jun 2019 15:23:06 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdcQO-0002ul-As
 for linux-rockchip@lists.infradead.org; Wed, 19 Jun 2019 15:23:02 +0000
Received: by mail-wm1-x341.google.com with SMTP id c66so2277156wmf.0
 for <linux-rockchip@lists.infradead.org>; Wed, 19 Jun 2019 08:22:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=Btr9AY8nFOSZFQQa6OLvfTmDFBlPBiJQhlPwHQK99Bk=;
 b=Voz3JLvpp6hNRBtcCMY+hsLLUAxTwYSxNFffW5t0XZT/zlVyHLxlgMejP7hhVcCFlJ
 rPeaL2eDyAHs9KBNp+NtDRTB8y0J6TM6xQ+zBn/3nLEBbHQyGOttlO1fYcQ9+dEGuXoa
 vcfYBLeu+FQNxRmxhNX//Bk426aZWvjWeSae4fgi2+H9v+uBjQYLiI1Y+8qxT5IOKHZD
 VZSfHsRuzOQ93Va0JA+g1kfN9q9vKa287K6I3IJkJRfcJqBtMlq196FuZMuK8mLS4CX1
 Uxd33aM3duYuVMC4MSTe1dw1wzJWMjWMlMCksvIpNsDoN+mBnofstpfVI+hz4BHNXxl7
 fd5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=Btr9AY8nFOSZFQQa6OLvfTmDFBlPBiJQhlPwHQK99Bk=;
 b=aquKLE6O1dSEz1fWzLb7b1rjkjxxmyvOSBRKhcxGRdZ2Ywm712MKlWJlwyyjr7GlZ5
 DHMKJ2lKatAsZpHqdX3kirvwmPJae/M7MOyTSaPkAEooz35c+VCuZBsrnTsMjVZfIsUV
 qqqdg1l2mmTQ2iop1mes17YRIWswFtUel7oAWHagYehnH31Lepb+H9vIZ2mZZLtJLx5l
 khoPhgZWFuyTLMuAKt3A1SVSDDhPfulLOHl3v9OKmuzwLrkEzMTM3atZOnGrOS8Z/xF6
 AVA/IqgBsZcmoB2t+xMaNDzf+sVvee4yp9VqkD0XJiYPA8H8vvwz80y6KoNee6JCHTd4
 GqMw==
X-Gm-Message-State: APjAAAVXoWURD02vpqvIYeOTx1uGdjl6GDcDa+ee3OQzMbqB72EJmzmu
 5AoyUq3B4cXhtOc5BY5rOHMUMg==
X-Google-Smtp-Source: APXvYqx8TGPVPngaABxWz2gFmiu8TyKUlDsVMwrBAc/qnjWmednIBnI4pHR107r2KLKcpV2KR0Pxaw==
X-Received: by 2002:a7b:cb84:: with SMTP id m4mr9509470wmi.50.1560957777470;
 Wed, 19 Jun 2019 08:22:57 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id s10sm17124521wrt.49.2019.06.19.08.22.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 08:22:56 -0700 (PDT)
Subject: Re: [PATCH] drm/bridge/synopsys: dw-hdmi: Handle audio for more clock
 rates
To: =?UTF-8?Q?Jernej_=c5=a0krabec?= <jernej.skrabec@siol.net>,
 Douglas Anderson <dianders@chromium.org>
References: <20190617235558.64571-1-dianders@chromium.org>
 <6219398.I55JWXAmVF@jernej-laptop>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <9bba43cb-7070-8b2a-cfc6-f601fd22a315@baylibre.com>
Date: Wed, 19 Jun 2019 17:22:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <6219398.I55JWXAmVF@jernej-laptop>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_082300_435899_AC11F1F5 
X-CRM114-Status: GOOD (  18.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
 David Airlie <airlied@linux.ie>, jonas@kwiboo.se, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>,
 seanpaul@chromium.org, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, dgreid@chromium.org,
 Zheng Yang <zhengyang@rock-chips.com>, Sam Ravnborg <sam@ravnborg.org>,
 Thomas Gleixner <tglx@linutronix.de>, cychiang@chromium.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gMTgvMDYvMjAxOSAxOToyMywgSmVybmVqIMWga3JhYmVjIHdyb3RlOgo+IEhpIQo+IAo+IERu
ZSB0b3JlaywgMTguIGp1bmlqIDIwMTkgb2IgMDE6NTU6NTggQ0VTVCBqZSBEb3VnbGFzIEFuZGVy
c29uIG5hcGlzYWwoYSk6Cj4+IExldCdzIGFkZCBzb21lIGJldHRlciBzdXBwb3J0IGZvciBIRE1J
IGF1ZGlvIHRvIGR3X2hkbWkuCj4+IFNwZWNpZmljYWxseToKPj4KPj4gMS4gRm9yIDQ0LjEga0h6
IGF1ZGlvIHRoZSBvbGQgY29kZSBtYWRlIHRoZSBhc3N1bXB0aW9uIHRoYXQgYW4gTiBvZgo+PiA2
MjcyIHdhcyByaWdodCBtb3N0IG9mIHRoZSB0aW1lLiAgVGhhdCB3YXNuJ3QgdHJ1ZSBhbmQgdGhl
IG5ldyB0YWJsZQo+PiBzaG91bGQgZ2l2ZSBiZXR0ZXIgNDQuMSBrSHogYXVkaW8gZm9yIG1hbnkg
bW9yZSByYXRlcy4KPj4KPj4gMi4gVGhlIG5ldyB0YWJsZSBoYXMgdmFsdWVzIGZyb20gdGhlIEhE
TUkgc3BlYyBmb3IgMjk3IE1IeiBhbmQgNTk0Cj4+IE1Iei4KPj4KPj4gMy4gVGhlcmUgaXMgbm93
IGNvZGUgdG8gdHJ5IHRvIGNvbWUgdXAgd2l0aCBhIG1vcmUgaWRlYSBOL0NUUyBmb3IKPj4gY2xv
Y2sgcmF0ZXMgdGhhdCBhcmVuJ3QgaW4gdGhlIHRhYmxlLiAgVGhpcyBjb2RlIGlzIGEgYml0IHNs
b3cgYmVjYXVzZQo+PiBpdCBpdGVyYXRlcyBvdmVyIGV2ZXJ5IHBvc3NpYmxlIHZhbHVlIG9mIE4g
YW5kIHBpY2tzIHRoZSBiZXN0IG9uZSwgYnV0Cj4+IGl0IHNob3VsZCBtYWtlIGEgZ29vZCBmYWxs
YmFjay4KPj4KPj4gNC4gVGhlIG5ldyBjb2RlIGFsbG93cyBmb3IgcGxhdGZvcm1zIHRoYXQga25v
dyB0aGV5IG1ha2UgYSBjbG9jayByYXRlCj4+IHNsaWdodGx5IGRpZmZlcmVudGx5IHRvIHBpY2sg
ZGlmZmVyZW50IE4vQ1RTIHZhbHVlcy4gIEZvciBpbnN0YW5jZSBvbgo+PiByazMyODggd2UgY2Fu
IG1ha2UgMjUsMTc2LDQ3MSBIeiBpbnN0ZWFkIG9mIDI1LDE3NCw4MjUuMTc0OC4uLiBIego+PiAo
MjUuMiBNSHogLyAxLjAwMSkuICBBIGZ1dHVyZSBwYXRjaCB0byB0aGUgcmszMjg4IHBsYXRmb3Jt
IGNvZGUgY291bGQKPj4gZW5hYmxlIHN1cHBvcnQgZm9yIHRoaXMgY2xvY2sgcmF0ZSBhbmQgc3Bl
Y2lmeSB0aGUgTi9DVFMgdGhhdCB3b3VsZCBiZQo+PiBpZGVhbC4KPj4KPj4gTk9URTogdGhlIG9k
ZGVzdCBwYXJ0IG9mIHRoaXMgcGF0Y2ggY29tZXMgYWJvdXQgYmVjYXVzZSBjb21wdXRpbmcgdGhl
Cj4+IGlkZWFsIE4vQ1RTIG1lYW5zIGtub3dpbmcgdGhlIF9leGFjdF8gY2xvY2sgcmF0ZSwgbm90
IGEgcm91bmRlZAo+PiB2ZXJzaW9uIG9mIGl0LiAgVGhlIGRybSBmcmFtZXdvcmsgbWFrZXMgdGhp
cyBoYXJkZXIgYnkgcm91bmRpbmcgcmF0ZXMKPj4gdG8ga0h6LCBidXQgZXZlbiBpZiBpdCBkaWRu
J3QgdGhlcmUgbWlnaHQgYmUgY2FzZXMgd2hlcmUgdGhlIGlkZWFsCj4+IHJhdGUgY291bGQgb25s
eSBiZSBjYWxjdWxhdGVkIGlmIHdlIGtuZXcgdGhlIHJlYWwgKG5vbi1pbnRlZ3JhbCkgcmF0ZS4K
Pj4gVGhpcyBtZWFucyB0aGF0IGluIGNhc2VzIHdoZXJlIHdlIGtub3cgKG9yIGJlbGlldmUpIHRo
YXQgdGhlIHRydWUgcmF0ZQo+PiBpcyBzb21ldGhpbmcgb3RoZXIgdGhhbiB0aGUgcmF0ZSB3ZSBh
cmUgdG9sZCBieSBkcm0uCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IERvdWdsYXMgQW5kZXJzb24gPGRp
YW5kZXJzQGNocm9taXVtLm9yZz4KPiAKPiBXaGljaCBidXMgaXMgdXNlZCBmb3IgYXVkaW8gdHJh
bnNmZXIgb24geW91ciBkZXZpY2U/IElmIGl0IGlzIEkyUywgd2hpY2ggaXMgCj4gY29tbW9ubHkg
dXNlZCwgdGhlbiBwbGVhc2UgYmUgYXdhcmUgb2YgdGhpcyBwYXRjaDoKPiBodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9hcmNoaXZlcy9kcmktZGV2ZWwvMjAxOS1KdW5lLzIyMTUzOS5odG1s
Cj4gCj4gSXQgYXZvaWRzIGV4YWN0IE4vQ1RTIGNhbGN1bGF0aW9uIGJ5IGVuYWJsaW5nIGF1dG8g
ZGV0ZWN0aW9uLiBJdCBpcyB3ZWxsIAo+IHRlc3RlZCBvbiBtdWx0aXBsZSBTb0NzIGZyb20gQWxs
d2lubmVyLCBBbWxvZ2ljIGFuZCBSb2NrY2hpcC4KPiAKPiBCZXN0IHJlZ2FyZHMsCj4gSmVybmVq
Cj4gCj4gCkhpIERvdWdsYXMsCgpUaGFua3MgZm9yIHlvdXIgd29yayAhCgpJZiB5b3UgY291bGQg
cmViYXNlIG9uIHRvcCBvZiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9hcmNoaXZlcy9k
cmktZGV2ZWwvMjAxOS1KdW5lLzIyMTUzOS5odG1sCnNvIHdlIGNhbiBtYWtlIHVzZSBvZiB5b3Vy
IGV4dGVuZGVkIE4gdGFibGUgd2l0aCBhdXRvbWF0aWMgQ1RTIEhXIGNhbGN1bGF0aW9uLCBpdCB3
b3VsZCBiZSBncmVhdCAhCgpGaW5hbGx5IGNvdWxkIHlvdSBhZGQgdGhlIHBsYXRfZGF0YSB0bWRz
IHRhYmxlIGFzIGEgc2VwYXJhdGUgcGF0Y2ggdG8gc2ltcGxpZnkgcmV2aWV3ID8KClRoYW5rcywK
TmVpbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
