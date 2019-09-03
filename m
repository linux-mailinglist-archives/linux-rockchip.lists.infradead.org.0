Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 588BBA7681
	for <lists+linux-rockchip@lfdr.de>; Tue,  3 Sep 2019 23:49:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wz/ebXDhIDSHtmaKUar/Z8N76YIUHDGgraLGbdEuxik=; b=uUOv7BYoarCjWq
	alTkD154ong1RxVjQbTBo9nG2p8Z3Op1JKhkbjYU3plsYkmf4D+QDzVwb4yL6aPyOLSShLJ69bEaM
	+EzYtwXdDb5dCaI1gP7A4JSRuRd8aUXVmE7gMDZC/JKvS9E5ps80uvIRr5GdUcQlfufCEBNTg72ua
	1LvF6KUHgzHit/XcJx4/AJ+3r79681+gY/tAtd++fbQk33b0fzwP+aPzZd+MZDs0JwtntgqqrFCQg
	z0usSYtzbq2ZiUav0f9Fk5LBMBAttIGdUnNzBVJdci21bThSujSdiGMpTx5Qs7ZFDhJIVyqxQT+7r
	nTjqf/2+cMed/JlWrOLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Gfo-0007aM-Oi; Tue, 03 Sep 2019 21:49:12 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Gfk-0007a1-P1
 for linux-rockchip@lists.infradead.org; Tue, 03 Sep 2019 21:49:10 +0000
Received: by mail-io1-xd43.google.com with SMTP id m11so7548956ioo.0
 for <linux-rockchip@lists.infradead.org>; Tue, 03 Sep 2019 14:49:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=pIo91Q36vun7aLtO9TkeIx08TIvyM7Sp/XL5FdL62Pw=;
 b=LwqvELJ1i2Q3DCg4D7DyATWzDxEvCOsUnieSldxwCDTtVgnP05O2ry04ib4XaqPbIu
 //KAgUTf3Q1zTWt50JrcYDrP5RnQRdhw/Si3UwwWjsaM/dFV3IwiyfMmHfzAhoP6Ipoo
 7QlVz4ne985Z+Jee/G692hohhiEcXBm7sr1AQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=pIo91Q36vun7aLtO9TkeIx08TIvyM7Sp/XL5FdL62Pw=;
 b=pssZGDgBiYKbLy7ZLtdTHYAb3SQV87O3fZuT+NhAtzB/p4fF8GmRn1XPmsRKhtiM5v
 r/IFc7OkOJvLa9a9tg2dNtghizCjX9gIn4PwCpNEqg5S3g2/s3QYv35C/ujnzsvh8KkV
 qNHknDvKM+/uu14WKHdMyWrc1ERVrT+3Nu3Eo57PzJWYAPtI9UpO+njVfw2oNKtPdn+J
 NqIjTE9AG8iFW7EdqD1CjMyCqX08nbjuDJSk+Zcr3N1KhpwNasI2R2drfbLYnNnbEwmG
 p2t8QQ2mbEz7FYY0hw7wTr/C/Shnuysvx7rhEJQmmxoM4dJL+c+VIaEL2APTG6XkMwBF
 ii0A==
X-Gm-Message-State: APjAAAVNY90e2kpx0vJlfZzgvM8b/tyokWFsu2Zzl69aOxYGvfyjx/QU
 vAZF7wi14wkckzcaEvHW3UKRToaKSeY=
X-Google-Smtp-Source: APXvYqyr+bElhr4tUEjRwisyq5AzQnbSrnHfj2zKp2MnUWWueSixP+dFR21gWCNbz5o3Gz31qyZYpw==
X-Received: by 2002:a5d:8f82:: with SMTP id l2mr16122754iol.119.1567547347607; 
 Tue, 03 Sep 2019 14:49:07 -0700 (PDT)
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com.
 [209.85.166.42])
 by smtp.gmail.com with ESMTPSA id u10sm5494075ior.81.2019.09.03.14.49.06
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 03 Sep 2019 14:49:07 -0700 (PDT)
Received: by mail-io1-f42.google.com with SMTP id b136so15404934iof.3
 for <linux-rockchip@lists.infradead.org>; Tue, 03 Sep 2019 14:49:06 -0700 (PDT)
