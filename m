Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D0B4C2CC
	for <lists+linux-rockchip@lfdr.de>; Wed, 19 Jun 2019 23:12:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rvjwbfWqDATNQGB8jDHzxPwWl2bKVuMLJfFd4Yh+ub4=; b=br2W8JIbZQCwwp
	47WTAF5A5bEWT+agWjuZ5Gpqvubr7MS8WDDJp1riwjpgfQCNft8YJBqbxAZ1V3EqexeaZCQZifaqb
	5lT2wn4vmIp3Glrq2MLL9yZDkdsFT5Pnf8Z0BQ1bBZ8FCKWSEtf/c/QYRNxKGC3DmBtAoHoQualS2
	zNZ5n3QEoKzsD6QWOogeI3yRgREisuEmjs/CzoeBZz5MKeLWv9jZ2TbnMsvcudPNL2DvcSdEUIOS6
	/SMTevRSoWH9yMjyx1Hb6PYdDzJCJ88OX4cefxZIhuazquh/hdwg2qd2s3K6wJsp7bK7h9QpHGS/g
	b5tgQwH+OMmukTRGKVYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdhsA-0006gQ-51; Wed, 19 Jun 2019 21:12:02 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdhs6-0006ej-Cj
 for linux-rockchip@lists.infradead.org; Wed, 19 Jun 2019 21:12:00 +0000
Received: by mail-io1-xd41.google.com with SMTP id u13so1032286iop.0
 for <linux-rockchip@lists.infradead.org>; Wed, 19 Jun 2019 14:11:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=XY7aJ7dmXPxqNPvIOXdraSG/mXJqcFutpgqcMN/Km28=;
 b=VNslJ7mhNRCKEXVbWHWhBbcjyZQQnZuTLynWJkzRy6HJWCzrYxgAE2HhkW/VSd5Pz9
 SHfFCPP+ICxn6nicRTh1QtGs0tabSVxS4XDWpZ26c2/+NvIS9qM5t7B+rePUZMndCsUY
 d/Xt1q1xsTgqaK/ACYSjZ3NODpHgZdE4uqn5I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=XY7aJ7dmXPxqNPvIOXdraSG/mXJqcFutpgqcMN/Km28=;
 b=WTgnu2RJ8xTWQS/lYa7nin8VHbk6+RocXEy82YMyAkIKs+s5R/jc5GU621BDpfAywi
 xEZPvK4MwF289vjRbxLC7j9s4MFxTHlQhf21NWestLCsthJNjx1Br9zLTwK8EHjg/k8S
 hnOv4Al9gnFb42o0iKqosBIiM7zgwf214lkXCqXRB+CoRO/wt1RUqed5ezsh/pCP9lKt
 fiV644DByfApfrw6JG0yBwBAXBWKDO/z+hwIbp0tGVoi35W8Tj4ICbhTD9EWUYZB3jDB
 XChlwog/wZm94ABMhHoGGujqIkKYxTYU/USohUNqJv1hhEodOYw4z6E/BXDSwmPXy01l
 Qprg==
X-Gm-Message-State: APjAAAWaSZeGqSGtqRG1hF9B2rMdnYR8w70G/3N+hKoenDRCgUiifKAD
 JnnNIIamlHjkW/1taXRglzs9snHugDw=
X-Google-Smtp-Source: APXvYqyiYfumKuUnGFaxY0Qe24g4inr8Dw1FnsTyn29duKexA/M+KcAGdtubqyblwYlKbRaiUDS3eA==
X-Received: by 2002:a5e:9308:: with SMTP id k8mr13854482iom.143.1560978717343; 
 Wed, 19 Jun 2019 14:11:57 -0700 (PDT)
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com.
 [209.85.166.50])
 by smtp.gmail.com with ESMTPSA id c11sm24780346ioi.72.2019.06.19.14.11.55
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 14:11:55 -0700 (PDT)
Received: by mail-io1-f50.google.com with SMTP id i10so1711206iol.13
 for <linux-rockchip@lists.infradead.org>; Wed, 19 Jun 2019 14:11:55 -0700 (PDT)
