Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B503312B3CB
	for <lists+linux-rockchip@lfdr.de>; Fri, 27 Dec 2019 11:10:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=am5aQ9TfUYcC+RB3ZjjdKNXCqqsUxppGhNIFDgRVBfU=; b=KQ77tlV91tthHv
	ZSUjqrMhFvIvwsSGUuEQwOUu+s0ES0ihLlaSQxdVuEpawzGDKmmGFT6Uwoq4DBUh4hXBRElIOTH1q
	Bt8bjXBz9PZxARmrmJuNSMH/0P0J+DvNbfnvjJRa4KbHHaDC70CTwPNxV7URsIRyq6zIXELUT49Ed
	wfLuSOSsqDJ59UnHQzoehHiH9OEUzZeZBXgaw+dYryoUrbDlnb6lijl32PIA5pt4lz6rxqnexlvW5
	nw8nuvvHJb85oYW9e+/i2mC95XBA1UKAAS0OSwyUpSOV+nBl0GjZdSu6b28wQhgLipwmMdsAe6Rdv
	QSU6ppcEmoJDxa4jtuzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikmZh-0004XR-R2; Fri, 27 Dec 2019 10:10:29 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikmZe-0004Wo-A9
 for linux-rockchip@lists.infradead.org; Fri, 27 Dec 2019 10:10:27 +0000
Received: by mail-io1-xd41.google.com with SMTP id n11so18660770iom.9
 for <linux-rockchip@lists.infradead.org>; Fri, 27 Dec 2019 02:10:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=5aS6zqBvPmn5L1lxxIAEj/Ch3niRY0yBaHrlrB7JAHg=;
 b=WMNd2vTEeELwHBL8T0gQpQPEb6VpJPMwj6bekbP+DHTlaVwTnFrSqCo7f9L0mtQXZ0
 yz2cwo7Q389hIRGHY7HJu0I7Di+wHwfSueI/jB3MtHqpiwV8lFANyPSNc4dmM9CmKC1i
 ylmBCyxlZLq9AGqtlaaVaIf7Nqxvaf8g80TEM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=5aS6zqBvPmn5L1lxxIAEj/Ch3niRY0yBaHrlrB7JAHg=;
 b=GHY8fidSAtR1xwRZXt2zVA9CY5TarLQAHluU70rHWFwLmo0oTKt183slmfLNfw8bnR
 UW9qJnl9q9fQ3GNN2F9Qrk4uqtW0zOxbNALHuSagTPd5B4cy/JAJDZckK78oPpwaJtkz
 F69VrIIywpru2dQHROE75kGKFhVEWzQipQF5n4XryX7Ay6+H1LL1D9/OTTzHP9rwfsUK
 SVGeFhA7Kh7jbI04PQ+I5AKJ2/lGPdl+7KF+MRGCT5nm6Pxly0a1k9qOb2+wffrHbfy4
 kS3co5/QLLybSmIxI+O65d8aphC709XAOjuoONNF170yWUONwHzkb0FZzAAEyoq6YMY6
 gedg==
X-Gm-Message-State: APjAAAXmxwvTd7sJrodhTWufjmx85bhkDzrKwt/JGKx71zEgEXsrzZTW
 BIoUf1u/IZoqOQzDb03xH5YzF7A9gubDj9x7cY74vA==
X-Google-Smtp-Source: APXvYqxUi4DnkT0fX0oMpcN8Tw7Xy9p+5HJLVPAR8xEI0VdERaGQzEgOzl4xeAUQvo8nnSu5XvQcwM4S/4x3EUWuYtg=
X-Received: by 2002:a6b:3786:: with SMTP id e128mr35527033ioa.77.1577441425362; 
 Fri, 27 Dec 2019 02:10:25 -0800 (PST)
MIME-Version: 1.0
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-8-jagan@amarulasolutions.com>
 <87672c9e-5f49-edf9-a97d-2ed83d33d375@rock-chips.com>
 <CAMty3ZDQptk4NJkLfdGiygQMTdLNhSWOxNu57OOf-DpUhFndtA@mail.gmail.com>
 <ea1db706-33dc-91db-eafd-e925c36dae81@rock-chips.com>
