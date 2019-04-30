Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3596FB9E
	for <lists+linux-rockchip@lfdr.de>; Tue, 30 Apr 2019 16:38:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MnpDtvHjgEFpcV6i/uU5eJY1dTJNxw1dBePlamiv4ag=; b=TouxTjut+Br8xy
	0v0NV3v3k+Pg7xAQqbOtk1BuGykdcdIx25KJdQyLD+emQAYuwE1I2SnDPrbroF6Kj9tJTqeC45Rrk
	XNq8HsZZYgvOIRv/BdhSrVs4Wubg1FdIx4MxTDmfEeB5SLWkeXK5PMwhY6yicLW1ifWijyhyeTnAH
	IukBc/xfhNZ7cznBn2KMhLeSkzf/G7MFSrq/cs1qbAezhodGrg9Ndq0OkRtFff+yyjvJYzFHSB7Ol
	HSj31xH0gcRZXSKjATPXVJEPur6nWUgMNUcXwbMLA7P4qZnh4NBNw56k4E/NqI6f15i+GuGUe0QYV
	izF0JTWK//YcWPDwiuAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLTtv-00034K-DS; Tue, 30 Apr 2019 14:38:31 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLTts-00033v-A2
 for linux-rockchip@lists.infradead.org; Tue, 30 Apr 2019 14:38:29 +0000
Received: by mail-ua1-x942.google.com with SMTP id l17so4834223uar.4
 for <linux-rockchip@lists.infradead.org>; Tue, 30 Apr 2019 07:38:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=leSKHNU1Kx61Evh+FDlJRg0VdWvRcdsUW3kM7dqpOPk=;
 b=eyyIXAxLl6gwku8PvSM3A4rlLJxL0nvyURAkYDDqN7tK1AQqVzwtOe8F8LQfvst5vm
 iPy+Ms7gonZUSTmE/f7rVtigNp+ekj1TePjJ/h0IsHJXBVHnqWccseNmdeOov3Z5zIZf
 6gZd6uhETna9187T3drWp6uCUtAZkokwvjtIk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=leSKHNU1Kx61Evh+FDlJRg0VdWvRcdsUW3kM7dqpOPk=;
 b=c7/48u8Uvwk/nGljyP7q0HgOnY7HPw2tOqJHBVLjhdXR5WUTwL4JwX3IFv+6OO0Qyb
 bsKgsaW+1A/0g6slveVZNSamSr9zXJa+DAONdVedFP1giGVfMZr394mI5WI+P0Anty/k
 NVvvQ/f1P6yflN87+bc2DTiVVJgIJg3odNfVQB8s5Mo9W5dDmp8QQ1qrgmtYEIlEy/XL
 DbrPwlF+0NC6dnbY/RYcPajMX3Ijb1cnBb5ii2nx4TYPBk6zscwqOuDDNz37x9/39ehM
 KhKBNK2phAckQo8JGkfU2qcp8v3nMh07fEwqitralGgvTicXQ6R1XFEpvPH1sjrxiFkD
 ZMVQ==
X-Gm-Message-State: APjAAAX+H8hmZspOQGiz57lpHwXm3W8QioYdU0wqg6+UOGKiix3cdoqn
 Tl6fsunVHUZQ956CfJiDTLCgStQH9Uk=
X-Google-Smtp-Source: APXvYqxjTAktbqxuxik4/W6NPnsAfRdgnwfkSK+vxMhErQtsPWWPv9s93if4nel3Zf4S/Kim3qS7mA==
X-Received: by 2002:ab0:748e:: with SMTP id n14mr9326604uap.53.1556635106472; 
 Tue, 30 Apr 2019 07:38:26 -0700 (PDT)
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com.
 [209.85.221.174])
 by smtp.gmail.com with ESMTPSA id d4sm2166946vkf.16.2019.04.30.07.38.22
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Apr 2019 07:38:22 -0700 (PDT)
Received: by mail-vk1-f174.google.com with SMTP id s80so3145563vke.6
 for <linux-rockchip@lists.infradead.org>; Tue, 30 Apr 2019 07:38:22 -0700 (PDT)
X-Received: by 2002:a1f:8382:: with SMTP id f124mr20102803vkd.70.1556635102187; 
 Tue, 30 Apr 2019 07:38:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190312214605.10223-1-u.kleine-koenig@pengutronix.de>
 <20190312214605.10223-2-u.kleine-koenig@pengutronix.de>
 <1707507.TOMHpQGrZ7@phil>
 <CAD=FV=WZHouhGcxOgNG3006XajJQaAp0uq9WjeKRikQx1ru4TA@mail.gmail.com>
 <20190408143914.uucb5dwafq3cnsmk@pengutronix.de>
 <CA+ASDXO=szekU97iTDK9vqWjT+JtAKeCNTyoY=8aSi5d+v4mkA@mail.gmail.com>
 <20190429065613.n52uwgys5eugmssd@pengutronix.de>
 <CAD=FV=U71u39ZHkBBfAXVAP=_hY-bAw3L7JdhC=36jkUVxPOmQ@mail.gmail.com>
 <20190430092824.ijtq3gfh6mqujvnk@pengutronix.de>
