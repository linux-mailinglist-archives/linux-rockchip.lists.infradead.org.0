Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2F4100545
	for <lists+linux-rockchip@lfdr.de>; Mon, 18 Nov 2019 13:04:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=goDU9Ch6KdGGxAN6Aw486WnXX2EH5szhvkuvCxLl5zc=; b=Z+567yD+xpE37r
	vcKmSkiST2qVlCbcQCNMg6dWOuLjE4M/jQDsx9zFnByfYAYfp4z7QFcEAGBgcVRYByHPuyPtTut/0
	3w6XZwsxa/8rOD/gpobdiqVG+YcB0TnI3UqPLbbqC64nqlDXRE+VWEo591f60emEPDwV/0pr5QGdP
	CgZlIsFFCRUR33MQbrc9EoeXVdCMmVM6NKS1ey1vaDmJJ++kjtjt163I+xaHfLa4Zz2QhdzSatfSh
	BALv7mxLiQxy3oPHqzhFZb3wle2FcQpu/VnPSQP6D0qbFxfiqw93Q6TtgmZWymm/UivxqeSMzzCZP
	JUX16XgUV1DqZlcZ3j1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWflB-0004uI-D3; Mon, 18 Nov 2019 12:04:01 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWfkn-0004i3-PB
 for linux-rockchip@lists.infradead.org; Mon, 18 Nov 2019 12:03:39 +0000
Received: by mail-io1-xd41.google.com with SMTP id k13so18417602ioa.9
 for <linux-rockchip@lists.infradead.org>; Mon, 18 Nov 2019 04:03:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=mRS08DORIjerAzyI9KXWLJu2WpkCsOfpHMjNq/h7yb0=;
 b=KZ/4KNMjHoqrOJoYORlKqshRhtUEhUDtoW0GcVTwYNGXOYrD8OZsAmwMJnvle0dPpd
 5MOGRDtogu1TV/CTHG/Vtw1jc3PGk7nUeAWJMNn03e3kFpwC74S+VHCuOW85bOKa8zV8
 yhWvQjoi0ib8sRJgbZxnjcoEyyhH8LydmLp2U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=mRS08DORIjerAzyI9KXWLJu2WpkCsOfpHMjNq/h7yb0=;
 b=uA7bA9gyeKUvCn2qXRCgDHTIWTxGHJT05T+hz9Pq0mCW2xrqR1FMvXPvOxNocWAsV1
 c9tYZIA0T0GiIawT4xPSCcQo96aei2Y/2apigY8sd+USVIMBWyhcyZQPUhbaI9aeiyjr
 iBgRE5A/5gL/JJJkr2bD8fjOfrcHzb8w4PODSQZC3w86vbUJ28u00w5ZzZR+sDlqM547
 RM292pp1mRzE7eXOGh2lTnNqCd0D1FPbWJnljLasfLraw9oSqsotlEIdshV/0Yo/xRZg
 nxS6HWW+42DBgxSRZS33QDl/sdfJeRXWbWiXL7iJt9f6ESiuorDSqriShU4Hg/iohxWW
 7MrA==
X-Gm-Message-State: APjAAAX/kNt/QkN1h6RuUYFaZnhGdnj45gUEBu9uFdRQXqcCQK9M1Kfk
 9S9LnKk64xtUhsMh++/OZfMEU+5kp0RNuQkXz9mQrQ==
X-Google-Smtp-Source: APXvYqwH64WRV7lIHLiErNMdjQtH/35SCJ2iv0n5EnLC/pLDtMs+QtJuJ5rGqsy36+7r4px+8YXcEd4mFXmCZwqanh8=
X-Received: by 2002:a6b:ba87:: with SMTP id k129mr9134547iof.173.1574078616817; 
 Mon, 18 Nov 2019 04:03:36 -0800 (PST)
MIME-Version: 1.0
References: <075b3fa6-dab7-5fec-df68-b53f32bf061b@fivetechno.de>
 <2226540.xovL9aYQn6@diego>
 <CAMty3ZDwjv4ShpbAyQPWk9ewboFOK3nZO0s_QNty_m0hJKR76w@mail.gmail.com>
 <62bfaad5-cbd6-efbd-426b-3da681fcd160@fivetechno.de>
In-Reply-To: <62bfaad5-cbd6-efbd-426b-3da681fcd160@fivetechno.de>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Mon, 18 Nov 2019 17:33:25 +0530
Message-ID: <CAMty3ZBuPRA3d=oMyCgYpA-i_FPOVJd3FeSnNBYE49o-h=Vq7w@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Split rk3399-roc-pc for with and
 without mezzanine board.