X-Received: by 2002:a02:5b05:: with SMTP id g5mr93849116jab.114.1560978714620; 
 Wed, 19 Jun 2019 14:11:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190617235558.64571-1-dianders@chromium.org>
 <6219398.I55JWXAmVF@jernej-laptop>
 <9bba43cb-7070-8b2a-cfc6-f601fd22a315@baylibre.com>
In-Reply-To: <9bba43cb-7070-8b2a-cfc6-f601fd22a315@baylibre.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 19 Jun 2019 14:11:41 -0700
X-Gmail-Original-Message-ID: <CAD=FV=V_xg3VfWDMfjJp158ELUQm5xJQCRn85H4mx_-YfjfWTg@mail.gmail.com>
Message-ID: <CAD=FV=V_xg3VfWDMfjJp158ELUQm5xJQCRn85H4mx_-YfjfWTg@mail.gmail.com>
Subject: Re: [PATCH] drm/bridge/synopsys: dw-hdmi: Handle audio for more clock
 rates
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_141158_436728_4655299A 
X-CRM114-Status: GOOD (  24.79  )
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
Cc: =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@siol.net>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, David Airlie <airlied@linux.ie>,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Dylan Reid <dgreid@chromium.org>, Zheng Yang <zhengyang@rock-chips.com>,
 Sam Ravnborg <sam@ravnborg.org>, Thomas Gleixner <tglx@linutronix.de>,
 Cheng-Yi Chiang <cychiang@chromium.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGksCgpPbiBXZWQsIEp1biAxOSwgMjAxOSBhdCA4OjIzIEFNIE5laWwgQXJtc3Ryb25nIDxuYXJt
