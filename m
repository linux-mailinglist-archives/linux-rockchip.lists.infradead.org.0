Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A47DEA711A
	for <lists+linux-rockchip@lfdr.de>; Tue,  3 Sep 2019 18:54:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tIqznczUOuhHloqT4Vd9mc3d/nMTPkv801eQGC8gdm8=; b=qtUYqw/B+zVWVJ
	X0w6vHCmNGtDUzbO3+e5c6nw+2VsYFcNEfRnLaYmt610IDMp/LbUaehadaxEs7YU2YbTkn8LlW+w3
	Q9Da+c08ED8XPzfIDaQIKWP35V6oTmpTzWA1l1LuQFdxv5KeoJq/2z4NGsxH5LxlnVLiQzxDTq0dp
	YI2IRWP6c4g5d505cnSh5BABTpGB8eamW+FPhr6ewA7/rgJXdY07z2rFYDE2dxGzu44pNcWbaVV3k
	FTwgRsV7xQ+0MkQZ6iB6uPSDuk2Tlr2Aksewur/vWpmoYu2J3CtfLZ6gZFRQb1AKmoRRoeWd0POTP
	n97UET4Pn7rQ3o5egd/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5C4z-00036s-Ax; Tue, 03 Sep 2019 16:54:53 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5C4w-00036Y-Ea
 for linux-rockchip@lists.infradead.org; Tue, 03 Sep 2019 16:54:51 +0000
Received: by mail-io1-xd43.google.com with SMTP id d25so34959224iob.6
 for <linux-rockchip@lists.infradead.org>; Tue, 03 Sep 2019 09:54:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ggETW+8FA62Mt4a95WVFTz5hpjErXLoqNww4/66NhtM=;
 b=NMsaZ46UlZVOPpO8QYjZ3BN7EGSLFQ/EkqR07+gdmUu7ZSRKe512669nBwEBcD7DBE
 BetuyRZKMX2pFikifi67XcAVlz/KSnSSsP5XdwDX3FxAEgRR+v4YxnXEkJvG4VrVvj/f
 BIFUryprAmABPSwndpoIBXnd+qlXJ5Ddaa9Kg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ggETW+8FA62Mt4a95WVFTz5hpjErXLoqNww4/66NhtM=;
 b=NsUouYXCwUvgDZst7I057qbxKy75NrOX5PKPpktQ23z2ZX7cxGgUOCgM1YY56FEpv1
 sGZqUzlDCwhaIDs7o0silTs2k60PNuU5rAr308aXrIlNGtRaws2jEZp+bboVbCk9DBcw
 DblPKcAXb1eM0B9Sl97xkUWwNMbbUebI1l7k2+uNh8i6rqFDwpKhWivK7A11cFr73qN6
 VN8pW9sr0VfS665Htj4ypzs7GuH7eIEX6ipqcvUsLFofbYwmo9qr7Ju14yCRX77cyupa
 W50tSieqmrVRStz1Ykiqo3PnxjUUACCYXS0FJ5PLWL2xFdvTKSaG41oRgN+MO5tsGX4h
 5Suw==
X-Gm-Message-State: APjAAAWCBx9jwSD72xnm0HYwf4Chsne89vsr6zDzZ2GQMoNiWEjeJK+o
 2BBlY9w8j0Mt2yad6O2ZSyQ9Qb6sWqI=
X-Google-Smtp-Source: APXvYqw2gvwQYmb2mFmNlbPIMjIei4l15EnDlZXJNQRofsJlSf+icI0ZRfIdjZXIagMs/ujQv9p9EA==
X-Received: by 2002:a5e:9509:: with SMTP id r9mr2571327ioj.100.1567529688113; 
 Tue, 03 Sep 2019 09:54:48 -0700 (PDT)
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com.
 [209.85.166.41])
 by smtp.gmail.com with ESMTPSA id v12sm19085342ios.16.2019.09.03.09.54.47
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 03 Sep 2019 09:54:47 -0700 (PDT)
Received: by mail-io1-f41.google.com with SMTP id f12so20017049iog.12
 for <linux-rockchip@lists.infradead.org>; Tue, 03 Sep 2019 09:54:47 -0700 (PDT)
X-Received: by 2002:a5e:8d14:: with SMTP id m20mr5528472ioj.52.1567529686981; 
 Tue, 03 Sep 2019 09:54:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190824153707.13746-1-uwe@kleine-koenig.org>
 <20190824153707.13746-6-uwe@kleine-koenig.org>
 <CAD=FV=X8kVU_zr69aKe-+GkAQh-tDwVf8tFogKve3s5O5ndF-g@mail.gmail.com>
 <20190902142709.wxrjsfzorozgeiuh@pengutronix.de>
