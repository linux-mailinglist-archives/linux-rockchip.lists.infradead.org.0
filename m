Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7BFCA73C4
	for <lists+linux-rockchip@lfdr.de>; Tue,  3 Sep 2019 21:35:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k/ToBX6fjESytg1IxIXuQe/3EyPiYBt0jYkrP2gy6TI=; b=QmXtkWUUFSZE/B
	UoLcSFVsIFNQ9eaf8q5Emuh8k3R/V2qVGzsjmtFFsmszRXMTFVds0LRLsWUv0eNedlPQ4mZJcZDLw
	SogmFlQXZfiAcLc8nSBOUhcS4IY1h/L1/RNQkVXiupxriu+6FfsNG8dK0EXgKZXOGa99mp35vG0iV
	0QLgmPXWxGnB4DBp2VEJGDfcoLeV6z5l4HdGueiVTNvzva7WdFBOm/5tX5Par8b5MHc5rbRks6fBd
	sitSf7KcG+l5kOHoav8eQZOdGdM+7X8G0wrwYEHP4klAy++nNyqOb4OdrdzuZQZbTDXsYaGpNj6Q/
	ATHSW1oHNzVQs4TOr5yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Ead-0004IX-OA; Tue, 03 Sep 2019 19:35:43 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Eaa-0004IA-Mg
 for linux-rockchip@lists.infradead.org; Tue, 03 Sep 2019 19:35:42 +0000
Received: by mail-io1-xd44.google.com with SMTP id n197so36717554iod.9
 for <linux-rockchip@lists.infradead.org>; Tue, 03 Sep 2019 12:35:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=WgUyaMdNtgO/S0kgGEK24DoI5vv3i2iBQJ3s94A4xGU=;
 b=OVUIRexcBatEyF7nWSqNoNLjIxQTj4i1rhz80NJl30JLv90OoId6sauAoAFTg/5R4b
 6lz6S58hy73Tj8J1Ib3Cl97hNZoiD1QWeMUkyJOJmqivAv4XFaVwbMcIvVdDf9bKwpdN
 dyQbqtX7S4HqQgc6+50+dDSLMc4aRrjIPDgDA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=WgUyaMdNtgO/S0kgGEK24DoI5vv3i2iBQJ3s94A4xGU=;
 b=Unxb+nN3MzNJwsYLUBluVE4VmfR55duqORUs+pK4vTWmBOKkKpQgUdvsnV8th0bs/H
 OCzofYnlYMp49kA32EjLIDGdkW1WyAXZM1L1zsjRniPrkiUfNaqGBPh86/UcRQqsH/ZM
 WwwmElucgzJCjZYTlV0VXCP9amjGuJWTSTFza4moV33R8uAG7vNCiFFdPNCbjK5mX2or
 ZUi/pCw61u4BC4lNUjRgYKatpOGsDtdWJCu8eGj3WPhlzFTlfsiG5Bj35XipCOnAQS1j
 C41ion6fHrZ8rZDNBsg5CDiBw0mdTxIKi4ZDwbRR/FnVopXxRBhNTKZJZjnXgIHUxbNO
 U64A==
X-Gm-Message-State: APjAAAX0rxd0RDf+9Ntq2y0ub2MXAqDomDtoNL+EM4ZMmbCdoRwlQGv+
 ro+dqMtTTc+yOJVxcWA2NqCWYFexxGQ=
X-Google-Smtp-Source: APXvYqz5qs0OZM9eIdXKDxCfg3Em49s0nS5eMlLQ7nkbLimYUa9YteF9MbAoxAta5d7SgO2h9VMRDg==
X-Received: by 2002:a5e:890f:: with SMTP id k15mr9330362ioj.230.1567539339150; 
 Tue, 03 Sep 2019 12:35:39 -0700 (PDT)
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com.
 [209.85.166.45])
 by smtp.gmail.com with ESMTPSA id c10sm2134348iot.14.2019.09.03.12.35.38
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 03 Sep 2019 12:35:38 -0700 (PDT)
Received: by mail-io1-f45.google.com with SMTP id b10so38739381ioj.2
 for <linux-rockchip@lists.infradead.org>; Tue, 03 Sep 2019 12:35:38 -0700 (PDT)
X-Received: by 2002:a05:6638:681:: with SMTP id
 i1mr1213550jab.127.1567539338060; 
 Tue, 03 Sep 2019 12:35:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190824153707.13746-1-uwe@kleine-koenig.org>
 <20190824153707.13746-6-uwe@kleine-koenig.org>
 <CAD=FV=X8kVU_zr69aKe-+GkAQh-tDwVf8tFogKve3s5O5ndF-g@mail.gmail.com>
 <20190902142709.wxrjsfzorozgeiuh@pengutronix.de>
 <CAD=FV=XFTuixKL-VBv-QObiO=Jg43i6W0enprLgXQ0U8=9C49A@mail.gmail.com>
 <20190903184800.2fmmvwyzbwbsaf6y@pengutronix.de>