c3Ryb25nQGJheWxpYnJlLmNvbT4gd3JvdGU6Cj4KPiBPbiAxOC8wNi8yMDE5IDE5OjIzLCBKZXJu
ZWogxaBrcmFiZWMgd3JvdGU6Cj4gPiBIaSEKPiA+Cj4gPiBEbmUgdG9yZWssIDE4LiBqdW5paiAy
MDE5IG9iIDAxOjU1OjU4IENFU1QgamUgRG91Z2xhcyBBbmRlcnNvbiBuYXBpc2FsKGEpOgo+ID4+
IExldCdzIGFkZCBzb21lIGJldHRlciBzdXBwb3J0IGZvciBIRE1JIGF1ZGlvIHRvIGR3X2hkbWku
Cj4gPj4gU3BlY2lmaWNhbGx5Ogo+ID4+Cj4gPj4gMS4gRm9yIDQ0LjEga0h6IGF1ZGlvIHRoZSBv
bGQgY29kZSBtYWRlIHRoZSBhc3N1bXB0aW9uIHRoYXQgYW4gTiBvZgo+ID4+IDYyNzIgd2FzIHJp
Z2h0IG1vc3Qgb2YgdGhlIHRpbWUuICBUaGF0IHdhc24ndCB0cnVlIGFuZCB0aGUgbmV3IHRhYmxl
Cj4gPj4gc2hvdWxkIGdpdmUgYmV0dGVyIDQ0LjEga0h6IGF1ZGlvIGZvciBtYW55IG1vcmUgcmF0
ZXMuCj4gPj4KPiA+PiAyLiBUaGUgbmV3IHRhYmxlIGhhcyB2YWx1ZXMgZnJvbSB0aGUgSERNSSBz
cGVjIGZvciAyOTcgTUh6IGFuZCA1OTQKPiA+PiBNSHouCj4gPj4KPiA+PiAzLiBUaGVyZSBpcyBu
b3cgY29kZSB0byB0cnkgdG8gY29tZSB1cCB3aXRoIGEgbW9yZSBpZGVhIE4vQ1RTIGZvcgo+ID4+
IGNsb2NrIHJhdGVzIHRoYXQgYXJlbid0IGluIHRoZSB0YWJsZS4gIFRoaXMgY29kZSBpcyBhIGJp
dCBzbG93IGJlY2F1c2UKPiA+PiBpdCBpdGVyYXRlcyBvdmVyIGV2ZXJ5IHBvc3NpYmxlIHZhbHVl
IG9mIE4gYW5kIHBpY2tzIHRoZSBiZXN0IG9uZSwgYnV0Cj4gPj4gaXQgc2hvdWxkIG1ha2UgYSBn
b29kIGZhbGxiYWNrLgo+ID4+Cj4gPj4gNC4gVGhlIG5ldyBjb2RlIGFsbG93cyBmb3IgcGxhdGZv
cm1zIHRoYXQga25vdyB0aGV5IG1ha2UgYSBjbG9jayByYXRlCj4gPj4gc2xpZ2h0bHkgZGlmZmVy
ZW50bHkgdG8gcGljayBkaWZmZXJlbnQgTi9DVFMgdmFsdWVzLiAgRm9yIGluc3RhbmNlIG9uCj4g
Pj4gcmszMjg4IHdlIGNhbiBtYWtlIDI1LDE3Niw0NzEgSHogaW5zdGVhZCBvZiAyNSwxNzQsODI1
LjE3NDguLi4gSHoKPiA+PiAoMjUuMiBNSHogLyAxLjAwMSkuICBBIGZ1dHVyZSBwYXRjaCB0byB0
aGUgcmszMjg4IHBsYXRmb3JtIGNvZGUgY291bGQKPiA+PiBlbmFibGUgc3VwcG9ydCBmb3IgdGhp
cyBjbG9jayByYXRlIGFuZCBzcGVjaWZ5IHRoZSBOL0NUUyB0aGF0IHdvdWxkIGJlCj4gPj4gaWRl
YWwuCj4gPj4KPiA+PiBOT1RFOiB0aGUgb2RkZXN0IHBhcnQgb2YgdGhpcyBwYXRjaCBjb21lcyBh
Ym91dCBiZWNhdXNlIGNvbXB1dGluZyB0aGUKPiA+PiBpZGVhbCBOL0NUUyBtZWFucyBrbm93aW5n
IHRoZSBfZXhhY3RfIGNsb2NrIHJhdGUsIG5vdCBhIHJvdW5kZWQKPiA+PiB2ZXJzaW9uIG9mIGl0
LiAgVGhlIGRybSBmcmFtZXdvcmsgbWFrZXMgdGhpcyBoYXJkZXIgYnkgcm91bmRpbmcgcmF0ZXMK
PiA+PiB0byBrSHosIGJ1dCBldmVuIGlmIGl0IGRpZG4ndCB0aGVyZSBtaWdodCBiZSBjYXNlcyB3
aGVyZSB0aGUgaWRlYWwKPiA+PiByYXRlIGNvdWxkIG9ubHkgYmUgY2FsY3VsYXRlZCBpZiB3ZSBr
bmV3IHRoZSByZWFsIChub24taW50ZWdyYWwpIHJhdGUuCj4gPj4gVGhpcyBtZWFucyB0aGF0IGlu
IGNhc2VzIHdoZXJlIHdlIGtub3cgKG9yIGJlbGlldmUpIHRoYXQgdGhlIHRydWUgcmF0ZQo+ID4+
IGlzIHNvbWV0aGluZyBvdGhlciB0aGFuIHRoZSByYXRlIHdlIGFyZSB0b2xkIGJ5IGRybS4KPiA+
Pgo+ID4+IFNpZ25lZC1vZmYtYnk6IERvdWdsYXMgQW5kZXJzb24gPGRpYW5kZXJzQGNocm9taXVt
Lm9yZz4KPiA+Cj4gPiBXaGljaCBidXMgaXMgdXNlZCBmb3IgYXVkaW8gdHJhbnNmZXIgb24geW91
ciBkZXZpY2U/IElmIGl0IGlzIEkyUywgd2hpY2ggaXMKPiA+IGNvbW1vbmx5IHVzZWQsIHRoZW4g
cGxlYXNlIGJlIGF3YXJlIG9mIHRoaXMgcGF0Y2g6Cj4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9hcmNoaXZlcy9kcmktZGV2ZWwvMjAxOS1KdW5lLzIyMTUzOS5odG1sCj4gPgo+ID4g
SXQgYXZvaWRzIGV4YWN0IE4vQ1RTIGNhbGN1bGF0aW9uIGJ5IGVuYWJsaW5nIGF1dG8gZGV0ZWN0
aW9uLiBJdCBpcyB3ZWxsCj4gPiB0ZXN0ZWQgb24gbXVsdGlwbGUgU29DcyBmcm9tIEFsbHdpbm5l
ciwgQW1sb2dpYyBhbmQgUm9ja2NoaXAuCj4gPgo+ID4gQmVzdCByZWdhcmRzLAo+ID4gSmVybmVq
Cj4gPgo+ID4KPiBIaSBEb3VnbGFzLAo+Cj4gVGhhbmtzIGZvciB5b3VyIHdvcmsgIQo+Cj4gSWYg
eW91IGNvdWxkIHJlYmFzZSBvbiB0b3Agb2YgaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
YXJjaGl2ZXMvZHJpLWRldmVsLzIwMTktSnVuZS8yMjE1MzkuaHRtbAo+IHNvIHdlIGNhbiBtYWtl
IHVzZSBvZiB5b3VyIGV4dGVuZGVkIE4gdGFibGUgd2l0aCBhdXRvbWF0aWMgQ1RTIEhXIGNhbGN1
bGF0aW9uLCBpdCB3b3VsZCBiZSBncmVhdCAhCgpUaGFua3MgdG8geW91IGFuZCBKZXJuZWogZm9y
IHBvaW50aW5nIG1lIGF0IHRoaXMuICBJdCBzZWVtcyBsaWtlbHkKdGhhdCBwYXRjaCBieSBpdHNl
bGYgd291bGQgc29sdmUgcHJvYmxlbXMgd2UgZm91bmQgYW5kIEknbGwgcGljayB0aGF0CmludG8g
bXkgdHJlZS4KClByb2JhYmx5IG15IHBhdGNoIGlzIG5vIGxvbmdlciBxdWl0ZSBhcyB1c2VmdWwg
YXRvcCB5b3VycywgYnV0IEknbGwKc3RpbGwgcG9zdCBhIHYyIHNpbmNlIChpbiB0aGVvcnkpIGZv
bGtzIHRoYXQgYXJlbid0IHVzaW5nIEkyUyBtaWdodApmaW5kIGl0IHVzZWZ1bC4gIEkgZ3Vlc3Mg
aXQncyBhbHNvIHBvc3NpYmxlICg/KSB0aGF0IHBpY2tpbmcgYW4gTgp3aGVyZSBDVFMgd291bGQg
YmUgYWJsZSB0byBiZSBpbnRlZ3JhbCBoYXMgc29tZSB0eXBlIG9mIGFkdmFudGFnZSwKZXZlbiB3
aXRoIGF1dG8gQ1RTPwoKCj4gRmluYWxseSBjb3VsZCB5b3UgYWRkIHRoZSBwbGF0X2RhdGEgdG1k
cyB0YWJsZSBhcyBhIHNlcGFyYXRlIHBhdGNoIHRvIHNpbXBsaWZ5IHJldmlldyA/CgpTdXJlLiAg
SSdtIHByb2JhYmx5IG5vdCBnb2luZyB0byBiZSBhYmxlIHRvIHBvc3QgdGhlIHBhdGNoIHRvIGFj
dHVhbGx5CnVzZSBpdCwgc28gSSBndWVzcyB3ZSBjb3VsZCBqdXN0IG5vdCBib3RoZXIgYXBwbHlp
bmcgdGhlIDJuZCBwYXRjaAp1bmxlc3Mgc29tZW9uZSBldmVyIG5lZWRzIGl0LgoKLURvdWcKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
