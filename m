Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE51A759B
	for <lists+linux-rockchip@lfdr.de>; Tue,  3 Sep 2019 22:50:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oDDouiqSJfC6jLKaZg93L9twxcr3T4kdCfSt4DOZzdA=; b=l8ftlfHuL2L+gA
	n3jtOuIrJ85yi0eR/niKd+dVgI92IH3NB1doCgjIT1eCAfktwTbwigdpslIy9hZsTaghl5aI2MCQ8
	mLyDRbqEhppGgY4Ov1sH2NOiFLDLdbOJOfmyBCXQ0twILSuzA7DxhtBFlyySGoVt3GJRClOli/bOx
	0kNyNdFWLomMk59zELBL/vtvnckJvS7VNfFce7tTBymGfb0Ppdv+vBqMiaMxYIZXHFfQs6a9BpXi9
	NpYlbdthPT71RrLqhJ78mhQP541rXeN4vPiUgrEnaizjpsVoLWh0fVG3+Mavw8r8lb13lZ9Byq/sL
	NM1M/g6T3Qlp6K8nkcJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5FlG-0005el-G7; Tue, 03 Sep 2019 20:50:46 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5FlD-0005eP-4g
 for linux-rockchip@lists.infradead.org; Tue, 03 Sep 2019 20:50:44 +0000
Received: by mail-io1-xd42.google.com with SMTP id n197so37260446iod.9
 for <linux-rockchip@lists.infradead.org>; Tue, 03 Sep 2019 13:50:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=KmvXXydCgmlQBF0/mkeWmyFX4fyvPR9o8i2o8yVoygE=;
 b=GE47mFRfsIAOoo4eqMrZfzfpRXZdBCAQ2nc89rNtJgFoBxHHpA5/HTkKd/56pGu3np
 KtnUOweAWvGBjrEX+FoIh+1/ItXOXFcsxnMxyw0qSu8///UVithsiEyBT0vnk14tuTSs
 hjpoDT8VOB4Js9mQlfqV+fKqAgkQymwT98vUM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=KmvXXydCgmlQBF0/mkeWmyFX4fyvPR9o8i2o8yVoygE=;
 b=Ab7DqhAGwiokIHMO461SedbHZry9xyTOUsjr+IEjyj2JvPjSvM42no+GqqE89HthVq
 mPxw85ZCIkENph06716NELlS4k+IgWZi2Gtdfqx3+323pWwxfazsf89+bmBW1Y5MbWL0
 WOYjRU4GbEzCOsrO+R9kFMhfYAFZQ5NqaPtvzNhRDJ6S83EXtHL3hLCN80vItv8hy/CH
 eZ8Q9MCRK5ZduyfpPK2r5LJAx+qj4vNOFUxYBS3kv//i2oIcyiLPj2McD8h1hpo9NdRI
 4aYTKIg7bORZqJ0P5lldZmrhnGLl1Of0EMGmEdLI93f2i2uMBz85GN9lp+xRPnIgK8Rp
 Rf1g==
X-Gm-Message-State: APjAAAVsQSccTcegPfsrCyl3hZ6Dg1ax2YMlaTq35hDGOoVUA9z+NGFk
 7VzfD4p/pRmDnvrk08efESmzb99fOfY=
X-Google-Smtp-Source: APXvYqzbisSGmQp+HeKixi8dSyi0z/cMrpGBWPh0iYzfgZhhL903SjCfb0pvJBTlyGBUj5zvfwJBbA==
X-Received: by 2002:a5d:8cc1:: with SMTP id k1mr2700730iot.286.1567543841584; 
 Tue, 03 Sep 2019 13:50:41 -0700 (PDT)
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com.
 [209.85.166.50])
 by smtp.gmail.com with ESMTPSA id 80sm27156573iou.13.2019.09.03.13.50.39
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 03 Sep 2019 13:50:40 -0700 (PDT)
Received: by mail-io1-f50.google.com with SMTP id b10so39282053ioj.2
 for <linux-rockchip@lists.infradead.org>; Tue, 03 Sep 2019 13:50:39 -0700 (PDT)
