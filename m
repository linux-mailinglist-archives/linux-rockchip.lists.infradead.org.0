Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA6A2407C
	for <lists+linux-rockchip@lfdr.de>; Mon, 20 May 2019 20:36:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xUTKnqXh12b8Vcu5wQk72ILvvl5CtkA0Nmp3nT/1ZWY=; b=If3gf0GbScAv/q
	ZOTDN0xFO1DAPDcVUQopiaTuU7L5JHERK986q1mU5k6/v7gxqspDW1Gwu41x9sjuCmr4rAOVi/P1z
	ltU0Thk5ZEQK7cz43PBWIDDFsDc+2ZKLKfQQPSk6vfJ0Mf8v7PA2LLLyJm4EW2YN1ARpua7pa30vF
	99F0CEO5heo6dk77sRYUljxRNyFO8BiDg8ddNQ8TII4rcWTNdpFEOAP4NOfZ+bgvxSGjKYdKKPwkl
	/gxhEoIISpjbBj3m+OdFsSsFtMz8kVNCliX/d4jp6OXF5fqAhBI9ITwn3ZNIGJlJqT7bowSbKLHNw
	FVB42fHmDZvIY4UpVs8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSn8i-0003FD-Qc; Mon, 20 May 2019 18:36:00 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSn8f-0003Es-JD
 for linux-rockchip@lists.infradead.org; Mon, 20 May 2019 18:35:59 +0000
Received: by mail-ua1-x943.google.com with SMTP id d4so5628451uaj.7
 for <linux-rockchip@lists.infradead.org>; Mon, 20 May 2019 11:35:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=rJByBVnGlp63e7yCKsZ7SDuzR3kRoRVQ2u81Jed5J5c=;
 b=SXkXCP1GPoj17g4AfmKPdPV0NMDi4QcPSc930K1MaUzykox1V/AWM7p2qi1vBMUV6A
 59guNLCDAi9jEpOeuMIHyL4RMfZYpZB5w864pCNBczZY7zbrSjAe4aT6y3rUL1H7rohE
 f828A3dpBu61qyr0ohzqi8XBPtXz4sf44/Wug=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=rJByBVnGlp63e7yCKsZ7SDuzR3kRoRVQ2u81Jed5J5c=;
 b=TcjOf67QyTkrLtIltFCd1UMdru8PlEY0003ij646bbHUP5CSmt7+WPp+TCO1hxJUY4
 OEDC0J1lkisGH2yJ5+R7ktvx+1FdO9w2s/RESLQvsYuPtV93TjI9fUrLY8DZVh/+SDa7
 pVOGlZn5xyvNtIyu5OoSOLLp/nPNI4wKVtFeSbYaKhYuRTVht9aaicJD+c4TDbqjq2Yr
 /PgAAWX3JXW1jSU17qygUUcw7d2Hisi4qCKYTbV3OgF2cRAq7yHQ6/xpidW7htdo0iWM
 O6OAFWeGAh6Mqk7FqzyNV1gdLqa9o3qT/2oGelHCFeFSCJ3E3WlI78eQqMhCHdA4Cxg0
 1cOg==
X-Gm-Message-State: APjAAAVURH744rqW2MWDW02db8hukwjGLvxxr4JZ3HUsQiIjj/Zc7n9O
 qv3DLrS+3PV+dxu0j15f+LRta1aHuok=
X-Google-Smtp-Source: APXvYqyiuPR4SxWtAC8EF2fm1kqfB9znRYZMTofrOgltCJTQeHyl4cvVbk3P2gvMzP9qaU6sGDpP0g==
X-Received: by 2002:ab0:1d8e:: with SMTP id l14mr15730749uak.72.1558377356174; 
 Mon, 20 May 2019 11:35:56 -0700 (PDT)
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com.
 [209.85.217.41])
 by smtp.gmail.com with ESMTPSA id s69sm5206968vsc.10.2019.05.20.11.35.55
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 11:35:55 -0700 (PDT)
Received: by mail-vs1-f41.google.com with SMTP id k187so2553150vsk.12
 for <linux-rockchip@lists.infradead.org>; Mon, 20 May 2019 11:35:55 -0700 (PDT)
