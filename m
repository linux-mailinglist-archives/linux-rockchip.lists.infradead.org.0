Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB083625A8
	for <lists+linux-rockchip@lfdr.de>; Mon,  8 Jul 2019 18:06:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+CdKiu8kgSmsM3/obg9zykAZmJhOkIa389NqQatLZog=; b=t8Sef1lEENbLVW
	PgAD1O71wcEA33yIdiOShXNY7Z84kxCF6oLBZL8M8yaFXO1ElQrjGaDkrQMqFqkjpf8wEu4eeBitW
	J/++4IdT9ZlnF1r0V+VWVSBNR8z4baJJidtSpIOPIcHHXxzRwh2VpWO6vmKKaq/3pC/evfzPIAg2B
	6zdOcwZQSOaH6Gh4e+mlVT87XrnQBSayJS86IM2PNZYk8Vj668RTabQA3kz6wqLjw2D1afvYw6mRK
	j/+wG1uVNPD15U5TNxwg0uzK5VwGyi7gwRzC2xQoWrhjjaxn6H8WCXaotHMZdFkBcDDOo0X4kSi8s
	8OaOCdKkSZSoem29xcQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkW9s-0006ho-3g; Mon, 08 Jul 2019 16:06:28 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkW9n-0006hH-UX
 for linux-rockchip@lists.infradead.org; Mon, 08 Jul 2019 16:06:25 +0000
Received: by mail-io1-xd41.google.com with SMTP id u19so36428830ior.9
 for <linux-rockchip@lists.infradead.org>; Mon, 08 Jul 2019 09:06:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=tMCiFsRLDuW6geBulr3EjyW7t17T9yVxinnBG4xjmyE=;
 b=OXbjFpWmkvpDp2y6eTwPwQeZzYHFJ41RVnrCR/bBnbn3zmrcjD44kQV6AOejyYbCET
 Xw1BD5zUF87gnasL9QHVthJWk8/FVdH2b4ELdIR34m4lfjlZPKmCl70qe5p2QRmHi8nA
 uP0SYDtYKhdyMH1ZypI3iFmOV4Bcv5ysoSlXw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=tMCiFsRLDuW6geBulr3EjyW7t17T9yVxinnBG4xjmyE=;
 b=ocuEAsfAvORbaKAGQ76X4JMolZ3ca9Bnff4whs1sRCSE+fMbdQrSjATXTppFMHHOMb
 RmJ27+xPEvwoGxWrvVVYR1rJK7W75M/lZLfJ/MXMiNKEna0GIRr0nVMWuxp+B3csHtyG
 A5Snj/q8kXAEH4zPBL+shsP7fUm6RwHPQDTHd5aytzd00qExoBo1i/vpZr09K617mP1t
 qN29EKaftyHm8uMnRnKOAIEdPXg8MFwYQeQ3DMA3WEeVGvZ0dkCc44O+kvJY2kyH+Xcu
 r35OmtfatEsRacGTO+0C+cf2uax52Z2qFwI2EWCTveHapZothCuwqgYRBatZNEv2jPp1
 mOEQ==
X-Gm-Message-State: APjAAAX2SQHhR2DoHOkjqtRfnE3v7ilTKxrEwOe5of5yOjfQLZ2lpPrq
 TUmwXyv45Q5MlHNhwpm/8J7KBFa44dg=
X-Google-Smtp-Source: APXvYqw3FsEge/kL1/P9JZH1000YCDEOfbaJUYqtLN8k6X/Yt0g5IPSHt5nBZ8cubUkfT/wIDnsXCg==
X-Received: by 2002:a6b:fb02:: with SMTP id h2mr18371883iog.289.1562601982851; 
 Mon, 08 Jul 2019 09:06:22 -0700 (PDT)
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com.
 [209.85.166.51])
 by smtp.gmail.com with ESMTPSA id i4sm23562986iog.31.2019.07.08.09.06.22
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 08 Jul 2019 09:06:22 -0700 (PDT)
Received: by mail-io1-f51.google.com with SMTP id q22so14648343iog.4
 for <linux-rockchip@lists.infradead.org>; Mon, 08 Jul 2019 09:06:22 -0700 (PDT)
X-Received: by 2002:a5e:8f08:: with SMTP id c8mr20045788iok.52.1562601529525; 
 Mon, 08 Jul 2019 08:58:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190401171724.215780-1-dianders@chromium.org>
 <CAD=FV=Vi2C7s2oWBDD0n+HK=_SuBYhRM9saMK-y6Qa0+k-g17w@mail.gmail.com>
 <20190628171342.GA2238@ravnborg.org> <2169143.hEFa8b2HQR@diego>