In-Reply-To: <20190903184800.2fmmvwyzbwbsaf6y@pengutronix.de>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 3 Sep 2019 12:35:25 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XOyayzv6N9Ky8m2ffXe4UzUijzrL8JCMZC3K+MEzaRFw@mail.gmail.com>
Message-ID: <CAD=FV=XOyayzv6N9Ky8m2ffXe4UzUijzrL8JCMZC3K+MEzaRFw@mail.gmail.com>
Subject: Re: [PATCH v3 5/6] pwm: fsl-ftm: Don't update the state for the
 caller of pwm_apply_state()
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_123540_768120_65902FBB 
X-CRM114-Status: GOOD (  23.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
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

SGksCgpPbiBUdWUsIFNlcCAzLCAyMDE5IGF0IDExOjQ4IEFNIFV3ZSBLbGVpbmUtS8O2bmlnCjx1
LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+IHdyb3RlOgo+Cj4gSGVsbG8sCj4KPiBPbiBU
dWUsIFNlcCAwMywgMjAxOSBhdCAwOTo1NDozN0FNIC0wNzAwLCBEb3VnIEFuZGVyc29uIHdyb3Rl
Ogo+ID4gT24gTW9uLCBTZXAgMiwgMjAxOSBhdCA3OjI3IEFNIFV3ZSBLbGVpbmUtS8O2bmlnCj4g
PiA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPiA+ID4gT24gRnJpLCBB
dWcgMzAsIDIwMTkgYXQgMTA6Mzk6MTZBTSAtMDcwMCwgRG91ZyBBbmRlcnNvbiB3cm90ZToKPiA+
ID4gPiBPbiBTYXQsIEF1ZyAyNCwgMjAxOSBhdCA4OjM3IEFNIFV3ZSBLbGVpbmUtS8O2bmlnIDx1
d2VAa2xlaW5lLWtvZW5pZy5vcmc+IHdyb3RlOgo+ID4gPiA+ID4KPiA+ID4gPiA+IFRoZSBwd20t
ZnNsLWZ0bSBkcml2ZXIgaXMgb25lIG9mIG9ubHkgdGhyZWUgUFdNIGRyaXZlcnMgd2hpY2ggdXBk
YXRlcwo+ID4gPiA+ID4gdGhlIHN0YXRlIGZvciB0aGUgY2FsbGVyIG9mIHB3bV9hcHBseV9zdGF0
ZSgpLiBUaGlzIG1pZ2h0IGhhdmUKPiA+ID4gPiA+IHN1cnByaXNpbmcgcmVzdWx0cyBpZiB0aGUg
Y2FsbGVyIHJldXNlcyB0aGUgdmFsdWVzIGV4cGVjdGluZyB0aGVtIHRvCj4gPiA+ID4gPiBzdGls
bCByZXByZXNlbnQgdGhlIHNhbWUgc3RhdGUuCj4gPiA+ID4gPgo+ID4gPiA+ID4gU2lnbmVkLW9m
Zi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHV3ZUBrbGVpbmUta29lbmlnLm9yZz4KPiA+ID4gPiA+
IC0tLQo+ID4gPiA+ID4gIGRyaXZlcnMvcHdtL3B3bS1mc2wtZnRtLmMgfCA0IC0tLS0KPiA+ID4g
PiA+ICAxIGZpbGUgY2hhbmdlZCwgNCBkZWxldGlvbnMoLSkKPiA+ID4gPgo+ID4gPiA+IFByZXN1
bWFibHkgdGhpcyBwYXRjaCBjb3VsZCBicmVhayBzb21ldGhpbmcgc2luY2UgdGhlIHB3bS1mc2wt
ZnRtCj4gPiA+ID4gZHJpdmVyIGRvZXNuJ3QgYXBwZWFyIHRvIGltcGxlbWVudCB0aGUgZ2V0X3N0
YXRlKCkgZnVuY3Rpb24uICAuLi5vcgo+ID4gPiA+IGRpZCBJIG1pc3MgaXQ/Cj4gPiA+Cj4gPiA+
IEkgZG9uJ3QgZXhwZWN0IGJyZWFrYWdlLiBXZSBoYXZlIG1vcmUgdGhhbiA1MCBwd20gZHJpdmVy
cyBhbmQgb25seSB0aHJlZQo+ID4gPiBvZiB0aGVtIG1hZGUgdXNlIG9mIGFkYXB0aW5nIHRoZSBw
YXNzZWQgc3RhdGUuIFNvIHVubGVzcyB5b3UgZG8KPiA+ID4gc29tZXRoaW5nIHNwZWNpYWwgd2l0
aCB0aGUgUFdNIChpLmUuIG1vcmUgdGhhbiBiYWNrbGlnaHQsIExFRCBvciBmYW4KPiA+ID4gY29u
dHJvbCkgSSBkb24ndCB0aGluayBhIGNvbnN1bWVyIG1pZ2h0IGNhcmUuIEJ1dCBpdCBtaWdodCB3
ZWxsIGJlIHRoYXQKPiA+ID4gSSBtaXNzIHNvbWV0aGluZyBzbyBmZWVsIGZyZWUgdG8gcHJvdmUg
bWUgd3JvbmcuCj4gPgo+ID4gSSBkb24ndCBoYXZlIHRoaXMgaGFyZHdhcmUgc28gSSBjYW4ndCBw
cm92ZSB5b3Ugd3JvbmcuICAuLi5idXQKPiA+IHByZXN1bWFibHkgc29tZW9uZSBhZGRlZCB0aGUg
Y29kZSB0byByZXR1cm4gdGhlIHN0YXRlIG9uIHB1cnBvc2U/Cj4gPgo+ID4gTWF5YmUgeW91IGNv
dWxkIGltcGxlbWVudCBnZXRfc3RhdGUoKSBmb3IgdGhpcyBkcml2ZXIgaW4geW91ciBzZXJpZXM/
Cj4KPiBTdXJlLCBJIGNvdWxkLiBCdXQgSSBkb24ndCBoYXZlIGhhcmR3YXJlIGVpdGhlciBhbmQg
c28gSSdtIG5vdCBpbiBhCj4gYmV0dGVyIHBvc2l0aW9uIHRoYW4gYW55Ym9keSBlbHNlIG9uIHRo
aXMgbGlzdC4KPgo+IEkgc3VnZ2VzdCB0byBhcHBseSBhcyBpcyBkdXJpbmcgdGhlIG1lcmdlIHdp
bmRvdywgYW5kIGxldCBhZmZlY3RlZAo+IHVzZXIgcmVwb3J0IHByb2JsZW1zIChvciBwYXRjaGVz
KSBpZiB0aGVyZSByZWFsbHkgaXMgYW4gaXNzdWUuCj4gR3Vlc3Npbmcgd2hhdCBwZW9wbGUgbWln
aHQgc3VmZmVyIGZyb20gYW5kIHRyeWluZyB0byBjdXJlIHRoaXMgd2l0aAo+IHVudGVzdGVkIHBh
dGNoZXMgd29uJ3QgaGVscCBJIHRoaW5rLgoKSSBzdXBwb3NlIGl0J3Mgbm90IHVwIHRvIG1lLCBi
dXQgSSB3b3VsZCByYXRoZXIgaGF2ZSBhIHBhdGNoIHRoYXQKYXR0ZW1wdHMgdG8ga2VlcCB0aGlu
Z3Mgd29ya2luZyBsaWtlIHRoZXkgZGlkIGJlZm9yZSByYXRoZXIgdGhhbiBvbmUKdGhhdCBpcyBr
bm93biB0byBjaGFuZ2UgYmVoYXZpb3IuICBFdmVuIHdvcnNlIGlzIHRoYXQgeW91ciBwYXRjaApk
ZXNjcmlwdGlvbiBkb2Vzbid0IG1lbnRpb24gdGhpcyBmdW5jdGlvbmFsaXR5IGNoYW5nZSBhdCBh
bGwuCgpJIHdpbGwgYWxzbyBub3RlIHRoYXQgbm90IGV2ZXJ5b25lIGRvZXMgYSBkZWVwIHRlc3Qg
b2YgYWxsCmZ1bmN0aW9uYWxpdHkgZHVyaW5nIGV2ZXJ5IGtlcm5lbCBtZXJnZSB3aW5kb3cuICAu
Li5zbyB5b3VyIGNoYW5nZSBpbgpmdW5jdGlvbmFsaXR5IGNlcnRhaW4gaGFzIGEgcHJldHR5IGhp
Z2ggY2hhbmNlIG9mIHJlbWFpbmluZyBicm9rZW4gZm9yCmEgd2hpbGUuICBJbiBhZGRpdGlvbiBp
ZiBhIFBXTSBpcyB1c2VkIGZvciBzb21ldGhpbmcgbGlrZSBhIFBXTQpyZWd1bGF0b3IgdGhlbiBz
dWJ0bGUgY2hhbmdlcyBjYW4gY2F1c2UgdG90YWxseSBub24tb2J2aW91cyBicmVha2FnZXMsCm1h
eWJlIGFkanVzdGluZyByZWd1bGF0b3JzIGJ5IGEgdmVyeSBzbWFsbCBwZXJjZW50YWdlLiAgSWYg
eW91CmltcGxlbWVudCB0aGUgZ2V0dGVyIGl0IHNlZW1zICh0byBtZSkgbW9yZSBsaWtlbHkgeW91
J2xsIGVpdGhlciBnZXQgaXQKcmlnaHQgb3IgaXQgd2lsbCB0b3RhbGx5IGJyZWFrIHRoaW5ncy4g
IFRoYXQncyBhY3R1YWxseSBhIG11Y2ggYmV0dGVyCmZhaWx1cmUgbW9kZS4uLgoKCi1Eb3VnCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