X-Received: by 2002:a67:dd8e:: with SMTP id i14mr31065192vsk.149.1558377354571; 
 Mon, 20 May 2019 11:35:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190401171724.215780-1-dianders@chromium.org>
 <20190401171724.215780-2-dianders@chromium.org> <20190408103240.GF6644@ulmo>
 <CAD=FV=UJXLeEDPRAHY5-f2D4qJ4rq0LmKUDf4MANrb5KOm_x=g@mail.gmail.com>
In-Reply-To: <CAD=FV=UJXLeEDPRAHY5-f2D4qJ4rq0LmKUDf4MANrb5KOm_x=g@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 20 May 2019 11:35:43 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WKkfhS8q2Wnx6PfHyq8m6oGhu=RideOykdTQ4dJrwfUg@mail.gmail.com>
Message-ID: <CAD=FV=WKkfhS8q2Wnx6PfHyq8m6oGhu=RideOykdTQ4dJrwfUg@mail.gmail.com>
Subject: Re: [PATCH v5 1/7] dt-bindings: Add panel-timing subnode to
 simple-panel
To: Thierry Reding <thierry.reding@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_113557_661021_33B1D177 
X-CRM114-Status: GOOD (  25.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Eric Anholt <eric@anholt.net>,
 David Airlie <airlied@linux.ie>, Jeffy Chen <jeffy.chen@rock-chips.com>,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>,
 =?UTF-8?Q?Enric_Balletb=C3=B2?= <enric.balletbo@collabora.com>,
 Rob Herring <robh+dt@kernel.org>, Ezequiel Garcia <ezequiel@collabora.com>,
 Matthias Kaehlcke <mka@chromium.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

VGhpZXJyeSwKCk9uIE1vbiwgQXByIDgsIDIwMTkgYXQgNzozOSBBTSBEb3VnIEFuZGVyc29uIDxk
aWFuZGVyc0BjaHJvbWl1bS5vcmc+IHdyb3RlOgo+Cj4gVGhpZXJyeSwKPgo+IE9uIE1vbiwgQXBy
IDgsIDIwMTkgYXQgMzozMiBBTSBUaGllcnJ5IFJlZGluZyA8dGhpZXJyeS5yZWRpbmdAZ21haWwu
Y29tPiB3cm90ZToKPiA+Cj4gPiBPbiBNb24sIEFwciAwMSwgMjAxOSBhdCAxMDoxNzoxOEFNIC0w
NzAwLCBEb3VnbGFzIEFuZGVyc29uIHdyb3RlOgo+ID4gPiBGcm9tOiBTZWFuIFBhdWwgPHNlYW5w
YXVsQGNocm9taXVtLm9yZz4KPiA+ID4KPiA+ID4gVGhpcyBwYXRjaCBhZGRzIGEgbmV3IHN1Ym5v
ZGUgdG8gc2ltcGxlLXBhbmVsIGFsbG93aW5nIHVzIHRvIG92ZXJyaWRlCj4gPiA+IHRoZSB0eXBp
Y2FsIHRpbWluZyBleHByZXNzZWQgaW4gdGhlIHBhbmVsJ3MgZGlzcGxheV90aW1pbmcuCj4gPiA+
Cj4gPiA+IENoYW5nZXMgaW4gdjI6Cj4gPiA+ICAtIFNwbGl0IG91dCB0aGUgYmluZGluZyBpbnRv
IGEgbmV3IHBhdGNoIChSb2IpCj4gPiA+ICAtIGRpc3BsYXktdGltaW5ncyBpcyBhIG5ldyBzZWN0
aW9uIChSb2IpCj4gPiA+ICAtIFVzZSB0aGUgZnVsbCBkaXNwbGF5LXRpbWluZ3Mgc3Vibm9kZSBp
bnN0ZWFkIG9mIHBpY2tpbmcgdGhlIHRpbWluZwo+ID4gPiAgICBvdXQgKFJvYi9UaGllcnJ5KQo+
ID4gPiBDaGFuZ2VzIGluIHYzOgo+ID4gPiAgLSBHbyBiYWNrIHRvIHVzaW5nIHRoZSB0aW1pbmcg
c3Vibm9kZSBkaXJlY3RseSwgYnV0IHJlbmFtZSB0bwo+ID4gPiAgICBwYW5lbC10aW1pbmcgKFJv
YikKPiA+ID4gQ2hhbmdlcyBpbiB2NDoKPiA+ID4gIC0gU2ltcGxpZnkgZGVzYy4gZm9yIHdoZW4g
b3ZlcnJpZGUgc2hvdWxkIGJlIHVzZWQgKFRoaWVycnkvTGF1cmVudCkKPiA+ID4gIC0gUmVtb3Zl
ZCBSb2IgSCByZXZpZXcgc2luY2UgaXQncyBiZWVuIGEgeWVhciBhbmQgd29yZGluZyBjaGFuZ2Vk
Cj4gPiA+IENoYW5nZXMgaW4gdjU6Cj4gPiA+ICAtIFJlbW92ZWQgYml0IGFib3V0IE9TIG1heSBp
Z25vcmUgKFJvYi9FemVxdWllbCkKPiA+ID4KPiA+ID4gQ2M6IERvdWcgQW5kZXJzb24gPGRpYW5k
ZXJzQGNocm9taXVtLm9yZz4KPiA+ID4gQ2M6IEVyaWMgQW5ob2x0IDxlcmljQGFuaG9sdC5uZXQ+
Cj4gPiA+IENjOiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgo+ID4gPiBDYzogSmVm
ZnkgQ2hlbiA8amVmZnkuY2hlbkByb2NrLWNoaXBzLmNvbT4KPiA+ID4gQ2M6IFJvYiBIZXJyaW5n
IDxyb2JoK2R0QGtlcm5lbC5vcmc+Cj4gPiA+IENjOiBTdMOpcGhhbmUgTWFyY2hlc2luIDxtYXJj
aGV1QGNocm9taXVtLm9yZz4KPiA+ID4gQ2M6IFRoaWVycnkgUmVkaW5nIDx0aGllcnJ5LnJlZGlu
Z0BnbWFpbC5jb20+Cj4gPiA+IENjOiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZwo+ID4gPiBD
YzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gPiBDYzogbGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBTZWFuIFBhdWwgPHNl
YW5wYXVsQGNocm9taXVtLm9yZz4KPiA+ID4gU2lnbmVkLW9mZi1ieTogRG91Z2xhcyBBbmRlcnNv
biA8ZGlhbmRlcnNAY2hyb21pdW0ub3JnPgo+ID4gPiAtLS0KPiA+ID4KPiA+ID4gIC4uLi9iaW5k
aW5ncy9kaXNwbGF5L3BhbmVsL3NpbXBsZS1wYW5lbC50eHQgICB8IDIyICsrKysrKysrKysrKysr
KysrKysKPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspCj4gPiA+Cj4gPiA+
IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9w
YW5lbC9zaW1wbGUtcGFuZWwudHh0IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2Rpc3BsYXkvcGFuZWwvc2ltcGxlLXBhbmVsLnR4dAo+ID4gPiBpbmRleCBiMmI4NzJjNzEwZjIu
LjkzODgyMjY4YzBiOSAxMDA2NDQKPiA+ID4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2Rpc3BsYXkvcGFuZWwvc2ltcGxlLXBhbmVsLnR4dAo+ID4gPiArKysgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9wYW5lbC9zaW1wbGUtcGFuZWwu
dHh0Cj4gPiA+IEBAIC0xNSw2ICsxNSwxNiBAQCBPcHRpb25hbCBwcm9wZXJ0aWVzOgo+ID4gPiAg
ICAoaG90IHBsdWcgZGV0ZWN0KSBzaWduYWwsIGJ1dCB0aGUgc2lnbmFsIGlzbid0IGhvb2tlZCB1
cCBzbyB3ZSBzaG91bGQKPiA+ID4gICAgaGFyZGNvZGUgdGhlIG1heCBkZWxheSBmcm9tIHRoZSBw
YW5lbCBzcGVjIHdoZW4gcG93ZXJpbmcgdXAgdGhlIHBhbmVsLgo+ID4gPgo+ID4gPiArcGFuZWwt
dGltaW5nIHN1Ym5vZGUKPiA+Cj4gPiBJcyB0aGVyZSBhbnkgcmVhc29uIHdoeSB3ZSBuZWVkIHRo
ZSBwYW5lbC0gcHJlZml4PyBUaGlzIGlzIGFscmVhZHkgcGFydAo+ID4gb2YgYSBwYW5lbCBkZWZp
bml0aW9uLCBzbyBpdCdzIGNvbXBsZXRlbHkgcmVkdW5kYW50LiBXaHkgbm90IGp1c3QgbmFtZQo+
ID4gdGhlIHN1Ym5vZGUgInRpbWluZyI/Cj4KPiBJdCB3YXMgYSByZWFsbHkgbG9uZyB0aW1lIGFn
byBzaW5jZSB0aGlzIHBhdGNoIHNlcmllcyB3YXMgaWRsZSBmb3IgYQo+IHdoaWxlLCBidXQgeW91
IHByZXZpb3VzIGhhZCBzaW1pbGFyIGZlZWRiYWNrIGluIHYzIGJ1dCBlbmRlZCB1cCBPSwo+IHdp
dGggaXQuICBTZWU6Cj4KPiBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzEwMjA3
NTgzLwo+Cj4gSSBiZWxpZXZlIHRoZSBvcmlnaW5hbCBub2RlIG5hbWUgY2FtZSBvdXQgb2Ygc29t
ZSBiYWNrIGFuZCBmb3J0aAo+IGJldHdlZW4gUm9iIGFuZCBTZWFuLiAgQXMgZmFyIGFzIEkgY2Fu
IHRlbGwsIHRoZSBjb250ZXh0IGlzIGJhY2sgaW4KPiA8aHR0cHM6Ly9wYXRjaHdvcmsua2VybmVs
Lm9yZy9wYXRjaC8xMDIwMzQ4My8+LiAgSSB0aGluayBSb2Igd2FudGVkIGl0Cj4gdG8gZm9sbG93
IG90aGVyIHNpbWlsYXIgbm9kZSBuYW1lcy4KPgo+Cj4gVGhhdCBhbGwgYmVpbmcgc2FpZCwgaWYg
eW91IGZlZWwgc3Ryb25nbHkgYWJvdXQgaXQgYmVpbmcgY2FsbGVkCj4gInRpbWluZyIgYW5kIFJv
YidzIE9LIHcvIHRoYXQgdG9vIHRoZW4gSSdsbCByZS1zcGluIHRoZSBzZXJpZXMuCgpXaXRoIDUu
Mi1yYzEgb3V0LCBtYXliZSB0aGlzIHNlcmllcyBpcyByZWFkeSB0byBsYW5kPyAgSWYgeW91J2Qg
bGlrZQptZSB0byBjaGFuZ2UgdGhpbmdzIGFzIHBlciBhYm92ZSBJIGNhbi4gIC4uLmJ1dCBpdCBm
ZWVscyBsaWtlIGtlZXBpbmcKdGhlIGFscmVhZHktYWdyZWVkLXVwb24gbmFtZSBtaWdodCBiZSBl
YXNpZXN0IC8gYmVzdD8gIFByZXN1bWFibHkKeW91J2QgbGFuZCBwYXRjaGVzIDEsIDIsIDQsIGFu
ZCA1IGFuZCB0aGVuIEhlaWtvIGNvdWxkIGxhbmQgdGhlIGR0cwpwYXRjaGVzPwoKVGhhbmtzIQoK
LURvdWcKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