In-Reply-To: <2169143.hEFa8b2HQR@diego>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 8 Jul 2019 08:58:41 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U3Wj8vaZcQLmkfX6zgjVFEra+GrHMH3OCs5QQ_-tM4hw@mail.gmail.com>
Message-ID: <CAD=FV=U3Wj8vaZcQLmkfX6zgjVFEra+GrHMH3OCs5QQ_-tM4hw@mail.gmail.com>
Subject: Re: [PATCH v5 0/7] drm/panel: simple: Add mode support to devicetree
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_090623_983973_99B73B83 
X-CRM114-Status: GOOD (  20.30  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Brian Norris <briannorris@chromium.org>, David Airlie <airlied@linux.ie>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Thierry Reding <thierry.reding@gmail.com>, Sean Paul <seanpaul@chromium.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 =?UTF-8?Q?Enric_Balletb=C3=B2?= <enric.balletbo@collabora.com>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 Sam Ravnborg <sam@ravnborg.org>, Matthias Kaehlcke <mka@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgU2FtLAoKT24gU2F0LCBKdW4gMjksIDIwMTkgYXQgNzowOSBBTSBIZWlrbyBTdMO8Ym5lciA8
aGVpa29Ac250ZWNoLmRlPiB3cm90ZToKPgo+IEhpIFNhbSwKPgo+IEFtIEZyZWl0YWcsIDI4LiBK
dW5pIDIwMTksIDE5OjEzOjQyIENFU1Qgc2NocmllYiBTYW0gUmF2bmJvcmc6Cj4gPiBIaSBEb3Vn
Lgo+ID4KPiA+ID4gU2FtOiBPaCEgIEkgaGFkbid0IG5vdGljZWQgdGhhdCB5b3UndmUgYmVlbiBh
ZGRlZCBhcyBhIHBhbmVsCj4gPiA+IG1haW50YWluZXIgaW4gY29tbWl0IGVmMGRiOTRmOTRhMCAo
Ik1BSU5UQUlORVJTOiBBZGQgU2FtIGFzIHJldmlld2VyCj4gPiA+IGZvciBkcm0vcGFuZWwiKS4g
IERvZXMgdGhhdCBtZWFuIHlvdSBhcmUgYWJsZSB0byBwcm92aWRlIHNvbWUgYWR2aWNlCj4gPiA+
IGZvciBob3cgdG8gbGFuZCB0aGlzIHNlcmllcz8KPiA+IFJldmlld2VyIG9ubHksIG5vdCBtYWlu
dGFpbmVyLi4uLgo+ID4KPiA+IEl0IGlzIG9uIG15IFRPRE8gbGlzdCBmb3IgdGhlIHdlZWtlbmQg
dG8gZ28gdGhyb3VnaCB0aGUgcGF0Y2ggc2V0IGluCj4gPiBkZXRhaWxzIGFuZCBwcm92aWRlIGZl
ZWRiYWNrLiBJIGhhdmUgcmVhZCB0aGVtIGJlZm9yZSwgYnV0IEkgbWlzcyB0byBkbwo+ID4gYSBt
b3JlIGRldGFpbGVkIHJlYWQgdGhyb3VnaC4KPiA+Cj4gPiBCdXQgSSBjYW5ub3QgYXBwbHkgdGhp
cyB1bmxlc3MgVGhpZXJyeSBvciBvbmUgb2YgdGhlIERSTSBtYWludGFpbmVycwo+ID4gYWNrIGl0
Lgo+ID4gV2Ugc2ltcGx5IG5lZWQgc29tZW9uZSB3aXRoIGEgYmV0dGVyIGdlbmVyYWwga25vd2xl
ZGdlIG9mIERSTSB0byBhY2sgaXQKPiA+IHRoYW4gSSBoYXZlLgo+Cj4gU28gVGhpZXJyeSB3YXMg
YWJsZSB0byBsb29rIGF0IHRoZSBwYXRjaGVzIHllc3RlcmRheSBpdCBzZWVtcyBhbmQgaGFzIEFj
a2VkCj4gYWxsIHRoZSByZWxldmFudCBvbmVzLiBBcyBhIGRybS1taXNjLWNvbnRyaWJ1dG9yIEkg
Y291bGQgYWxzbyBhcHBseSB0aGVtCj4gbXlzZWxmLCBidXQgbm93IGRvbid0IHdhbnQgdG8gcHJl
ZW1wdCBhbnkgYWRkaXRpb25hbCBjb21tZW50cyB5b3UgbWlnaHQKPiBoYXZlIDstKSAuIFNvIEkg
Z3Vlc3MgbXkgcXVlc3Rpb24gd291bGQgYmUgaWYgeW91IHN0aWxsIHdhbnQgdG8gZG8gYSByZXZp
ZXcKPiBvciBpZiBJIHNob3VsZCBhcHBseSB0aGVtLgoKSG9wZWZ1bGx5IHlvdSBzYXcsIGJ1dCBJ
IHJlc3BvbmRlZCB0byBhbGwgb2YgeW91ciByZXZpZXcgZmVlZGJhY2suICBJbgp0aGUgZW5kLCBJ
IHRob3VnaHQgaXQnZCBiZSBPSyB0byBsYW5kIHRoZSBzZXJpZXMgYXMtaXMgYW5kIEkgY2FuIGZp
eAp1cCBuaXRzIGluIGEgZm9sbG93LXVwIHNlcmllcywgdGhvdWdoIEknbSB3YWl0aW5nIGZvciB5
b3VyIHJlc3BvbnNlcwp0byBhIGNvdXBsZSBxdWVzdGlvbnMgZmlyc3QuCgpJdCB3b3VsZCBiZSBp
ZGVhbCBpZiB5b3UgY291bGQgY29uZmlybSB0aGF0IHlvdSdyZSBPSyB3aXRoIHRoaXMgcGxhbgpl
dmVuIGlmIHlvdSBkb24ndCBoYXZlIHRpbWUgdG8gcmVzcG9uZCBpbiBkZXRhaWwgdG8gbXkgZW1h
aWxzIHlldC4gIEkKdGhpbmsgSGVpa28gY2FuIGxhbmQgdGhlbSBhbGwgdGhyb3VnaCB0aGUgYXBw
cm9wcmlhdGUgY2hhbm5lbHMgc2luY2UKdGhlIHBhdGNoZXMgaGF2ZSBhbGwgdGhlIHByb3BlciBB
Y2tzLgoKVGhhbmtzIQoKLURvdWcKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
