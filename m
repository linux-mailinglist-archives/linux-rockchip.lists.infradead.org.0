Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0336016B108
	for <lists+linux-rockchip@lfdr.de>; Mon, 24 Feb 2020 21:38:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uZ0GXMvxTpEp8EpS08DbOPrImQ8+QI52GsklgcZniNo=; b=PrCpfreFWlVxdf
	L+Zd9vZikqRFm62KtjbGcL3/syTdo++QYzZ4+P7aWUtOQcMY/4SErFliJTstL93RSS8MV0VeHd/XX
	EHfVTvU4zLy1X8wtj5xvUqAphbpF9ohEqT0fOXx/C4qSqDP9ATEBgSsj9MmYOM8JX/wF7T8X7N7Ki
	j8vtbo4XuE6BC4tsfd61Sx857+u1zF/c9/OQNI4Om4ahdFi7g12wB2oj/VxVA5Kgb+4Vn/HYZlwgb
	MadX38NWzgj6d++2LqhN4ZLo/N5grqqBXn2W1Y1gVLey5hKJ3SF5qorw+XzEyPjpmPWP7AuE5OcdN
	n6Qd1WY279N5eTa86gLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6KUV-0005eE-AG; Mon, 24 Feb 2020 20:38:11 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6KUK-0005VQ-9a
 for linux-rockchip@lists.infradead.org; Mon, 24 Feb 2020 20:38:02 +0000
Received: by mail-ot1-x342.google.com with SMTP id j20so10016692otq.3
 for <linux-rockchip@lists.infradead.org>; Mon, 24 Feb 2020 12:37:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=OSGfReulS4+Bw2VYTkoxHFdUTjzGTxKnlfFvbA85ceI=;
 b=epUGqJ3b7pZ6HB36VJwV3zmmeid+UTyimQBQA5F2muCV/AwP1m6OcxxbkSKzCTSjoL
 Kal9eedlfE9CGaKq6su+iOlY2e1BCT5JMXzOPALgDa7dteuW4ceqRAuzK7s3guDUldsN
 FPHo6p5bqJkZVqLNRCBIOPOzy0LxptNFjHoDQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=OSGfReulS4+Bw2VYTkoxHFdUTjzGTxKnlfFvbA85ceI=;
 b=QhAVxY6I0ypsKjd0ONr/PnK/UK9MN88EdOhlv88312eXxl1097EtVB7xjoClfRkFK4
 u4mtVS4Pa7ETo7is/4+d45ucGF75++I4dW9+4K/xwoVAD0TDyjVOc6pwNvfoUs06E6PG
 2fpZYRKXLvAv63YTcO1MrQ5D96oj3uXvuxLfPVuT23DYSkrXwyD8a1LegRak0y5Xqvcw
 5mu9IH69c06G4kReI96ZHoeSHdJMO3zeR5iGkJk00atOAHjBqT9Zh93rR0EJ8fTYyOkO
 SjCBSe8W95DZwF2tzfs7js+/a/R+65M17pSk9R/TFBcK4HXlI4DLLRPBwKSRyVCB2ytb
 6xZw==
X-Gm-Message-State: APjAAAXerIz1ujhODU6CXwRtc1kDByRebh15cBxxQV5YBlZFp35d9zgH
 8FG8fLtnljhYgR5sIWvoUOrlB9yk2JCi3C1xXdjTag==
X-Google-Smtp-Source: APXvYqxLScAzgMhpe7t7qdM+yAKxKNMK8fWmZ/Tcb72urXjBdGyxkB/huKT3+n8VmMxY+TRaUh72qaPNcUgVmaqK4v4=
X-Received: by 2002:a05:6830:18f1:: with SMTP id
 d17mr41080515otf.303.1582576677686; 
 Mon, 24 Feb 2020 12:37:57 -0800 (PST)
MIME-Version: 1.0
References: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
 <20200221210319.2245170-38-daniel.vetter@ffwll.ch>
 <CAOau3s8hWzD6xc6grZJr+yjtXuW1g=E_8tPigOUk-cJEQ8-JfQ@mail.gmail.com>
In-Reply-To: <CAOau3s8hWzD6xc6grZJr+yjtXuW1g=E_8tPigOUk-cJEQ8-JfQ@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 24 Feb 2020 21:37:45 +0100
Message-ID: <CAKMK7uE_kkfcWciSY8V-kjRD=GYwOrJy0w8OYHXx1u+Ytx2CPA@mail.gmail.com>
Subject: Re: [PATCH 37/51] drm/rockchip: Drop explicit drm_mode_config_cleanup
 call