X-Received: by 2002:a5e:8d14:: with SMTP id m20mr6935463ioj.52.1567547345570; 
 Tue, 03 Sep 2019 14:49:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190824153707.13746-1-uwe@kleine-koenig.org>
 <20190824153707.13746-6-uwe@kleine-koenig.org>
 <CAD=FV=X8kVU_zr69aKe-+GkAQh-tDwVf8tFogKve3s5O5ndF-g@mail.gmail.com>
 <20190902142709.wxrjsfzorozgeiuh@pengutronix.de>
 <CAD=FV=XFTuixKL-VBv-QObiO=Jg43i6W0enprLgXQ0U8=9C49A@mail.gmail.com>
 <20190903184800.2fmmvwyzbwbsaf6y@pengutronix.de>
 <CAD=FV=XOyayzv6N9Ky8m2ffXe4UzUijzrL8JCMZC3K+MEzaRFw@mail.gmail.com>
 <20190903201550.gxcyed5svtq33ev2@pengutronix.de>
 <CAD=FV=WjRiaNLJQJ25OeNSpY455H-ev8g3iZN24UXQtk3uXhtA@mail.gmail.com>
 <20190903210740.qgyvxxmsdg5dzaby@pengutronix.de>
In-Reply-To: <20190903210740.qgyvxxmsdg5dzaby@pengutronix.de>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 3 Sep 2019 14:48:54 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VDj8pCmkBd70buQNVmiv56OUEVWfRJALYgtZcESvPXdw@mail.gmail.com>
Message-ID: <CAD=FV=VDj8pCmkBd70buQNVmiv56OUEVWfRJALYgtZcESvPXdw@mail.gmail.com>
Subject: Re: [PATCH v3 5/6] pwm: fsl-ftm: Don't update the state for the
 caller of pwm_apply_state()
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_144908_818367_C10442AA 
X-CRM114-Status: GOOD (  35.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pwm <linux-pwm@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Patrick Havelange <patrick.havelange@essensium.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Sascha Hauer <kernel@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGksCgpPbiBUdWUsIFNlcCAzLCAyMDE5IGF0IDI6MDcgUE0gVXdlIEtsZWluZS1Lw7ZuaWcKPHUu
a2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4KPiBPbiBUdWUsIFNlcCAwMywg
MjAxOSBhdCAwMTo1MDoyN1BNIC0wNzAwLCBEb3VnIEFuZGVyc29uIHdyb3RlOgo+ID4gSGksCj4g
Pgo+ID4gT24gVHVlLCBTZXAgMywgMjAxOSBhdCAxOjE1IFBNIFV3ZSBLbGVpbmUtS8O2bmlnCj4g
PiA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPiA+ID4KPiA+ID4gT24g
VHVlLCBTZXAgMDMsIDIwMTkgYXQgMTI6MzU6MjVQTSAtMDcwMCwgRG91ZyBBbmRlcnNvbiB3cm90
ZToKPiA+ID4gPiBIaSwKPiA+ID4gPgo+ID4gPiA+IE9uIFR1ZSwgU2VwIDMsIDIwMTkgYXQgMTE6
NDggQU0gVXdlIEtsZWluZS1Lw7ZuaWcKPiA+ID4gPiA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJv
bml4LmRlPiB3cm90ZToKPiA+ID4gPiA+Cj4gPiA+ID4gPiBIZWxsbywKPiA+ID4gPiA+Cj4gPiA+
ID4gPiBPbiBUdWUsIFNlcCAwMywgMjAxOSBhdCAwOTo1NDozN0FNIC0wNzAwLCBEb3VnIEFuZGVy
c29uIHdyb3RlOgo+ID4gPiA+ID4gPiBPbiBNb24sIFNlcCAyLCAyMDE5IGF0IDc6MjcgQU0gVXdl
IEtsZWluZS1Lw7ZuaWcKPiA+ID4gPiA+ID4gPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5k
ZT4gd3JvdGU6Cj4gPiA+ID4gPiA+ID4gT24gRnJpLCBBdWcgMzAsIDIwMTkgYXQgMTA6Mzk6MTZB
TSAtMDcwMCwgRG91ZyBBbmRlcnNvbiB3cm90ZToKPiA+ID4gPiA+ID4gPiA+IE9uIFNhdCwgQXVn
IDI0LCAyMDE5IGF0IDg6MzcgQU0gVXdlIEtsZWluZS1Lw7ZuaWcgPHV3ZUBrbGVpbmUta29lbmln
Lm9yZz4gd3JvdGU6Cj4gPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiA+IFRoZSBwd20t
ZnNsLWZ0bSBkcml2ZXIgaXMgb25lIG9mIG9ubHkgdGhyZWUgUFdNIGRyaXZlcnMgd2hpY2ggdXBk
YXRlcwo+ID4gPiA+ID4gPiA+ID4gPiB0aGUgc3RhdGUgZm9yIHRoZSBjYWxsZXIgb2YgcHdtX2Fw
cGx5X3N0YXRlKCkuIFRoaXMgbWlnaHQgaGF2ZQo+ID4gPiA+ID4gPiA+ID4gPiBzdXJwcmlzaW5n
IHJlc3VsdHMgaWYgdGhlIGNhbGxlciByZXVzZXMgdGhlIHZhbHVlcyBleHBlY3RpbmcgdGhlbSB0
bwo+ID4gPiA+ID4gPiA+ID4gPiBzdGlsbCByZXByZXNlbnQgdGhlIHNhbWUgc3RhdGUuCj4gPiA+
ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUt
S8O2bmlnIDx1d2VAa2xlaW5lLWtvZW5pZy5vcmc+Cj4gPiA+ID4gPiA+ID4gPiA+IC0tLQo+ID4g
PiA+ID4gPiA+ID4gPiAgZHJpdmVycy9wd20vcHdtLWZzbC1mdG0uYyB8IDQgLS0tLQo+ID4gPiA+
ID4gPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDQgZGVsZXRpb25zKC0pCj4gPiA+ID4gPiA+ID4g
Pgo+ID4gPiA+ID4gPiA+ID4gUHJlc3VtYWJseSB0aGlzIHBhdGNoIGNvdWxkIGJyZWFrIHNvbWV0
aGluZyBzaW5jZSB0aGUgcHdtLWZzbC1mdG0KPiA+ID4gPiA+ID4gPiA+IGRyaXZlciBkb2Vzbid0
IGFwcGVhciB0byBpbXBsZW1lbnQgdGhlIGdldF9zdGF0ZSgpIGZ1bmN0aW9uLiAgLi4ub3IKPiA+
ID4gPiA+ID4gPiA+IGRpZCBJIG1pc3MgaXQ/Cj4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiBJ
IGRvbid0IGV4cGVjdCBicmVha2FnZS4gV2UgaGF2ZSBtb3JlIHRoYW4gNTAgcHdtIGRyaXZlcnMg
YW5kIG9ubHkgdGhyZWUKPiA+ID4gPiA+ID4gPiBvZiB0aGVtIG1hZGUgdXNlIG9mIGFkYXB0aW5n
IHRoZSBwYXNzZWQgc3RhdGUuIFNvIHVubGVzcyB5b3UgZG8KPiA+ID4gPiA+ID4gPiBzb21ldGhp
bmcgc3BlY2lhbCB3aXRoIHRoZSBQV00gKGkuZS4gbW9yZSB0aGFuIGJhY2tsaWdodCwgTEVEIG9y
IGZhbgo+ID4gPiA+ID4gPiA+IGNvbnRyb2wpIEkgZG9uJ3QgdGhpbmsgYSBjb25zdW1lciBtaWdo
dCBjYXJlLiBCdXQgaXQgbWlnaHQgd2VsbCBiZSB0aGF0Cj4gPiA+ID4gPiA+ID4gSSBtaXNzIHNv
bWV0aGluZyBzbyBmZWVsIGZyZWUgdG8gcHJvdmUgbWUgd3JvbmcuCj4gPiA+ID4gPiA+Cj4gPiA+
ID4gPiA+IEkgZG9uJ3QgaGF2ZSB0aGlzIGhhcmR3YXJlIHNvIEkgY2FuJ3QgcHJvdmUgeW91IHdy
b25nLiAgLi4uYnV0Cj4gPiA+ID4gPiA+IHByZXN1bWFibHkgc29tZW9uZSBhZGRlZCB0aGUgY29k
ZSB0byByZXR1cm4gdGhlIHN0YXRlIG9uIHB1cnBvc2U/Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+
IE1heWJlIHlvdSBjb3VsZCBpbXBsZW1lbnQgZ2V0X3N0YXRlKCkgZm9yIHRoaXMgZHJpdmVyIGlu
IHlvdXIgc2VyaWVzPwo+ID4gPiA+ID4KPiA+ID4gPiA+IFN1cmUsIEkgY291bGQuIEJ1dCBJIGRv
bid0IGhhdmUgaGFyZHdhcmUgZWl0aGVyIGFuZCBzbyBJJ20gbm90IGluIGEKPiA+ID4gPiA+IGJl
dHRlciBwb3NpdGlvbiB0aGFuIGFueWJvZHkgZWxzZSBvbiB0aGlzIGxpc3QuCj4gPiA+ID4gPgo+
ID4gPiA+ID4gSSBzdWdnZXN0IHRvIGFwcGx5IGFzIGlzIGR1cmluZyB0aGUgbWVyZ2Ugd2luZG93
LCBhbmQgbGV0IGFmZmVjdGVkCj4gPiA+ID4gPiB1c2VyIHJlcG9ydCBwcm9ibGVtcyAob3IgcGF0
Y2hlcykgaWYgdGhlcmUgcmVhbGx5IGlzIGFuIGlzc3VlLgo+ID4gPiA+ID4gR3Vlc3Npbmcgd2hh
dCBwZW9wbGUgbWlnaHQgc3VmZmVyIGZyb20gYW5kIHRyeWluZyB0byBjdXJlIHRoaXMgd2l0aAo+
ID4gPiA+ID4gdW50ZXN0ZWQgcGF0Y2hlcyB3b24ndCBoZWxwIEkgdGhpbmsuCj4gPiA+ID4KPiA+
ID4gPiBJIHN1cHBvc2UgaXQncyBub3QgdXAgdG8gbWUsIGJ1dCBJIHdvdWxkIHJhdGhlciBoYXZl
IGEgcGF0Y2ggdGhhdAo+ID4gPiA+IGF0dGVtcHRzIHRvIGtlZXAgdGhpbmdzIHdvcmtpbmcgbGlr
ZSB0aGV5IGRpZCBiZWZvcmUgcmF0aGVyIHRoYW4gb25lCj4gPiA+ID4gdGhhdCBpcyBrbm93biB0
byBjaGFuZ2UgYmVoYXZpb3IuICBFdmVuIHdvcnNlIGlzIHRoYXQgeW91ciBwYXRjaAo+ID4gPiA+
IGRlc2NyaXB0aW9uIGRvZXNuJ3QgbWVudGlvbiB0aGlzIGZ1bmN0aW9uYWxpdHkgY2hhbmdlIGF0
IGFsbC4KPiA+ID4KPiA+ID4gSSBzdWdnZXN0IHRvIGFkZAo+ID4gPgo+ID4gPiAgICAgICAgIEFz
IHRoZSBkcml2ZXIgZG9lc24ndCBwcm92aWRlIGEgLmdldF9zdGF0ZSgpIGNhbGxiYWNrIGl0IGlz
Cj4gPiA+ICAgICAgICAgZXhwZWN0ZWQgdGhhdCB0aGlzIGNoYW5nZXMgYmVoYXZpb3VyIHNsaWdo
dGx5IGFzIHB3bV9nZXRfc3RhdGUoKQo+ID4gPiAgICAgICAgIHdpbGwgeWllbGQgdGhlIGxhc3Qg
c2V0IGluc3RlYWQgb2YgdGhlIGxhc3QgaW1wbGVtZW50ZWQgc2V0dGluZy4KPiA+ID4KPiA+ID4g
dG8gdGhlIGNvbW1pdCBsb2cgdG8gZml4IHRoaXMuCj4gPiA+Cj4gPiA+ID4gSSB3aWxsIGFsc28g
bm90ZSB0aGF0IG5vdCBldmVyeW9uZSBkb2VzIGEgZGVlcCB0ZXN0IG9mIGFsbAo+ID4gPiA+IGZ1
bmN0aW9uYWxpdHkgZHVyaW5nIGV2ZXJ5IGtlcm5lbCBtZXJnZSB3aW5kb3cuICAuLi5zbyB5b3Vy
IGNoYW5nZSBpbgo+ID4gPiA+IGZ1bmN0aW9uYWxpdHkgY2VydGFpbiBoYXMgYSBwcmV0dHkgaGln
aCBjaGFuY2Ugb2YgcmVtYWluaW5nIGJyb2tlbiBmb3IKPiA+ID4gPiBhIHdoaWxlLgo+ID4gPgo+
ID4gPiBJIGRvbid0IGV4cGVjdCBhbnkgcmVhbCBicmVha2FnZS4gVGhlIGNoYW5nZWQgYmVoYXZp
b3VyIG9ubHkgYWZmZWN0cwo+ID4gPiB1c2VycyBvZiBwd21fZ2V0X3N0YXRlKCkgdGhhdCBpcyBj
YWxsZWQgYWZ0ZXIgcHdtX2FwcGx5X3N0YXRlKCkuCj4gPiA+Cj4gPiA+ID4gSW4gYWRkaXRpb24g
aWYgYSBQV00gaXMgdXNlZCBmb3Igc29tZXRoaW5nIGxpa2UgYSBQV00KPiA+ID4gPiByZWd1bGF0
b3IgdGhlbiBzdWJ0bGUgY2hhbmdlcyBjYW4gY2F1c2UgdG90YWxseSBub24tb2J2aW91cyBicmVh
a2FnZXMsCj4gPiA+ID4gbWF5YmUgYWRqdXN0aW5nIHJlZ3VsYXRvcnMgYnkgYSB2ZXJ5IHNtYWxs
IHBlcmNlbnRhZ2UuCj4gPiA+Cj4gPiA+IFNvIGZvciBkcml2ZXJzL3JlZ3VsYXRvci9wd20tcmVn
dWxhdG9yLmMgdGhpcyBhZmZlY3RzIHRoZSAuZ2V0X3ZvbHRhZ2UoKQo+ID4gPiBjYWxsIG9ubHku
IE5vdGUgdGhhdCAuc2V0X3ZvbHRhZ2UoKSBkb2VzIGNhbGwgcHdtX2dldF9zdGF0ZSgpIGJ1dAo+
ID4gPiBkb2Vzbid0IHVzZSB0aGUgcmVzdWx0LiBJIGRvbid0IHNlZSBob3cgbXkgY2hhbmdlIHdv
dWxkIGFmZmVjdCB0aGUKPiA+ID4gY29uZmlndXJhdGlvbiB3cml0dGVuIHRvIHRoZSBQV00gcmVn
aXN0ZXJzIHdoZW4gdGhlIFBXTSByZWd1bGF0b3IgZHJpdmVyCj4gPiA+IGlzIGl0cyB1c2VyLiBT
byBpZiB5b3Ugd2FudCB0byBjb252aW5jZSBtZSB0aGF0IHRoZSBQV00gcmVndWxhdG9yIGlzIG9u
ZQo+ID4gPiBvZiB0aGUgcG90ZW50aWFsbHkgYWZmZWN0ZWQgY29uc3VtZXJzLCB5b3UgaGF2ZSB0
byB3b3JrIGEgYml0IGhhcmRlci4KPiA+ID4gOi0pCj4gPgo+ID4gUHJpb3IgdG8geW91ciBwYXRj
aCwgcHdtX2FwcGx5X3N0YXRlKCkgd291bGQgY2FsbCB0aGUgLT5hcHBseSgpCj4gPiBmdW5jdGlv
biwgcmlnaHQ/ICBUaGF0IHdvdWxkIG1vZGlmeSB0aGUgc3RhdGUuICBUaGVuIHB3bV9hcHBseV9z
dGF0ZSgpCj4gPiB3b3VsZCBzdG9yZSB0aGUgc3RhdGUgKGFmdGVyIGl0IGhhZCBiZWVuIG1vZGlm
aWVkKSBpbnRvIHB3bS0+c3RhdGUuCj4gPiBBbGwgZnV0dXJlIGNhbGxzIHRvIHB3bV9nZXRfc3Rh
dGUoKSB3b3VsZCByZXR1cm4gdGhlIG1vZGlmaWVkIHN0YXRlLgo+ID4KPiA+IC4uLnRoaXMgbWVh
bnMgdGhhdCB0aGUgY2FsbCB0byBwd21fZ2V0X3N0YXRlKCkgaW4KPiA+IHB3bV9yZWd1bGF0b3Jf
Z2V0X3ZvbHRhZ2UoKSB3b3VsZCByZXR1cm4gdGhlIGFjdHVhbCBoYXJkd2FyZSBzdGF0ZS4KPiA+
Cj4gPiBBZnRlciB5b3VyIHBhdGNoIHNlcmllcyBwd21fZ2V0X3N0YXRlKCkgd2lsbCBub3QgcmV0
dXJuIHRoZSBhY3R1YWwKPiA+IGhhcmR3YXJlIHN0YXRlIGZvciAicHdtLWZzbC1mdG0uYyIsIGl0
IHdpbGwgcmV0dXJuIHRoZSBzdGF0ZSB0aGF0IHdhcwo+ID4gcHJvZ3JhbW1lZC4KPiA+Cj4gPiBX
aGlsZSBwd21fc2V0X3ZvbHRhZ2UoKSB3aWxsIG5vdCBuZWNlc3NhcmlseSBiZSBhZmZlY3RlZCwg
ZnV0dXJlIGNhbGxzCj4gPiB0byBwd21fcmVndWxhdG9yX2dldF92b2x0YWdlKCkgY291bGQgYmUg
YWZmZWN0ZWQuICBVbmxlc3MgeW91IGFyZQo+ID4gYXNzZXJ0aW5nIHRoYXQgMTAwJSBvZiB0aGUg
Y2FsbHMgdG8gcHdtX2dldF92b2x0YWdlKCkgY29zbWV0aWMuCj4gPgo+ID4KPiA+IFBsZWFzZSBj
b3JyZWN0IGFueXRoaW5nIEkgZ290IHdyb25nIHRoZXJlLgo+Cj4gSSB0aGluayB0aGlzIGlzIGFs
bCB0cnVlLiBUaGUga2V5IHF1ZXN0aW9uIGhlcmUgaXMgdGhlbjogV2hvIGNhbGxzIHRoZQo+IC5n
ZXRfdm9sdGFnZSgpIGNhbGxiYWNrIGFuZCBjYXJlcyBhYm91dCB0aGUgcmVzdWx0PyBZZXMsIGl0
IGNoYW5nZXMgYQo+IGZldyBmaWxlcyBpbiBzeXNmcyBidXQgYXBhcnQgZnJvbSB0aGF0PwoKVGhl
cmUgYXJlIGxvdHMgb2YgZHJpdmVycyB0aGF0IGNhbGwgZ2V0X3ZvbHRhZ2UoKSBmb3IgdGhpbmdz
IG90aGVyCnRoYW4gc3lzZnMsIGJ1dCB3aXRob3V0IGF1ZGl0aW5nIGVhY2ggb25lIEkgY2FuJ3Qg
c2F5IGlmIGFueSBvZiB0aGVtCndvdWxkIGNoYW5nZSBiZWhhdmlvciBpbiBhIHdheSB0aGF0IHdv
dWxkIG1hdHRlci4KCi1Eb3VnCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
