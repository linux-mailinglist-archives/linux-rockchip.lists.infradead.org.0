Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54248156DA3
	for <lists+linux-rockchip@lfdr.de>; Mon, 10 Feb 2020 03:45:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/NbnLorVFBh8ad16arzzvPDiEzfa/7MAQMVxc61QeAc=; b=Pfpa+A8rZUyR2f
	Ayta+GxB76anMrJG0CLrzPSn50V7OUWVK1c6Z0KgY0zpB56T+jqO3Tx463gDixUR035UZ37zPuE7K
	4/qNOK1ISQgCKwFsHYWiNzaTkMHtJx0f1RgJI044SfJG0u/W+VxYUwKZCYgw6MZqbab8hJ+7Qr+2B
	Poc5WGGPZOZpUTydh6ShT7l5rvGNkkZInJ4BNOksi6O8duweSI6wDesPcb7zOnBHfIv/7uwf6fhq0
	IsVT/nWn1cajqptAvx/6m1IXw6FZ646kZJj3tCyPKY3KRM20g7y9HHruLfHYyiBrhYBN867fjvPK1
	4mU3MZanNEToszlUo0NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0z53-0004Hd-KK; Mon, 10 Feb 2020 02:45:49 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0z50-0004HA-7D
 for linux-rockchip@lists.infradead.org; Mon, 10 Feb 2020 02:45:48 +0000
Received: by mail-ed1-x542.google.com with SMTP id g19so6881008eds.11
 for <linux-rockchip@lists.infradead.org>; Sun, 09 Feb 2020 18:45:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=6BOdkflw0F8fh+pcm/A4VGksRSh2LmfGqE8fze11kVU=;
 b=njnDO0Uw5pFBphWZ/lxyvTRoVa7n6/kAPMJL9leHs+YzGd4xAYvyTCkF1pX8jVsgo3
 bHc65ricH3IhK/A0wqAq61TdAaybVTqbd3XMm0JJ+OcwZh39jG0HfeWwQvckWxPkFlhW
 OmnnEbCY7oSgyU/kbvF39WlCDe4C/TRk4xTqI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=6BOdkflw0F8fh+pcm/A4VGksRSh2LmfGqE8fze11kVU=;
 b=k2DG2BYjE4BLXaXTgNK3c33IQkzAYNwwgzVR8BCvu0Jux09TYYw7INYOsl6XFPD0ZJ
 aEpIxW7Z8KxAzOgrGqAo9HWFjBGU/YpGyn6ZDz+AAE/ohJUpRWP+TYFyFh9OD8cQ7dUC
 MWtIqzvifGsZdg/yj2Tzl8/m9OPJXXO+CPnEXXN4KoAAykQWQiQsE5/LjbAsEh5OvF7o
 03SusnHjZOAjIuv8ofTdyeN9r2YJTTvSZi2n8qqL2ZdppqnGP01+rtrncoYCOsZeP4Cq
 TSOBdBj1HH3BT+BWicggmXnKa5ho114gLAqlHvLg2IYhKpgkKCZQ4kfy4HxDz1l/9ZYD
 lLJA==
X-Gm-Message-State: APjAAAWd/BAnzTDxtdGqF6cC102yMChMaW/mmwNRrKyvKd+sElS5W9sU
 n/tVbtwbQA060JeGfUkXLqiNIcjfX0XaBA==
X-Google-Smtp-Source: APXvYqxsOVCuJ6Q91yAvJaI2QE8mHRk8UrNys3fxJfWVRHcbP/SLuzT4js6gLtzot52r1iZFw3SHDA==
X-Received: by 2002:a17:906:4f93:: with SMTP id
 o19mr10023038eju.52.1581302743375; 
 Sun, 09 Feb 2020 18:45:43 -0800 (PST)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com.
 [209.85.221.42])
 by smtp.gmail.com with ESMTPSA id lu4sm1517799ejb.76.2020.02.09.18.45.42
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 09 Feb 2020 18:45:42 -0800 (PST)
Received: by mail-wr1-f42.google.com with SMTP id t2so5659852wrr.1
 for <linux-rockchip@lists.infradead.org>; Sun, 09 Feb 2020 18:45:42 -0800 (PST)