To: Francesco Lavra <francescolavra.fl@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_123800_397549_38466B95 
X-CRM114-Status: GOOD (  20.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Sandy Huang <hjc@rock-chips.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gTW9uLCBGZWIgMjQsIDIwMjAgYXQgODoxMyBQTSBGcmFuY2VzY28gTGF2cmEKPGZyYW5jZXNj
b2xhdnJhLmZsQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiBGcmksIEZlYiAyMSwgMjAyMCBhdCAx
MDowNCBQTSBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPiB3cm90ZToKPiA+
Cj4gPiBJdCdzIChhbG1vc3QsIHRoZXJlJ3Mgc29tZSBpb21tdSBzdHVmZiB3aXRob3V0IHNpZ25p
ZmljYW5jZSkgcmlnaHQKPiA+IGFib3ZlIHRoZSBkcm1fZGV2X3B1dCgpLgo+ID4KPiA+IFRoaXMg
aXMgbWFkZSBwb3NzaWJsZSBieSBhIHByZWNlZWRpbmcgcGF0Y2ggd2hpY2ggYWRkZWQgYSBkcm1t
Xwo+ID4gY2xlYW51cCBhY3Rpb24gdG8gZHJtX21vZGVfY29uZmlnX2luaXQoKSwgaGVuY2UgYWxs
IHdlIG5lZWQgdG8gZG8gdG8KPiA+IGVuc3VyZSB0aGF0IGRybV9tb2RlX2NvbmZpZ19jbGVhbnVw
KCkgaXMgcnVuIG9uIGZpbmFsIGRybV9kZXZpY2UKPiA+IGNsZWFudXAgaXMgY2hlY2sgdGhlIG5l
dyBlcnJvciBjb2RlIGZvciBfaW5pdCgpLgo+ID4KPiA+IEFzaWRlOiBBbm90aGVyIGRyaXZlciB3
aXRoIGEgYml0IG11Y2ggZGV2bV9remFsbG9jLCB3aGljaCBzaG91bGQKPiA+IHByb2JhYmx5IHVz
ZSBkcm1tX2t6YWxsb2MgaW5zdGVhZCAuLi4KPiA+Cj4gPiB2MjogRXhwbGFpbiB3aHkgdGhpcyBj
bGVhbnVwIGlzIHBvc3NpYmxlIChMYXVyZW50KS4KPiA+Cj4gPiBDYzogTGF1cmVudCBQaW5jaGFy
dCA8bGF1cmVudC5waW5jaGFydEBpZGVhc29uYm9hcmQuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTog
RGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Cj4gPiBDYzogU2FuZHkgSHVh
bmcgPGhqY0Byb2NrLWNoaXBzLmNvbT4KPiA+IENjOiAiSGVpa28gU3TDvGJuZXIiIDxoZWlrb0Bz
bnRlY2guZGU+Cj4gPiBDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4g
PiBDYzogbGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gLS0tCj4gPiAgZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9kcnYuYyB8IDEwICsrKy0tLS0tLS0K
PiA+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+ID4K
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Ry
di5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9kcnYuYwo+ID4gaW5k
ZXggMjBlY2IxNTA4YTIyLi5kMGViYTIxZWViYzkgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jCj4gPiBAQCAtMTM1LDcgKzEzNSw5IEBAIHN0
YXRpYyBpbnQgcm9ja2NoaXBfZHJtX2JpbmQoc3RydWN0IGRldmljZSAqZGV2KQo+ID4gICAgICAg
ICBpZiAocmV0KQo+ID4gICAgICAgICAgICAgICAgIGdvdG8gZXJyX2ZyZWU7Cj4gPgo+ID4gLSAg
ICAgICBkcm1fbW9kZV9jb25maWdfaW5pdChkcm1fZGV2KTsKPiA+ICsgICAgICAgcmV0ID0gZHJt
X21vZGVfY29uZmlnX2luaXQoZHJtX2Rldik7Cj4gPiArICAgICAgIGlmIChyZXQpCj4gPiArICAg
ICAgICAgICAgICAgZ290byBlcnJfZnJlZTsKPgo+IFNob3VsZG4ndCB0aGUgZ290byBsYWJlbCBi
ZSBlcnJfbW9kZV9jb25maWdfY2xlYW51cCBoZXJlPyBPdGhlcndpc2UKPiB0aGlzIGVycm9yIHBh
dGggbWlzc2VzIHRoZSBjYWxsIHRvIHJvY2tjaGlwX2lvbW11X2NsZWFudXAoKS4KCkluZGVlZC4g
SSdsbCBhbHNvIHJlbmFtZSB0aGUgbGFiZWwgdG8gaGF2ZSBhIG1vcmUgbWVhbmluZ2Z1bCBuYW1l
IHdoaWxlIGF0IGl0LgotRGFuaWVsCgo+Cj4gPgo+ID4gICAgICAgICByb2NrY2hpcF9kcm1fbW9k
ZV9jb25maWdfaW5pdChkcm1fZGV2KTsKPiA+Cj4gPiBAQCAtMTc0LDExICsxNzYsOCBAQCBzdGF0
aWMgaW50IHJvY2tjaGlwX2RybV9iaW5kKHN0cnVjdCBkZXZpY2UgKmRldikKPiA+ICBlcnJfdW5i
aW5kX2FsbDoKPiA+ICAgICAgICAgY29tcG9uZW50X3VuYmluZF9hbGwoZGV2LCBkcm1fZGV2KTsK
PiA+ICBlcnJfbW9kZV9jb25maWdfY2xlYW51cDoKPiA+IC0gICAgICAgZHJtX21vZGVfY29uZmln
X2NsZWFudXAoZHJtX2Rldik7Cj4gPiAgICAgICAgIHJvY2tjaGlwX2lvbW11X2NsZWFudXAoZHJt
X2Rldik7Cj4gPiAgZXJyX2ZyZWU6Cj4gPiAtICAgICAgIGRybV9kZXYtPmRldl9wcml2YXRlID0g
TlVMTDsKPiA+IC0gICAgICAgZGV2X3NldF9kcnZkYXRhKGRldiwgTlVMTCk7Cj4gPiAgICAgICAg
IGRybV9kZXZfcHV0KGRybV9kZXYpOwo+ID4gICAgICAgICByZXR1cm4gcmV0Owo+ID4gIH0KPgo+
IE9uIEZyaSwgRmViIDIxLCAyMDIwIGF0IDEwOjA0IFBNIERhbmllbCBWZXR0ZXIgPGRhbmllbC52
ZXR0ZXJAZmZ3bGwuY2g+IHdyb3RlOgo+ID4KPiA+IEl0J3MgKGFsbW9zdCwgdGhlcmUncyBzb21l
IGlvbW11IHN0dWZmIHdpdGhvdXQgc2lnbmlmaWNhbmNlKSByaWdodAo+ID4gYWJvdmUgdGhlIGRy
bV9kZXZfcHV0KCkuCj4gPgo+ID4gVGhpcyBpcyBtYWRlIHBvc3NpYmxlIGJ5IGEgcHJlY2VlZGlu
ZyBwYXRjaCB3aGljaCBhZGRlZCBhIGRybW1fCj4gPiBjbGVhbnVwIGFjdGlvbiB0byBkcm1fbW9k
ZV9jb25maWdfaW5pdCgpLCBoZW5jZSBhbGwgd2UgbmVlZCB0byBkbyB0bwo+ID4gZW5zdXJlIHRo
YXQgZHJtX21vZGVfY29uZmlnX2NsZWFudXAoKSBpcyBydW4gb24gZmluYWwgZHJtX2RldmljZQo+
ID4gY2xlYW51cCBpcyBjaGVjayB0aGUgbmV3IGVycm9yIGNvZGUgZm9yIF9pbml0KCkuCj4gPgo+
ID4gQXNpZGU6IEFub3RoZXIgZHJpdmVyIHdpdGggYSBiaXQgbXVjaCBkZXZtX2t6YWxsb2MsIHdo
aWNoIHNob3VsZAo+ID4gcHJvYmFibHkgdXNlIGRybW1fa3phbGxvYyBpbnN0ZWFkIC4uLgo+ID4K
PiA+IHYyOiBFeHBsYWluIHdoeSB0aGlzIGNsZWFudXAgaXMgcG9zc2libGUgKExhdXJlbnQpLgo+
ID4KPiA+IENjOiBMYXVyZW50IFBpbmNoYXJ0IDxsYXVyZW50LnBpbmNoYXJ0QGlkZWFzb25ib2Fy
ZC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGlu
dGVsLmNvbT4KPiA+IENjOiBTYW5keSBIdWFuZyA8aGpjQHJvY2stY2hpcHMuY29tPgo+ID4gQ2M6
ICJIZWlrbyBTdMO8Ym5lciIgPGhlaWtvQHNudGVjaC5kZT4KPiA+IENjOiBsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiA+IENjOiBsaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBf
ZHJtX2Rydi5jIHwgMTAgKysrLS0tLS0tLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlv
bnMoKyksIDcgZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
cm9ja2NoaXBfZHJtX2Rydi5jCj4gPiBpbmRleCAyMGVjYjE1MDhhMjIuLmQwZWJhMjFlZWJjOSAx
MDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2
LmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMK
PiA+IEBAIC0xMzUsNyArMTM1LDkgQEAgc3RhdGljIGludCByb2NrY2hpcF9kcm1fYmluZChzdHJ1
Y3QgZGV2aWNlICpkZXYpCj4gPiAgICAgICAgIGlmIChyZXQpCj4gPiAgICAgICAgICAgICAgICAg
Z290byBlcnJfZnJlZTsKPiA+Cj4gPiAtICAgICAgIGRybV9tb2RlX2NvbmZpZ19pbml0KGRybV9k
ZXYpOwo+ID4gKyAgICAgICByZXQgPSBkcm1fbW9kZV9jb25maWdfaW5pdChkcm1fZGV2KTsKPiA+
ICsgICAgICAgaWYgKHJldCkKPiA+ICsgICAgICAgICAgICAgICBnb3RvIGVycl9mcmVlOwo+ID4K
PiA+ICAgICAgICAgcm9ja2NoaXBfZHJtX21vZGVfY29uZmlnX2luaXQoZHJtX2Rldik7Cj4gPgo+
ID4gQEAgLTE3NCwxMSArMTc2LDggQEAgc3RhdGljIGludCByb2NrY2hpcF9kcm1fYmluZChzdHJ1
Y3QgZGV2aWNlICpkZXYpCj4gPiAgZXJyX3VuYmluZF9hbGw6Cj4gPiAgICAgICAgIGNvbXBvbmVu
dF91bmJpbmRfYWxsKGRldiwgZHJtX2Rldik7Cj4gPiAgZXJyX21vZGVfY29uZmlnX2NsZWFudXA6
Cj4gPiAtICAgICAgIGRybV9tb2RlX2NvbmZpZ19jbGVhbnVwKGRybV9kZXYpOwo+ID4gICAgICAg
ICByb2NrY2hpcF9pb21tdV9jbGVhbnVwKGRybV9kZXYpOwo+ID4gIGVycl9mcmVlOgo+ID4gLSAg
ICAgICBkcm1fZGV2LT5kZXZfcHJpdmF0ZSA9IE5VTEw7Cj4gPiAtICAgICAgIGRldl9zZXRfZHJ2
ZGF0YShkZXYsIE5VTEwpOwo+ID4gICAgICAgICBkcm1fZGV2X3B1dChkcm1fZGV2KTsKPiA+ICAg
ICAgICAgcmV0dXJuIHJldDsKPiA+ICB9Cj4gPiBAQCAtMTk0LDExICsxOTMsOCBAQCBzdGF0aWMg
dm9pZCByb2NrY2hpcF9kcm1fdW5iaW5kKHN0cnVjdCBkZXZpY2UgKmRldikKPiA+Cj4gPiAgICAg
ICAgIGRybV9hdG9taWNfaGVscGVyX3NodXRkb3duKGRybV9kZXYpOwo+ID4gICAgICAgICBjb21w
b25lbnRfdW5iaW5kX2FsbChkZXYsIGRybV9kZXYpOwo+ID4gLSAgICAgICBkcm1fbW9kZV9jb25m
aWdfY2xlYW51cChkcm1fZGV2KTsKPiA+ICAgICAgICAgcm9ja2NoaXBfaW9tbXVfY2xlYW51cChk
cm1fZGV2KTsKPiA+Cj4gPiAtICAgICAgIGRybV9kZXYtPmRldl9wcml2YXRlID0gTlVMTDsKPiA+
IC0gICAgICAgZGV2X3NldF9kcnZkYXRhKGRldiwgTlVMTCk7Cj4gPiAgICAgICAgIGRybV9kZXZf
cHV0KGRybV9kZXYpOwo+ID4gIH0KPiA+Cj4gPiAtLQo+ID4gMi4yNC4xCj4gPgo+ID4KPiA+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKPiA+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKPiA+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAKCgoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENv
cnBvcmF0aW9uCis0MSAoMCkgNzkgMzY1IDU3IDQ4IC0gaHR0cDovL2Jsb2cuZmZ3bGwuY2gKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