In-Reply-To: <20190902142709.wxrjsfzorozgeiuh@pengutronix.de>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 3 Sep 2019 09:54:37 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XFTuixKL-VBv-QObiO=Jg43i6W0enprLgXQ0U8=9C49A@mail.gmail.com>
Message-ID: <CAD=FV=XFTuixKL-VBv-QObiO=Jg43i6W0enprLgXQ0U8=9C49A@mail.gmail.com>
Subject: Re: [PATCH v3 5/6] pwm: fsl-ftm: Don't update the state for the
 caller of pwm_apply_state()
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_095450_491827_CF3A109C 
X-CRM114-Status: GOOD (  17.64  )
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

SGksCgpPbiBNb24sIFNlcCAyLCAyMDE5IGF0IDc6MjcgQU0gVXdlIEtsZWluZS1Lw7ZuaWcKPHUu
a2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4KPiBPbiBGcmksIEF1ZyAzMCwg
MjAxOSBhdCAxMDozOToxNkFNIC0wNzAwLCBEb3VnIEFuZGVyc29uIHdyb3RlOgo+ID4gSGksCj4g
Pgo+ID4gT24gU2F0LCBBdWcgMjQsIDIwMTkgYXQgODozNyBBTSBVd2UgS2xlaW5lLUvDtm5pZyA8
dXdlQGtsZWluZS1rb2VuaWcub3JnPiB3cm90ZToKPiA+ID4KPiA+ID4gVGhlIHB3bS1mc2wtZnRt
IGRyaXZlciBpcyBvbmUgb2Ygb25seSB0aHJlZSBQV00gZHJpdmVycyB3aGljaCB1cGRhdGVzCj4g
PiA+IHRoZSBzdGF0ZSBmb3IgdGhlIGNhbGxlciBvZiBwd21fYXBwbHlfc3RhdGUoKS4gVGhpcyBt
aWdodCBoYXZlCj4gPiA+IHN1cnByaXNpbmcgcmVzdWx0cyBpZiB0aGUgY2FsbGVyIHJldXNlcyB0
aGUgdmFsdWVzIGV4cGVjdGluZyB0aGVtIHRvCj4gPiA+IHN0aWxsIHJlcHJlc2VudCB0aGUgc2Ft
ZSBzdGF0ZS4KPiA+ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHV3
ZUBrbGVpbmUta29lbmlnLm9yZz4KPiA+ID4gLS0tCj4gPiA+ICBkcml2ZXJzL3B3bS9wd20tZnNs
LWZ0bS5jIHwgNCAtLS0tCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgNCBkZWxldGlvbnMoLSkKPiA+
Cj4gPiBQcmVzdW1hYmx5IHRoaXMgcGF0Y2ggY291bGQgYnJlYWsgc29tZXRoaW5nIHNpbmNlIHRo
ZSBwd20tZnNsLWZ0bQo+ID4gZHJpdmVyIGRvZXNuJ3QgYXBwZWFyIHRvIGltcGxlbWVudCB0aGUg
Z2V0X3N0YXRlKCkgZnVuY3Rpb24uICAuLi5vcgo+ID4gZGlkIEkgbWlzcyBpdD8KPgo+IEkgZG9u
J3QgZXhwZWN0IGJyZWFrYWdlLiBXZSBoYXZlIG1vcmUgdGhhbiA1MCBwd20gZHJpdmVycyBhbmQg
b25seSB0aHJlZQo+IG9mIHRoZW0gbWFkZSB1c2Ugb2YgYWRhcHRpbmcgdGhlIHBhc3NlZCBzdGF0
ZS4gU28gdW5sZXNzIHlvdSBkbwo+IHNvbWV0aGluZyBzcGVjaWFsIHdpdGggdGhlIFBXTSAoaS5l
LiBtb3JlIHRoYW4gYmFja2xpZ2h0LCBMRUQgb3IgZmFuCj4gY29udHJvbCkgSSBkb24ndCB0aGlu
ayBhIGNvbnN1bWVyIG1pZ2h0IGNhcmUuIEJ1dCBpdCBtaWdodCB3ZWxsIGJlIHRoYXQKPiBJIG1p
c3Mgc29tZXRoaW5nIHNvIGZlZWwgZnJlZSB0byBwcm92ZSBtZSB3cm9uZy4KCkkgZG9uJ3QgaGF2
ZSB0aGlzIGhhcmR3YXJlIHNvIEkgY2FuJ3QgcHJvdmUgeW91IHdyb25nLiAgLi4uYnV0CnByZXN1
bWFibHkgc29tZW9uZSBhZGRlZCB0aGUgY29kZSB0byByZXR1cm4gdGhlIHN0YXRlIG9uIHB1cnBv
c2U/CgpNYXliZSB5b3UgY291bGQgaW1wbGVtZW50IGdldF9zdGF0ZSgpIGZvciB0aGlzIGRyaXZl
ciBpbiB5b3VyIHNlcmllcz8KCi1Eb3VnCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