X-Received: by 2002:a6b:b213:: with SMTP id b19mr59199iof.58.1567543839375;
 Tue, 03 Sep 2019 13:50:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190824153707.13746-1-uwe@kleine-koenig.org>
 <20190824153707.13746-6-uwe@kleine-koenig.org>
 <CAD=FV=X8kVU_zr69aKe-+GkAQh-tDwVf8tFogKve3s5O5ndF-g@mail.gmail.com>
 <20190902142709.wxrjsfzorozgeiuh@pengutronix.de>
 <CAD=FV=XFTuixKL-VBv-QObiO=Jg43i6W0enprLgXQ0U8=9C49A@mail.gmail.com>
 <20190903184800.2fmmvwyzbwbsaf6y@pengutronix.de>
 <CAD=FV=XOyayzv6N9Ky8m2ffXe4UzUijzrL8JCMZC3K+MEzaRFw@mail.gmail.com>
 <20190903201550.gxcyed5svtq33ev2@pengutronix.de>
In-Reply-To: <20190903201550.gxcyed5svtq33ev2@pengutronix.de>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 3 Sep 2019 13:50:27 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WjRiaNLJQJ25OeNSpY455H-ev8g3iZN24UXQtk3uXhtA@mail.gmail.com>
Message-ID: <CAD=FV=WjRiaNLJQJ25OeNSpY455H-ev8g3iZN24UXQtk3uXhtA@mail.gmail.com>
Subject: Re: [PATCH v3 5/6] pwm: fsl-ftm: Don't update the state for the
 caller of pwm_apply_state()
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_135043_210752_B5F45530 
X-CRM114-Status: GOOD (  32.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
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

SGksCgpPbiBUdWUsIFNlcCAzLCAyMDE5IGF0IDE6MTUgUE0gVXdlIEtsZWluZS1Lw7ZuaWcKPHUu
a2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4KPiBPbiBUdWUsIFNlcCAwMywg
MjAxOSBhdCAxMjozNToyNVBNIC0wNzAwLCBEb3VnIEFuZGVyc29uIHdyb3RlOgo+ID4gSGksCj4g
Pgo+ID4gT24gVHVlLCBTZXAgMywgMjAxOSBhdCAxMTo0OCBBTSBVd2UgS2xlaW5lLUvDtm5pZwo+
ID4gPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4gPiA+Cj4gPiA+IEhl
bGxvLAo+ID4gPgo+ID4gPiBPbiBUdWUsIFNlcCAwMywgMjAxOSBhdCAwOTo1NDozN0FNIC0wNzAw
LCBEb3VnIEFuZGVyc29uIHdyb3RlOgo+ID4gPiA+IE9uIE1vbiwgU2VwIDIsIDIwMTkgYXQgNzoy
NyBBTSBVd2UgS2xlaW5lLUvDtm5pZwo+ID4gPiA+IDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9u
aXguZGU+IHdyb3RlOgo+ID4gPiA+ID4gT24gRnJpLCBBdWcgMzAsIDIwMTkgYXQgMTA6Mzk6MTZB
TSAtMDcwMCwgRG91ZyBBbmRlcnNvbiB3cm90ZToKPiA+ID4gPiA+ID4gT24gU2F0LCBBdWcgMjQs
IDIwMTkgYXQgODozNyBBTSBVd2UgS2xlaW5lLUvDtm5pZyA8dXdlQGtsZWluZS1rb2VuaWcub3Jn
PiB3cm90ZToKPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+IFRoZSBwd20tZnNsLWZ0bSBkcml2
ZXIgaXMgb25lIG9mIG9ubHkgdGhyZWUgUFdNIGRyaXZlcnMgd2hpY2ggdXBkYXRlcwo+ID4gPiA+
ID4gPiA+IHRoZSBzdGF0ZSBmb3IgdGhlIGNhbGxlciBvZiBwd21fYXBwbHlfc3RhdGUoKS4gVGhp
cyBtaWdodCBoYXZlCj4gPiA+ID4gPiA+ID4gc3VycHJpc2luZyByZXN1bHRzIGlmIHRoZSBjYWxs
ZXIgcmV1c2VzIHRoZSB2YWx1ZXMgZXhwZWN0aW5nIHRoZW0gdG8KPiA+ID4gPiA+ID4gPiBzdGls
bCByZXByZXNlbnQgdGhlIHNhbWUgc3RhdGUuCj4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiBT
aWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dXdlQGtsZWluZS1rb2VuaWcub3JnPgo+
ID4gPiA+ID4gPiA+IC0tLQo+ID4gPiA+ID4gPiA+ICBkcml2ZXJzL3B3bS9wd20tZnNsLWZ0bS5j
IHwgNCAtLS0tCj4gPiA+ID4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCA0IGRlbGV0aW9ucygtKQo+
ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBQcmVzdW1hYmx5IHRoaXMgcGF0Y2ggY291bGQgYnJlYWsg
c29tZXRoaW5nIHNpbmNlIHRoZSBwd20tZnNsLWZ0bQo+ID4gPiA+ID4gPiBkcml2ZXIgZG9lc24n
dCBhcHBlYXIgdG8gaW1wbGVtZW50IHRoZSBnZXRfc3RhdGUoKSBmdW5jdGlvbi4gIC4uLm9yCj4g
PiA+ID4gPiA+IGRpZCBJIG1pc3MgaXQ/Cj4gPiA+ID4gPgo+ID4gPiA+ID4gSSBkb24ndCBleHBl
Y3QgYnJlYWthZ2UuIFdlIGhhdmUgbW9yZSB0aGFuIDUwIHB3bSBkcml2ZXJzIGFuZCBvbmx5IHRo
cmVlCj4gPiA+ID4gPiBvZiB0aGVtIG1hZGUgdXNlIG9mIGFkYXB0aW5nIHRoZSBwYXNzZWQgc3Rh
dGUuIFNvIHVubGVzcyB5b3UgZG8KPiA+ID4gPiA+IHNvbWV0aGluZyBzcGVjaWFsIHdpdGggdGhl
IFBXTSAoaS5lLiBtb3JlIHRoYW4gYmFja2xpZ2h0LCBMRUQgb3IgZmFuCj4gPiA+ID4gPiBjb250
cm9sKSBJIGRvbid0IHRoaW5rIGEgY29uc3VtZXIgbWlnaHQgY2FyZS4gQnV0IGl0IG1pZ2h0IHdl
bGwgYmUgdGhhdAo+ID4gPiA+ID4gSSBtaXNzIHNvbWV0aGluZyBzbyBmZWVsIGZyZWUgdG8gcHJv
dmUgbWUgd3JvbmcuCj4gPiA+ID4KPiA+ID4gPiBJIGRvbid0IGhhdmUgdGhpcyBoYXJkd2FyZSBz
byBJIGNhbid0IHByb3ZlIHlvdSB3cm9uZy4gIC4uLmJ1dAo+ID4gPiA+IHByZXN1bWFibHkgc29t
ZW9uZSBhZGRlZCB0aGUgY29kZSB0byByZXR1cm4gdGhlIHN0YXRlIG9uIHB1cnBvc2U/Cj4gPiA+
ID4KPiA+ID4gPiBNYXliZSB5b3UgY291bGQgaW1wbGVtZW50IGdldF9zdGF0ZSgpIGZvciB0aGlz
IGRyaXZlciBpbiB5b3VyIHNlcmllcz8KPiA+ID4KPiA+ID4gU3VyZSwgSSBjb3VsZC4gQnV0IEkg
ZG9uJ3QgaGF2ZSBoYXJkd2FyZSBlaXRoZXIgYW5kIHNvIEknbSBub3QgaW4gYQo+ID4gPiBiZXR0
ZXIgcG9zaXRpb24gdGhhbiBhbnlib2R5IGVsc2Ugb24gdGhpcyBsaXN0Lgo+ID4gPgo+ID4gPiBJ
IHN1Z2dlc3QgdG8gYXBwbHkgYXMgaXMgZHVyaW5nIHRoZSBtZXJnZSB3aW5kb3csIGFuZCBsZXQg
YWZmZWN0ZWQKPiA+ID4gdXNlciByZXBvcnQgcHJvYmxlbXMgKG9yIHBhdGNoZXMpIGlmIHRoZXJl
IHJlYWxseSBpcyBhbiBpc3N1ZS4KPiA+ID4gR3Vlc3Npbmcgd2hhdCBwZW9wbGUgbWlnaHQgc3Vm
ZmVyIGZyb20gYW5kIHRyeWluZyB0byBjdXJlIHRoaXMgd2l0aAo+ID4gPiB1bnRlc3RlZCBwYXRj
aGVzIHdvbid0IGhlbHAgSSB0aGluay4KPiA+Cj4gPiBJIHN1cHBvc2UgaXQncyBub3QgdXAgdG8g
bWUsIGJ1dCBJIHdvdWxkIHJhdGhlciBoYXZlIGEgcGF0Y2ggdGhhdAo+ID4gYXR0ZW1wdHMgdG8g
a2VlcCB0aGluZ3Mgd29ya2luZyBsaWtlIHRoZXkgZGlkIGJlZm9yZSByYXRoZXIgdGhhbiBvbmUK
PiA+IHRoYXQgaXMga25vd24gdG8gY2hhbmdlIGJlaGF2aW9yLiAgRXZlbiB3b3JzZSBpcyB0aGF0
IHlvdXIgcGF0Y2gKPiA+IGRlc2NyaXB0aW9uIGRvZXNuJ3QgbWVudGlvbiB0aGlzIGZ1bmN0aW9u
YWxpdHkgY2hhbmdlIGF0IGFsbC4KPgo+IEkgc3VnZ2VzdCB0byBhZGQKPgo+ICAgICAgICAgQXMg
dGhlIGRyaXZlciBkb2Vzbid0IHByb3ZpZGUgYSAuZ2V0X3N0YXRlKCkgY2FsbGJhY2sgaXQgaXMK
PiAgICAgICAgIGV4cGVjdGVkIHRoYXQgdGhpcyBjaGFuZ2VzIGJlaGF2aW91ciBzbGlnaHRseSBh
cyBwd21fZ2V0X3N0YXRlKCkKPiAgICAgICAgIHdpbGwgeWllbGQgdGhlIGxhc3Qgc2V0IGluc3Rl
YWQgb2YgdGhlIGxhc3QgaW1wbGVtZW50ZWQgc2V0dGluZy4KPgo+IHRvIHRoZSBjb21taXQgbG9n
IHRvIGZpeCB0aGlzLgo+Cj4gPiBJIHdpbGwgYWxzbyBub3RlIHRoYXQgbm90IGV2ZXJ5b25lIGRv
ZXMgYSBkZWVwIHRlc3Qgb2YgYWxsCj4gPiBmdW5jdGlvbmFsaXR5IGR1cmluZyBldmVyeSBrZXJu
ZWwgbWVyZ2Ugd2luZG93LiAgLi4uc28geW91ciBjaGFuZ2UgaW4KPiA+IGZ1bmN0aW9uYWxpdHkg
Y2VydGFpbiBoYXMgYSBwcmV0dHkgaGlnaCBjaGFuY2Ugb2YgcmVtYWluaW5nIGJyb2tlbiBmb3IK
PiA+IGEgd2hpbGUuCj4KPiBJIGRvbid0IGV4cGVjdCBhbnkgcmVhbCBicmVha2FnZS4gVGhlIGNo
YW5nZWQgYmVoYXZpb3VyIG9ubHkgYWZmZWN0cwo+IHVzZXJzIG9mIHB3bV9nZXRfc3RhdGUoKSB0
aGF0IGlzIGNhbGxlZCBhZnRlciBwd21fYXBwbHlfc3RhdGUoKS4KPgo+ID4gSW4gYWRkaXRpb24g
aWYgYSBQV00gaXMgdXNlZCBmb3Igc29tZXRoaW5nIGxpa2UgYSBQV00KPiA+IHJlZ3VsYXRvciB0
aGVuIHN1YnRsZSBjaGFuZ2VzIGNhbiBjYXVzZSB0b3RhbGx5IG5vbi1vYnZpb3VzIGJyZWFrYWdl
cywKPiA+IG1heWJlIGFkanVzdGluZyByZWd1bGF0b3JzIGJ5IGEgdmVyeSBzbWFsbCBwZXJjZW50
YWdlLgo+Cj4gU28gZm9yIGRyaXZlcnMvcmVndWxhdG9yL3B3bS1yZWd1bGF0b3IuYyB0aGlzIGFm
ZmVjdHMgdGhlIC5nZXRfdm9sdGFnZSgpCj4gY2FsbCBvbmx5LiBOb3RlIHRoYXQgLnNldF92b2x0
YWdlKCkgZG9lcyBjYWxsIHB3bV9nZXRfc3RhdGUoKSBidXQKPiBkb2Vzbid0IHVzZSB0aGUgcmVz
dWx0LiBJIGRvbid0IHNlZSBob3cgbXkgY2hhbmdlIHdvdWxkIGFmZmVjdCB0aGUKPiBjb25maWd1
cmF0aW9uIHdyaXR0ZW4gdG8gdGhlIFBXTSByZWdpc3RlcnMgd2hlbiB0aGUgUFdNIHJlZ3VsYXRv
ciBkcml2ZXIKPiBpcyBpdHMgdXNlci4gU28gaWYgeW91IHdhbnQgdG8gY29udmluY2UgbWUgdGhh
dCB0aGUgUFdNIHJlZ3VsYXRvciBpcyBvbmUKPiBvZiB0aGUgcG90ZW50aWFsbHkgYWZmZWN0ZWQg
Y29uc3VtZXJzLCB5b3UgaGF2ZSB0byB3b3JrIGEgYml0IGhhcmRlci4KPiA6LSkKClByaW9yIHRv
IHlvdXIgcGF0Y2gsIHB3bV9hcHBseV9zdGF0ZSgpIHdvdWxkIGNhbGwgdGhlIC0+YXBwbHkoKQpm
dW5jdGlvbiwgcmlnaHQ/ICBUaGF0IHdvdWxkIG1vZGlmeSB0aGUgc3RhdGUuICBUaGVuIHB3bV9h
cHBseV9zdGF0ZSgpCndvdWxkIHN0b3JlIHRoZSBzdGF0ZSAoYWZ0ZXIgaXQgaGFkIGJlZW4gbW9k
aWZpZWQpIGludG8gcHdtLT5zdGF0ZS4KQWxsIGZ1dHVyZSBjYWxscyB0byBwd21fZ2V0X3N0YXRl
KCkgd291bGQgcmV0dXJuIHRoZSBtb2RpZmllZCBzdGF0ZS4KCi4uLnRoaXMgbWVhbnMgdGhhdCB0
aGUgY2FsbCB0byBwd21fZ2V0X3N0YXRlKCkgaW4KcHdtX3JlZ3VsYXRvcl9nZXRfdm9sdGFnZSgp
IHdvdWxkIHJldHVybiB0aGUgYWN0dWFsIGhhcmR3YXJlIHN0YXRlLgoKQWZ0ZXIgeW91ciBwYXRj
aCBzZXJpZXMgcHdtX2dldF9zdGF0ZSgpIHdpbGwgbm90IHJldHVybiB0aGUgYWN0dWFsCmhhcmR3
YXJlIHN0YXRlIGZvciAicHdtLWZzbC1mdG0uYyIsIGl0IHdpbGwgcmV0dXJuIHRoZSBzdGF0ZSB0
aGF0IHdhcwpwcm9ncmFtbWVkLgoKV2hpbGUgcHdtX3NldF92b2x0YWdlKCkgd2lsbCBub3QgbmVj
ZXNzYXJpbHkgYmUgYWZmZWN0ZWQsIGZ1dHVyZSBjYWxscwp0byBwd21fcmVndWxhdG9yX2dldF92
b2x0YWdlKCkgY291bGQgYmUgYWZmZWN0ZWQuICBVbmxlc3MgeW91IGFyZQphc3NlcnRpbmcgdGhh
dCAxMDAlIG9mIHRoZSBjYWxscyB0byBwd21fZ2V0X3ZvbHRhZ2UoKSBjb3NtZXRpYy4KCgpQbGVh
c2UgY29ycmVjdCBhbnl0aGluZyBJIGdvdCB3cm9uZyB0aGVyZS4KCi1Eb3VnCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