In-Reply-To: <20190430092824.ijtq3gfh6mqujvnk@pengutronix.de>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 30 Apr 2019 07:38:09 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WUi0NbsRDJA_4WeC62QYXjLNH2OygU1FOCx==W0SyqpQ@mail.gmail.com>
Message-ID: <CAD=FV=WUi0NbsRDJA_4WeC62QYXjLNH2OygU1FOCx==W0SyqpQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] pwm: rockchip: Don't update the state for the
 caller of pwm_apply_state()
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_073828_373785_059BCB31 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Brian Norris <briannorris@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Chen-Yu Tsai <wens@csie.org>, Thierry Reding <thierry.reding@gmail.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 Boris Brezillon <boris.brezillon@collabora.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGksCgpPbiBUdWUsIEFwciAzMCwgMjAxOSBhdCAyOjI4IEFNIFV3ZSBLbGVpbmUtS8O2bmlnCjx1
LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+IHdyb3RlOgo+Cj4gPiA+IEFsc28gaXQgc2hv
dWxkIGJlIHBvc3NpYmxlIHRvIGtub3cgdGhlIHJlc3VsdCBiZWZvcmUgYWN0dWFsbHkKPiA+ID4g
Y29uZmlndXJpbmcgdGhlIGhhcmR3YXJlLiBPdGhlcndpc2UgdGhpbmdzIG1pZ2h0IGFscmVhZHkg
Z28gd3JvbmcKPiA+ID4gYmVjYXVzZSB0aGUgZHJpdmVyIGltcGxlbWVudHMgYSBzZXR0aW5nIHRo
YXQgaXMgdG9vIGZhciBmcm9tIHRoZQo+ID4gPiByZXF1ZXN0ZWQgY29uZmlndXJhdGlvbi4KPiA+
Cj4gPiBMYXRlciBpbiB0aGlzIHRocmVhZCBUaGllcnJ5IGRpZG4ndCBsaWtlIHRoZSAicm91bmQg
cmF0ZSIgaWRlYSBkdWUgdG8KPiA+IHJhY2VzLiAgT25lIHdheSB0byBzb2x2ZSB0aGF0IGNvdWxk
IGJlIHRvIGluZGljYXRlIHRvIHRoZSBQV00KPiA+IGZyYW1ld29yayB3aGljaCBkaXJlY3Rpb24g
eW91J2QgbGlrZSBpdCB0byBlcnJvciBpbjogYSBoaWdoZXIgZHV0eQo+ID4gY3ljbGUgb3IgYSBs
b3dlciBvbmUuCj4KPiBJIGRvbid0IHRoaW5rIHRoaXMgd291bGQgcmVzdWx0IGluIHNldHRpbmdz
IGFzIG9wdGltYWwgYXMgd2l0aCBteQo+IHN1Z2dlc3Rpb24uIElmIHlvdSBkb24ndCBhZ3JlZSBh
bmQgd2FudCB0byBjb252aW5jZSBtZTogU2hvdyBob3cgeW91cgo+IHN1Z2dlc3Rpb24gd291bGQg
d29yayB3aXRoIGEgUFdNIHRoYXQgY2FuIGltcGxlbWVudCBvbmx5IG11bHRpcGxlcyBvZiAzCj4g
Zm9yIGR1dHlfY3ljbGUgYW5kIHBlcmlvZCBhbmQgeW91IHdhbnQgMjAlIGR1dHkgY3ljbGUgd2l0
aCBwZXJpb2QgPD0gMQo+IG1zICh3aXRob3V0IG1ha2luZyB1c2Ugb2YgdGhlIGtub3dsZWRnZSBh
Ym91dCB0aGUgbGltaXRhdGlvbiBvZiB0aGUKPiBQV00gaW4gdGhlIGFsZ29yaXRobSkuCgpJIGd1
ZXNzIEkgd2FzIGFzc3VtaW5nIHRoYXQgc29tZWhvdyB0aGlzIHdvdWxkIHBlcmNvbGF0ZSBkb3du
IGludG8gYW4KQVBJIGNhbGwgdGhhdCB0aGUgUFdNIGRyaXZlciB3b3VsZCBpbXBsZW1lbnQsIHNv
IHlvdSBjb3VsZCBtYWtlIHVzZSBvZgp0aGUgUFdNIGtub3dsZWRnZSBpbiB0aGUgYWxnb3JpdGht
LgoKLi4uYnV0IEkgZG9uJ3QgaGF2ZSBhbnkgcmVhbCBzdHJvbmcgZmVlbGluZ3MgYWJvdXQgdGhp
cyBBUEkgc28gSSdsbApsZWF2ZSBpdCB0byB5b3UgYW5kIFRoaWVycnkgdG8gaGFzaCBvdXQgd2hh
dCBtYWtlcyB5b3UgYm90aCBoYXBweS4KCgotRG91ZwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