In-Reply-To: <ea1db706-33dc-91db-eafd-e925c36dae81@rock-chips.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Fri, 27 Dec 2019 15:40:14 +0530
Message-ID: <CAMty3ZAm9-MiUqkyhT0+nM5-TD_gxRHGiARZmqRgxKSXt9w--g@mail.gmail.com>
Subject: Re: [PATCH 07/11] env: Enable SPI flash env for rockchip
To: Kever Yang <kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_021026_497675_D8EB4BA9 
X-CRM114-Status: GOOD (  14.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgS2V2ZXIsCgpPbiBGcmksIERlYyAyNywgMjAxOSBhdCAzOjMzIFBNIEtldmVyIFlhbmcgPGtl
dmVyLnlhbmdAcm9jay1jaGlwcy5jb20+IHdyb3RlOgo+Cj4KPiBPbiAyMDE5LzEyLzI3IOS4i+WN
iDI6NTAsIEphZ2FuIFRla2kgd3JvdGU6Cj4gPiBIaSBLZXZlciwKPiA+Cj4gPiBPbiBNb24sIERl
YyAyMywgMjAxOSBhdCA4OjA0IEFNIEtldmVyIFlhbmcgPGtldmVyLnlhbmdAcm9jay1jaGlwcy5j
b20+IHdyb3RlOgo+ID4+IEphZ2FuLAo+ID4+Cj4gPj4KPiA+PiBPbiAyMDE5LzEyLzIxIOS4i+WN
iDM6NTQsIEphZ2FuIFRla2kgd3JvdGU6Cj4gPj4+IE1vc3Qgb2YgdGhlIFNQSSBmbGFzaCBkZXZp
Y2VzIGluIHJvY2tjaGlwIGFyZSAxNk1pQiBzaXplLgo+ID4+Pgo+ID4+PiBTbywga2VlcGluZyBV
LUJvb3QgcHJvcGVyIG9mZnNldCBzdGFydCBmcm9tIDEyOE1pQiB3aXRoIDFNaUIKPiA+Pj4gc2l6
ZSBhbmQgdGhlbiBzdGFydCBlbnYgb2YgOEtpQiB3b3VsZCBiZSBhIGNvbXBhdGlibGUgbG9jYXRp
b24KPiA+Pj4gYmV0d2VlbiBhbGwgdmFyaWFudHMgb2YgZmxhc2ggc2l6ZXMuCj4gPj4+Cj4gPj4+
IFRoaXMgcGF0Y2ggYWRkIGVudiBzdGFydCBmcm9tIDB4MTQwMDAgd2l0aCBhIHNpemUgb2YgOEtp
Qi4KPiA+PiBXaGF0J3MgdGhlIHNwYWNlIG1hcCBpbiBTUEkgZmxhc2ggc3VwcG9zZSB0byBiZT8g
SW5jbHVkaW5nCj4gPj4gdHBsL3NwbC91LWJvb3QuaXRiCj4gPj4KPiA+PiBJIHdvdWxkIHByZWZl
ciB0byB1c2UgMTI4S2lCLThLaUIgYXMgdGhlIGVudiBzdGFydCBhZGRyZXNzLCB3ZSdkIGJldHRl
cgo+ID4+IHRvIGF2b2lkIHRoZQo+ID4+Cj4gPj4gcmlzayBvZiBvdmVybGFwIGJldHdlZW4gdGhl
IGVudiBzcGFjZSBhbmQgdGhlIGZpcm13YXJlIHNwYWNlLgo+ID4gSGVyZSBpcyB0aGUgMTZNaUIg
Zmxhc2ggbGF5b3V0LCBJIGhhdmUgdXNlZC4gSSBjYW4gc2VlIHRoZSBsb2FkZXIxCj4gPiAodHBs
L3NwbCkgY2FuIGJlIHBvc3NpYmxlIHRvIGxvYWQgYXQgMHgwIG9yIDB4MzJLIHNvIEkgaGF2ZSBn
aXZlbiB0aGUKPiA+IHNwYWNlIGZvciBpdC4gYW5kIDhLIGVudiBhZnRlciBsb2FkZXIyKHUtYm9v
dCkuIGxldCBtZSBrbm93IHlvdXIKPiA+IHRob3VnaHRzPwo+ID4KPiA+ICAgICAgICAgICAgMHgw
IC0gMHg4MDAwLCAgICAgICAzMksgID0+ICByZXNlcnZlZC9sb2FkZXIxCj4gPiAgICAgIDB4ODAw
MCAtIDB4NDAwMDAsICAgIDIyNEsgPT4gIGxvYWRlcjEKPiA+ICAgIDB4NDAwMDAgLSAweDE0MDAw
MCwgICAgMU0gID0+ICBsb2FkZXIyCj4gPiAweDE0MDAwMCAtIDB4MTQyMDAwLCAgICA4SyAgPT4g
ICBlbnYKPiA+IDB4MTQyMDAwIC0gMHg4NDIwMDAsICAgIDdNICA9PiAga2VybmVsCj4gPiAweDg0
MjAwMCAtIDB4ODUzODAwLCAgMTAwSyA9PiAgZHRiCj4KPiBzcGkgTk9SIG5lZWQgNEtCIGFzIGVy
YXNlIHNpemUsIHNvIHRoaXMgbWF5IG5lZWQgdXBkYXRlICwgb3RoZXIgaXRlbQo+IGxvb2tzIG9r
LgoKQ29ycmVjdCwgYnV0IHRoaXMgaW5kZWVkIGRvZXNuJ3QgZWZmZWN0IGVudiBvZmZzZXQgYW5k
IHNpemUuIE1heSBiZSBJCmNhbiBkb2N1bWVudCBpdCBmb3IgZnV0dXJlIHJlZmVyZW5jZS4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