X-Received: by 2002:adf:f6c1:: with SMTP id y1mr13652670wrp.17.1581302741582; 
 Sun, 09 Feb 2020 18:45:41 -0800 (PST)
MIME-Version: 1.0
References: <20191113175603.24742-1-ezequiel@collabora.com>
 <74fea061a52ee3f8e25793bf9e47eba90a52c3e3.camel@ndufresne.ca>
In-Reply-To: <74fea061a52ee3f8e25793bf9e47eba90a52c3e3.camel@ndufresne.ca>
From: Tomasz Figa <tfiga@chromium.org>
Date: Mon, 10 Feb 2020 11:45:30 +0900
X-Gmail-Original-Message-ID: <CAAFQd5A8Y3C64NozqXjMDV0CQ5==dW9Y-6KtFigYFmO3EDd3+A@mail.gmail.com>
Message-ID: <CAAFQd5A8Y3C64NozqXjMDV0CQ5==dW9Y-6KtFigYFmO3EDd3+A@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] Enable Hantro G1 post-processor
To: Nicolas Dufresne <nicolas@ndufresne.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_184546_287205_301FFADF 
X-CRM114-Status: GOOD (  31.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>, Chris Healy <cphealy@gmail.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gTW9uLCBGZWIgMTAsIDIwMjAgYXQgNDo1MiBBTSBOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFz
QG5kdWZyZXNuZS5jYT4gd3JvdGU6Cj4KPiBMZSBtZXJjcmVkaSAxMyBub3ZlbWJyZSAyMDE5IMOg
IDE0OjU2IC0wMzAwLCBFemVxdWllbCBHYXJjaWEgYSDDqWNyaXQgOgo+ID4gSGkgYWxsLAo+ID4K
PiA+IFRoZSBIYW50cm8gRzEgVlBVIHBvc3QtcHJvY2Vzc29yIGJsb2NrIGNhbiBiZSBwaXBlbGlu
ZWQgd2l0aAo+ID4gdGhlIGRlY29kZXIgaGFyZHdhcmUsIGFsbG93aW5nIHRvIHBlcmZvcm0gb3Bl
cmF0aW9ucyBzdWNoIGFzCj4gPiBjb2xvciBjb252ZXJzaW9uLCBzY2FsaW5nLCByb3RhdGlvbiwg
Y3JvcHBpbmcsIGFtb25nIG90aGVycy4KPiA+Cj4gPiBXaGVuIHRoZSBwb3N0LXByb2Nlc3NvciBp
cyBlbmFibGVkLCB0aGUgZGVjb2RlciBoYXJkd2FyZQo+ID4gbmVlZHMgaXRzIG93biBzZXQgb2Yg
TlYxMiBidWZmZXJzICh0aGUgbmF0aXZlIGRlY29kZXIgZm9ybWF0KSwKPiA+IGFuZCB0aGUgcG9z
dC1wcm9jZXNzb3IgaXMgdGhlIG93bmVyIG9mIHRoZSBDQVBUVVJFIGJ1ZmZlcnMsCj4gPiBhbGxv
Y2F0ZWQgZm9yIHRoZSBwb3N0LXByb2Nlc3NlZCBmb3JtYXQuCj4gPgo+ID4gVGhpcyB3YXksIGFw
cGxpY2F0aW9ucyBvYnRhaW4gcG9zdC1wcm9jZXNzZWQKPiA+IChzY2FsZWQsIGNvbnZlcnRlZCwg
ZXRjKSBidWZmZXJzIHRyYW5zcGFyZW50bHkuCj4gPgo+ID4gVGhpcyBmZWF0dXJlIGlzIGltcGxl
bWVudGVkIGJ5IGV4cG9zaW5nIHRoZSBwb3N0LXByb2Nlc3NlZCBwaXhlbAo+ID4gZm9ybWF0cyBv
biBFTlVNX0ZNVCwgb3JkZXJlZCBhcyAicHJlZmVycmVkIHBpeGVsZm9ybWF0IGZpcnN0IjoKPiA+
Cj4gPiB2NGwyLWN0bCAtZCAxIC0tbGlzdC1mb3JtYXRzCj4gPiBpb2N0bDogVklESU9DX0VOVU1f
Rk1UCj4gPiAgICAgICBUeXBlOiBWaWRlbyBDYXB0dXJlIE11bHRpcGxhbmFyCj4gPgo+ID4gICAg
ICAgWzBdOiAnTlYxMicgKFkvQ2JDciA0OjI6MCkKPiA+ICAgICAgIFsxXTogJ1lVWVYnIChZVVlW
IDQ6MjoyKQo+ID4KPiA+IFRoZSBvcmRlciBvZiBwcmVmZXJlbmNlIGluIEVOVU1fRk1UIGNhbiBi
ZSB1c2VkIGFzIGEgaGludAo+ID4gYnkgYXBwbGljYXRpb25zLiBUaGlzIHNlcmllcyB1cGRhdGVz
IHRoZSB1QVBJIHNwZWNpZmljYXRpb24KPiA+IGFjY29yZGluZ2x5Lgo+Cj4gQXMgSSdtIGltcGxl
bWVudGluZyB0aGlzLCBJIHJlYWxpemUgdGhhdCB0aGVyZSBtYXkgbWUgYSBnYXAgaW4gYmVpbmcK
PiBhYmxlIHRvIGltcGxlbWVudCBib3RoIElQUCBhbmQgbm9uLUlQUCBzdXBwb3J0IGluIGEgZ2Vu
ZXJpYyBmcmFtZXdvcmsuCj4gVW5saWtlIHRoZSBhYm92ZSBjb21tZW50LCB3ZSBmb3Igbm9uLUlQ
UCBkZWNvZGVyIHdlIGNhbm5vdCBuYWl2ZWx5IHBpY2sKPiB0aGUgZmlyc3QgZm9ybWF0LiBJbiBm
YWN0IHdlIHBhcnNlIHRoZSBjaHJvbWEgYW5kIGRlcHRoIGluZm9ybWF0aW9uCj4gZnJvbSB0aGUg
aGVhZGVycyAobGlrZSBwcHMgZnJvbSBIMjY0KSwgYW5kIHdlIHBpY2sgYSBtYXRjaGluZyBwaXhl
bAo+IGZvcm1hdC4gVGhpcyB3YXksIGlmIHdlIGhhdmUgYSAxMGJpdCBzdHJlYW0sIGFuZCBvdXIg
SVAgc3VwcG9ydHMgMTBiaXQsCj4gd2Ugd2lsbCBwaWNrIGEgMTBiaXQgcGl4ZWwgZm9ybWF0cywg
b3RoZXJ3aXNlIGRlY29kaW5nIHdpbGwganVzdCBmYWlsLgo+Cj4gTm9uZSBvZiB0aGlzIGluZm9y
bWF0aW9uIGlzIHBhc3NlZCB0byB0aGUgZHJpdmVyIHByaW9yIHRvIHRoZSBmaXJzdAo+IFJlcXVl
c3QgYmVpbmcgbWFkZSwgc28gdGhlcmUgaXMgbm8gd2F5IChhcyBvZiBjdXJyZW50IHNwZWMpIHRo
YXQgdGhlCj4gZHJpdmVyIGNhbiB2YWxpZGF0ZSB0aGlzIGluIHRyeV9mbXQgYWhlYWQgb2YgdGlt
ZS4gVW5sZXNzIEkgc2V0IHBpY3R1cmUKPiBwYXJhbWV0ZXJzIHdpdGhvdXQgYSByZXF1ZXN0X2Zk
IGZvciB0aGF0IHB1cnBvc2UuIElmIHRoaXMgaXMgdGhlIHdheSwKPiB0aGVuIHdlIHNob3VsZCBk
b2N1bWVudCB0aGlzLgoKK0FsZXhhbmRyZSBDb3VyYm90CgpJdCB3YXMgc3VnZ2VzdGVkIGluIHRo
ZSB2ZXJ5IGVhcmx5IFJGQyBzdGFnZSwgYnV0IGl0IGxvb2tzIGxpa2UgaXQKZGlkbid0IG1ha2Ug
aXQgdG8gdGhlIGZpbmFsIHNwZWMuCmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcGF0Y2gv
MTA1ODMyMzMvIzIyMjA5NTU1Cgo+Cj4gSXMgdGhpcyB0aGUgaW50ZW5kZWQgd2F5IHRvIG5lZ290
aWF0aW9uIElQUCBmdW5jdGlvbnMgd2l0aCB0aGUgZHJpdmVyID8KPgoKSW4gdGhlb3J5LCBpZiB0
aGUgdXNlcnNwYWNlIGtub3dzIHdoZXRoZXIgdGhlIHN0cmVhbSBpcyA0OjI6MCBvciA0OjI6Mgph
bmQgOC1iaXQgb3IgMTAtYml0LCBpdCBjYW4gc3RpbGwgc2VsZWN0IHRoZSBmaXJzdCBmb3JtYXQg
ZnJvbSB0aGUgdG9wCnRoYXQgbWF0Y2hlcyB0aGVzZSBwcm9wZXJ0aWVzLgoKVGhhdCdzIG5vdCBo
b3cgZm9ybWF0IGhhbmRsaW5nIGluIFY0TDIgd29ya3MsIHRob3VnaC4gRU5VTV9GTVQgaXMKZXhw
ZWN0ZWQgdG8gcmV0dXJuIGEgbGlzdCBvZiB2YWxpZCBmb3JtYXRzIGFuZCBpZiB3ZSBmb3JnZXQg
YWJvdXQgdGhlCmltYWdlIHByb2Nlc3NvciBmb3IgYSBtb21lbnQsIGEgc3RhdGVsZXNzIGRlY29k
ZXIgd291bGQgYWx3YXlzIHJldHVybgphbnkgcG9zc2libGUgZm9ybWF0LCBpbmNsdWRpbmcgb25l
cyBpbnZhbGlkIGZvciB0aGUgc3RyZWFtLgoKTm93IGJhY2sgdG8gdGhlIGltYWdlIHByb2Nlc3Nv
ciwgaWYgaXQgaGFuZGxlcyBjb252ZXJzaW9ucyBmcm9tIGFueSB0bwphbnkgZm9ybWF0IGxpc3Rl
ZCBieSBFTlVNX0ZNVCwgd2Uga2luZCBvZiByZWdhaW4gdGhlIFY0TDIgY29tcGxpYW5jZSwKYnV0
IGlmIHRoZSBjb252ZXJzaW9ucyBhcmUgbGltaXRlZCwgdGhlIGFib3ZlIHJlcXVpcmVtZW50IHN0
aWxsCmRvZXNuJ3QgaG9sZCBhbmQgd2UncmUgbm90IGltcGxlbWVudGluZyBWNEwyIGNvcnJlY3Rs
eS4KClBlcmhhcHMgd2UgY2FuIHN0aWxsIGFtZW5kIHRoZSBzcGVjIGFuZCByZXF1aXJlIGNvbnRy
b2xzIHRoYXQKZGV0ZXJtaW5lIHRoZSBzdHJlYW0gcHJvcGVydGllcyB0byBiZSBzZXQgYmVmb3Jl
IHN0YXJ0aW5nIHRoZQpzdHJlYW1pbmc/IEkgY2FuIGltYWdpbmUgaXQgY291bGQgYWxzbyBoZWxw
IHRoZSBkcml2ZXIgZmlsdGVyIG91dCBzb21lCnVuc3VwcG9ydGVkIHN0cmVhbXMgZWFybHksIGJl
Zm9yZSBhbGxvY2F0aW5nIGJ1ZmZlcnMgYW5kIGF0dGVtcHRpbmcgdG8KZGVjb2RlLgoKQmVzdCBy
ZWdhcmRzLApUb21hc3oKCj4gPgo+ID4gV2hlbiB0aGUgYXBwbGljYXRpb24gc2V0cyBhIHBpeGVs
IGZvcm1hdCBvdGhlciB0aGFuIE5WMTIsCj4gPiB0aGUgcG9zdC1wcm9jZXNzb3IgaXMgdHJhbnNw
YXJlbnRseSBlbmFibGVkLgo+ID4KPiA+IFBhdGNoIDEgaXMgYSBjbGVhbnVwcyBuZWVkZWQgdG8g
ZWFzaWVyIGludGVncmF0ZSB0aGUgcG9zdC1wcm9jZXNzb3IuCj4gPiBQYXRjaCAyIGludHJvZHVj
ZXMgdGhlIHBvc3QtcHJvY2Vzc2luZyBzdXBwb3J0Lgo+ID4gUGF0Y2ggMyB1cGRhdGVzIHRoZSB1
QVBJIHNwZWNpZmljYXRpb24uCj4gPgo+ID4gVGhpcyBpcyB0ZXN0ZWQgb24gUkszMjg4IHBsYXRm
b3JtcyB3aXRoIE1QRUctMiwgVlA4IGFuZAo+ID4gSDI2NCBzdHJlYW1zLCBkZWNvZGluZyB0byBZ
VVkyIHN1cmZhY2VzLiBGb3Igbm93LCB0aGlzIHNlcmllcwo+ID4gaXMgb25seSBhZGRpbmcgc3Vw
cG9ydCBmb3IgTlYxMi10by1ZVVkyIGNvbnZlcnNpb24uCj4gPgo+ID4gQXBwbGllcyB0byBtZWRp
YS9tYXN0ZXIuCj4gPgo+ID4gRnV0dXJlIHBsYW5zCj4gPiAtLS0tLS0tLS0tLS0KPiA+Cj4gPiBJ
dCBzZWVtcyB0byBtZSB0aGF0IHdlIHNob3VsZCBzdGFydCBtb3ZpbmcgdGhpcyBkcml2ZXIgdG8g
dXNlCj4gPiByZWdtYXAtYmFzZWQgYWNjZXNzIHRvIHJlZ2lzdGVycy4gSG93ZXZlciwgc3VjaCBt
b3ZlIGlzIG91dCBvZiBzY29wZQo+ID4gYW5kIG5vdCBlbnRpcmVseSByZWxhdGVkIHRvIHRoaXMg
cG9zdC1wcm9jZXNzb3IgZW5hYmxlbWVudC4KPiA+Cj4gPiBXZSdsbCB3b3JrIG9uIHRoYXQgYXMg
Zm9sbG93LXVwIHBhdGNoZXMuCj4gPgo+ID4gQ2hhbmdlbG9nCj4gPiAtLS0tLS0tLS0KPiA+Cj4g
PiBDaGFuZ2VzIHYzOgo+ID4KPiA+ICogQWZ0ZXIgZGlzY3Vzc2luZyB3aXRoIEhhbnMgYW5kIFRv
bWFzeiBkdXJpbmcgdGhlIG1lZGlhIHN1bW1pdAo+ID4gaW4gRUxDRSwgd2UgZGVjaWRlZCB0byBn
byBiYWNrIG9uIHRoZSBNQyBjaGFuZ2VzLiBUaGUgTUMgdG9wb2xvZ3kKPiA+IGlzIG5vdyB1bnRv
dWNoZWQuIFRoaXMgbWVhbnMgdGhlIHNlcmllcyBpcyBub3cgc2ltaWxhciB0byB2MSwKPiA+IGV4
Y2VwdCB3ZSBleHBsaWNpdGx5IHVzZSB0aGUgRU5VTV9GTVQgdG8gaGludCBhYm91dCB0aGUgcG9z
dC1wcm9jZXNzZWQKPiA+IGZvcm1hdHMuCj4gPgo+ID4gQ2hhbmdlcyB2MjoKPiA+Cj4gPiAqIFRo
ZSBkZWNvZGVyLT5wb3N0LXByb2Nlc3NvciB0b3BvbG9neSBpcyBub3cgZXhwb3NlZAo+ID4gICBl
eHBsaWNpdGx5IGFuZCBhcHBsaWNhdGlvbnMgbmVlZCB0byBjb25maWd1cmUgdGhlIHBpcGVsaW5l
Lgo+ID4gICBCeSBkZWZhdWx0LCB0aGUgZGVjb2RlciBpcyBlbmFibGVkIGFuZCB0aGUgcG9zdC1w
cm9jZXNzb3IKPiA+ICAgaXMgZGlzYWJsZWQuCj4gPgo+ID4gKiBSR0IgcG9zdC1wcm9jZXNzaW5n
IG91dHB1dCBoYXMgYmVlbiBkcm9wcGVkLiBXZSBtaWdodAo+ID4gICBhZGQgdGhpcyBpbiB0aGUg
ZnV0dXJlLCBidXQgZm9yIG5vdywgaXQgc2VlbXMgaXQgd291bGQKPiA+ICAgbWFrZSB0aGUgY29k
ZSBtb3JlIGNvbXBsZXggd2l0aG91dCBhIHVzZS1jYXNlIGluIG1pbmQuCj4gPiAgIFJHQiBpcyBt
dWNoIG1vcmUgbWVtb3J5LWNvbnN1bWluZyBzbyBsZXNzIGF0dHJhY3RpdmUKPiA+ICAgdGhhbiBZ
VVYsIGFuZCBtb2Rlcm4gR1BVcyBhbmQgZGlzcGxheSBjb250cm9sbGVycyBzdXBwb3J0IFlVVi4K
PiA+Cj4gPiAqIFRoZSBwb3N0LXByb2Nlc3NvciBpbXBsZW1lbnRhdGlvbiBzdGlsbCBzdXBwb3J0
cyBSSzMyODgKPiA+ICAgb25seS4gSG93ZXZlciwgYSBnZW5lcmljIHJlZ2lzdGVyIGluZnJhc3Ry
dWN0dXJlIGlzIGludHJvZHVjZWQKPiA+ICAgdG8gbWFrZSBhZGRpdGlvbiBvZiBvdGhlciB2YXJp
YW50cyBzdWNoIGFzIFJLMzM5OSByZWFsbHkgZWFzeS4KPiA+Cj4gPiBFemVxdWllbCBHYXJjaWEg
KDMpOgo+ID4gICBtZWRpYTogaGFudHJvOiBDbGVhbnVwIGZvcm1hdCBuZWdvdGlhdGlvbiBoZWxw
ZXJzCj4gPiAgIG1lZGlhOiBoYW50cm86IFN1cHBvcnQgY29sb3IgY29udmVyc2lvbiB2aWEgcG9z
dC1wcm9jZXNzaW5nCj4gPiAgIG1lZGlhOiB2aWRpb2MtZW51bS1mbXQucnN0OiBjbGFyaWZ5IGZv
cm1hdCBwcmVmZXJlbmNlCj4gPgo+ID4gIC4uLi9tZWRpYS91YXBpL3Y0bC92aWRpb2MtZW51bS1m
bXQucnN0ICAgICAgICB8ICAgNCArLQo+ID4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8v
TWFrZWZpbGUgICAgICAgICB8ICAgMSArCj4gPiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRy
by9oYW50cm8uaCAgICAgICAgIHwgIDY0ICsrKysrKystCj4gPiAgZHJpdmVycy9zdGFnaW5nL21l
ZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMgICAgIHwgICA4ICstCj4gPiAgLi4uL3N0YWdpbmcvbWVk
aWEvaGFudHJvL2hhbnRyb19nMV9oMjY0X2RlYy5jIHwgICAyICstCj4gPiAgLi4uL21lZGlhL2hh
bnRyby9oYW50cm9fZzFfbXBlZzJfZGVjLmMgICAgICAgIHwgICAyICstCj4gPiAgZHJpdmVycy9z
dGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZzFfcmVncy5oIHwgIDUzICsrKysrKysKPiA+ICAu
Li4vc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2cxX3ZwOF9kZWMuYyAgfCAgIDIgKy0KPiA+
ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19oMjY0LmMgICAgfCAgIDYgKy0K
PiA+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19ody5oICAgICAgfCAgMTMg
KysKPiA+ICAuLi4vc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX3Bvc3Rwcm9jLmMgICAgfCAx
NDEgKysrKysrKysrKysrKysrKysrCj4gPiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9o
YW50cm9fdjRsMi5jICAgIHwgMTA1ICsrKysrKysrLS0tLS0KPiA+ICBkcml2ZXJzL3N0YWdpbmcv
bWVkaWEvaGFudHJvL3JrMzI4OF92cHVfaHcuYyAgfCAgMTAgKysKPiA+ICAxMyBmaWxlcyBjaGFu
Z2VkLCAzNjYgaW5zZXJ0aW9ucygrKSwgNDUgZGVsZXRpb25zKC0pCj4gPiAgY3JlYXRlIG1vZGUg
MTAwNjQ0IGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX3Bvc3Rwcm9jLmMKPiA+
Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