To: Markus Reichl <m.reichl@fivetechno.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_040337_961491_35858DD4 
X-CRM114-Status: GOOD (  22.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgTWFya3VzLAoKT24gTW9uLCBOb3YgMTgsIDIwMTkgYXQgNToyNyBQTSBNYXJrdXMgUmVpY2hs
IDxtLnJlaWNobEBmaXZldGVjaG5vLmRlPiB3cm90ZToKPgo+IEhpIEphZ2FuLAo+Cj4gQW0gMTgu
MTEuMTkgdW0gMTI6NDQgc2NocmllYiBKYWdhbiBUZWtpOgo+ID4gT24gTW9uLCBOb3YgNCwgMjAx
OSBhdCA1OjQyIFBNIEhlaWtvIFN0w7xibmVyIDxoZWlrb0BzbnRlY2guZGU+IHdyb3RlOgo+ID4+
Cj4gPj4gSGkgTWFya3VzLAo+ID4+Cj4gPj4gQW0gRnJlaXRhZywgMS4gTm92ZW1iZXIgMjAxOSwg
MTc6NTQ6MjMgQ0VUIHNjaHJpZWIgTWFya3VzIFJlaWNobDoKPiA+PiA+IEZvciByazMzOTktcm9j
LXBjIGlzIGEgbWV6emFuaW5lIGJvYXJkIGF2YWlsYWJsZSB0aGF0IGNhcnJpZXMgTS4yIGFuZAo+
ID4+ID4gUE9FIGludGVyZmFjZXMuIFVzZSBpdCB3aXRoIGEgc2VwYXJhdGUgZHRzLgo+ID4+ID4K
PiA+PiA+IFNpZ25lZC1vZmYtYnk6IE1hcmt1cyBSZWljaGwgPG0ucmVpY2hsQGZpdmV0ZWNobm8u
ZGU+Cj4gPj4gPiAtLS0KPiA+PiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2Vm
aWxlICAgICAgICAgfCAgIDEgKwo+ID4+ID4gIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkt
cm9jLXBjLW1lenouZHRzICB8ICA1MiArKwo+ID4+ID4gIC4uLi9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazMzOTktcm9jLXBjLmR0cyB8IDc1NyArLS0tLS0tLS0tLS0tLS0tLQo+ID4+ID4gIC4u
Li9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jLXBjLmR0c2kgICAgICB8IDc2NyArKysrKysr
KysrKysrKysrKysKPiA+PiA+ICA0IGZpbGVzIGNoYW5nZWQsIDgyMSBpbnNlcnRpb25zKCspLCA3
NTYgZGVsZXRpb25zKC0pCj4gPj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvYy1wYy1tZXp6LmR0cwo+ID4+ID4gIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2MtcGMuZHRzaQo+
ID4+ID4KPiA+PiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01h
a2VmaWxlIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZQo+ID4+ID4gaW5k
ZXggYTk1OTQzNGFkNDZlLi44MGVlOWYxZmM1ZjUgMTAwNjQ0Cj4gPj4gPiAtLS0gYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlCj4gPj4gPiArKysgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlCj4gPj4gPiBAQCAtMjgsNiArMjgsNyBAQCBkdGItJChD
T05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszMzk5LW5hbm9waS1uZW80LmR0Ygo+ID4+ID4gIGR0
Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazMzOTktb3JhbmdlcGkuZHRiCj4gPj4gPiAg
ZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzM5OS1wdW1hLWhhaWtvdS5kdGIKPiA+
PiA+ICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszMzk5LXJvYy1wYy5kdGIKPiA+
PiA+ICtkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszMzk5LXJvYy1wYy1tZXp6LmR0
Ygo+ID4+ID4gIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazMzOTktcm9jay1waS00
LmR0Ygo+ID4+ID4gIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazMzOTktcm9jazk2
MC5kdGIKPiA+PiA+ICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszMzk5LXJvY2tw
cm82NC5kdGIKPiA+PiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzM5OS1yb2MtcGMtbWV6ei5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzM5OS1yb2MtcGMtbWV6ei5kdHMKPiA+PiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPj4gPiBp
bmRleCAwMDAwMDAwMDAwMDAuLmVlNzc2NzdkMmNmMgo+ID4+ID4gLS0tIC9kZXYvbnVsbAo+ID4+
ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jLXBjLW1lenou
ZHRzCj4gPj4gPiBAQCAtMCwwICsxLDUyIEBACj4gPj4gPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IChHUEwtMi4wKyBPUiBNSVQpCj4gPj4gPiArLyoKPiA+PiA+ICsgKiBDb3B5cmlnaHQg
KGMpIDIwMTcgVC1DaGlwIEludGVsbGlnZW50IFRlY2hub2xvZ3kgQ28uLCBMdGQKPiA+PiA+ICsg
KiBDb3B5cmlnaHQgKGMpIDIwMTkgTWFya3VzIFJlaWNobCA8bS5yZWljaGxAZml2ZXRlY2huby5k
ZT4KPiA+PiA+ICsgKi8KPiA+PiA+ICsKPiA+PiA+ICsvZHRzLXYxLzsKPiA+PiA+ICsjaW5jbHVk
ZSAicmszMzk5LXJvYy1wYy5kdHNpIgo+ID4+ID4gKwo+ID4+ID4gKy8gewo+ID4+ID4gKyAgICAg
bW9kZWwgPSAiRmlyZWZseSBST0MtUkszMzk5LVBDIE1lenphbmluZSBCb2FyZCI7Cj4gPj4gPiAr
ICAgICBjb21wYXRpYmxlID0gImZpcmVmbHkscm9jLXJrMzM5OS1wYyIsICJyb2NrY2hpcCxyazMz
OTkiOwo+ID4+Cj4gPj4gZGlmZmVyZW50IGJvYXJkIHdpdGggc2FtZSBjb21wYXRpYmxlIGlzbid0
IHBvc3NpYmxlLCBzbwo+ID4+IHlvdSdsbCBuZWVkIGEgbmV3IGNvbXBhdGlibGUgZm9yIGl0IGFu
ZCBhZGQgYSBuZXcgbGluZSB0bwo+ID4+IHRoZSByb2MtcGMgZW50cnkgaW4KPiA+PiAgICAgICAg
IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbAo+ID4+
Cj4gPj4gRWl0aGVyIHlvdSBzZWUgaXQgYXMKPiA+PiAtIGEgYm9hcmQgKyBoYXQsIHVzaW5nIGR0
IG92ZXJsYXkgYW5kIHNhbWUgY29tcGF0aWJsZQo+ID4+IC0gYSBjb21wbGV0ZWx5IHNlcGFyYXRl
IGJvYXJkLCB3aGljaCBuZWVkcyBhIHNlcGFyYXRlCj4gPj4gICBjb21wYXRpYmxlIGFzIHdlbGwK
PiA+Pgo+ID4+IEFuZCBhcyBkaXNjdXNzZWQgaW4gdGhlIHByZXZpb3VzIHRocmVhZAo+ID4+IGh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL3BpcGVybWFpbC9saW51eC1yb2NrY2hpcC8yMDE5LU5v
dmVtYmVyLzAyNzU5Mi5odG1sCj4gPj4gYnV0IGFsc28gaW4gSmFnYW4ncyByZXNwb25zZSB0aGF0
IHJlYWxseSBpcyBzb21laG93IGEgZ3JleSBhcmVhCj4gPj4gZm9yIHNvbWV0aGluZyByZWxhdGl2
ZWx5IHN0YXRpYyBhcyB0aGUgTS4yIGV4dGVuc2lvbi4KPiA+Cj4gPiBTb3JyeSBmb3IgbGF0ZSBy
ZXNwb25zZSBvbiB0aGlzLiBJIHN0aWxsIHRoaW5rIHRoYXQgdGhlICJvdmVybGF5IHdvdWxkCj4g
PiBiZSBhIGJldHRlciBzdWl0ZSIgdGhhbiBoYXZpbmcgc2VwYXJhdGUgZHRzLCBzaW5jZSBpdCBp
cyBIQVQgd2hpY2ggaXMKPiA+IG9wdGlvbmFsIHRvIGluc2VydCBhbmQgaGF2ZSBwb3NzaWJpbGl0
eSBvZiBoYXZpbmcgYW5vdGhlciBIQVQgaWYgaXQKPiA+IHJlYWxseSBmaXQgaW50byBpdC4KPiA+
Cj4gPiBDb21tZW50cz8KPiBQcmVzZW50bHkgbm8gb3RoZXIgZXh0ZW5zaW9uIGJvYXJkIGRvZXMg
ZXhpc3QsIEkgZG9uJ3QgZXhwZWN0IG9uZS4KPgo+IEkgdXNlIGl0IHdpdGggcm9vdGZzIG9uIE5W
TUUgb24gdGhlIG1lenphbmluZSBib2FyZC4KPiBJdCBpcyBjb252ZW5pZW50IHRvIGhhdmUgdGhl
IE5WTUUgdXAgYmVmb3JlIGdvaW5nIHRvIHVzZXIgc3BhY2UuCj4KPiBUaGUgYm9hcmQgaGFzIFNQ
SS1OT1IgTVREIHN0b3JhZ2UgdG8gaG9zdCBVLUJvb3QuCj4gSW4gZnV0dXJlIFUtQm9vdCBjb3Vs
ZCBib290IGZyb20gTlZNRSBkaXJlY3RseSB3aXRob3V0IG5lZWRpbmcKPiBhbiBTRCBvciBNTUMg
dG8gaG9zdCB0aGUgYm9vdCBrZXJuZWwuCgpUaGlzIGlzIHB1cmVseSBhIHVzZS1jYXNlIHNjZW5h
cmlvLCBJIGNhbiBzdGlsbCB1c2UgU1BJLU5PUiBhbG9uZSB3aXRoCmZpbmFsIGJvb3QgdmlhIGlu
aXRyYW1mcyBhbmQgdXNlIG9uIGJvYXJkIHN0b3JhZ2UgcGVyaXBoZXJhbHMgZm9yCmRpc3RyaWJ1
dGlvbnMgc2VwYXJhdGVseS4gV2hhdCBJJ20gc2F5aW5nIHdlIGNhbiBoYXZlIG92ZXJsYXkgZm9y
CnRob3NlIGFyZSBvcHRpb25hbCBiYXNlZCBvbiB0aGUgdXNlciBpbnN0ZWFkIG9mIG1ha2luZyBp
dCBmb3IKY29uc3RhbnQuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
