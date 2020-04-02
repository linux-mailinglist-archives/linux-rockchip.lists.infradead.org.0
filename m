Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9B319BEC0
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 11:37:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P6ho0JkLt0u3Jv2BNenJF3OkWEauXvDdNc+Vn8Hc0kA=; b=tNcN8DXs3q6B1h
	JnpQShoO1mQgrg7xSnx8RUxJg1tz+p6ICw9LanrFrheaZbaFxkGumqjl2XPiy0h+GZ8tLleHPUQbI
	oHeqikGDvuHPmObvtAcXOY5829t+UvKD/tHnXVumSjhe917cNKeINnGCF0R1Zm9oLbsc1xWI+1jjE
	bxa1fdbk/Asoc/EClasjdFFM1puURaQg95qGxqEWVBf6l942dEk+Gx2DPgfd+cRLRZKyiqnRcy4lB
	ipRCXcRP6+VhHFraiWwKKP+GZAaO9HsX+ayj1lvUchTa/TQDfFXH/qACdVgCFnH8KY+ePmGAUWBSO
	CV+4DwynHxWAhdNHA8rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJwHm-0006qG-Jt; Thu, 02 Apr 2020 09:37:18 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJwHi-0006pC-Dv
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 09:37:16 +0000
Received: by mail-io1-xd43.google.com with SMTP id s15so2902596ioj.7
 for <linux-rockchip@lists.infradead.org>; Thu, 02 Apr 2020 02:37:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=BjzpxPrBhfjlH5LFQWpq1mPmz78cgJ4us59LIzEH72k=;
 b=e2lW3ArINdeihtS3uUM1sDcnhFDKkkRQBlg7y2vYOvPVjN3K5GqorBKeGxpTgXtncg
 un+2We7Ujd18RIfd1YEYmRetrfL1nPrFW6WJY2Xt6oo5k9/GFonsD1/85HFHyR5AAcE2
 hLL6+CxOfmi3O85huCNBvo0nKpK9/SKKeD0YM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=BjzpxPrBhfjlH5LFQWpq1mPmz78cgJ4us59LIzEH72k=;
 b=pPxVULoSDpbyHX9Zdd5CxJJcFmhdQ2meCf0JFFGVzFrC3yQ+qy/QZKzIrDAQB2r6Iu
 0fxiGdWLqriW14CxR6c7CYa36Mhow3C2VOp1sZBe9TG5r9fFcOBUeRdcAA4mGU/afuGX
 IA7nsjGVQBApPwkxordXZGnHaxBDBt82whh/tZUgWd1Xm2xrJC2TBFQDbFhSFIa83ecy
 uz3lCAkfbcQ8gCzmkNcOGM0P5/sFm5ez48mPFSAuuKw7eIpvw6qiK3M6zJ2kEO8BLrub
 Xi8uzTT0hD7r9OPOPX+qzqJSaUQs/fjjgJrTUnG2J1D82kO5uQJzPQkpswapt8lt6U2T
 fSUA==
X-Gm-Message-State: AGi0PuZfBFFNc9P6uhacASe3MONEK4n0W7QcyOjhuv+Yh2HnToU5+OGt
 yvksuheyaHPwvlCg39aHbsCwNRbW1bVnzbIaKJII0w==
X-Google-Smtp-Source: APiQypIsaRtiYLHmf2McxLGcRPU6fa3XuFPC9ZsfXGtkWB6M6T+FqNM6Gg6t28cX70L4vKj8Ur5vzhrqdNea9QDeARc=
X-Received: by 2002:a05:6602:2e07:: with SMTP id
 o7mr1906765iow.107.1585820232745; 
 Thu, 02 Apr 2020 02:37:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200330181613.29462-1-jagan@amarulasolutions.com>
 <20200330181613.29462-2-jagan@amarulasolutions.com>
 <016151d6786a0ea4@bloch.sibelius.xs4all.nl>
 <CAMty3ZCHTk5H60cNmUhfq=pNwBJ9Kc1KuGGb=gQFCp2SS3_1gw@mail.gmail.com>
 <103f3c97-e223-6718-bb08-0aa2395145a2@rock-chips.com>
In-Reply-To: <103f3c97-e223-6718-bb08-0aa2395145a2@rock-chips.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Thu, 2 Apr 2020 15:07:01 +0530
Message-ID: <CAMty3ZD7ofW1XhAWijmCEv7=Mxu7SzsfWLiLsU0yqLpF9d5wOQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] arm64: dts: rk3399-u-boot: Delete vop
 assigned-clocks/rates
To: Kever Yang <kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_023714_900071_F115A5A8 
X-CRM114-Status: GOOD (  22.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Anatolij Gustschin <agust@denx.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Simon Glass <sjg@chromium.org>, U-Boot-Denx <u-boot@lists.denx.de>,
 Suniel Mahesh <sunil@amarulasolutions.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Mark Kettenis <mark.kettenis@xs4all.nl>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgS2V2ZXIsCgpPbiBUaHUsIEFwciAyLCAyMDIwIGF0IDI6NDggUE0gS2V2ZXIgWWFuZyA8a2V2
ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4KPiBIaSBKYWdhbiwKPgo+IE9uIDIwMjAv
My8zMSDkuIvljYgxOjU5LCBKYWdhbiBUZWtpIHdyb3RlOgo+ID4gT24gVHVlLCBNYXIgMzEsIDIw
MjAgYXQgMTowNiBBTSBNYXJrIEtldHRlbmlzIDxtYXJrLmtldHRlbmlzQHhzNGFsbC5ubD4gd3Jv
dGU6Cj4gPj4+IEZyb206IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+
ID4+PiBDYzogc3VuaWxAYW1hcnVsYXNvbHV0aW9ucy5jb20sIHUtYm9vdEBsaXN0cy5kZW54LmRl
LAo+ID4+PiAgICAgICAgICBsaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnLCBsaW51
eC1hbWFydWxhQGFtYXJ1bGFzb2x1dGlvbnMuY29tLAo+ID4+PiAgICAgICAgICBKYWdhbiBUZWtp
IDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KPiA+Pj4gRGF0ZTogTW9uLCAzMCBNYXIgMjAy
MCAyMzo0NjoxMCArMDUzMAo+ID4+PiBDb250ZW50LVR5cGU6IHRleHQvcGxhaW47IGNoYXJzZXQ9
VVRGLTgKPiA+Pj4KPiA+Pj4gTGludXggc3VwcG9ydGluZyBhc3NpZ25lZC1jbG9ja3MgZm9yIFZP
UCBvbiByazMzOTkgYnkgYXNzdW1pbmcKPiA+Pj4gVS1Cb290IG5vdCBpbml0aWFsaXppbmcgaXQg
b24gdGhpcyBsaW51eCBjb21taXQ6Cj4gPj4+Cj4gPj4+IGNvbW1pdCA8NjE3ZjQ0NzJiZGQzPiAo
ImFybTY0OiBkdHM6IHJvY2tjaGlwOiBpbml0IHJrMzM5OSB2b3AgY2xvY2sgcmF0ZXMiKQo+ID4+
Pgo+ID4+PiBUaGVyZSBpcyBubyBzcGVjaWZpYyBuZWVkIHRvIGluaXRpYWxpemUgdGhlc2UgYXNz
aWduZWQgY2xvY2sKPiA+Pj4gaW4gVS1Cb290IGFzIHZpZGVvIGRyaXZlcnMgc3RpbGwgd29yayB3
aXRoIGRlZmF1bHQgYWNsayBhbmQKPiA+Pj4gaGNsayB2YWx1ZXMuIFNvLCB0aGVzZSBjbG9ja3Mg
YXJlIHNpbXBseSBub3Qgc3VwcG9ydGVkIGJ5IHJrMzM5OQo+ID4+PiBjbG9jayBkcml2ZXIuCj4g
Pj4+Cj4gPj4+IEJ1dCwgZHVyaW5nIHN0ZGlvIHByb2JlIG9mIHZpZGNvbnNvbGUsIHRoZSBkZXZp
Y2UgcHJvYmUKPiA+Pj4gd2lsbCB0cnkgdG8gY2hlY2sgd2hldGhlciB0aGUgYXNzaWduZWQgY2xv
Y2tzIG9uIHRoYXQgdmlkZW8KPiA+Pj4gY29uc29sZSBub2RlIGlzIGluaXRpYWxpemVkIG9yIG5v
dD8gYW5kIHJldHVybiBlcnJvciBpZiBub3QuCj4gPj4+Cj4gPj4+IFNvLCBkZWxldGUgdGhlc2Ug
cHJvcGVydHkgdmlhIC11LWJvb3QgZHRzaSBhcyB0aGVyZSBpcwo+ID4+PiBubyBzcGVjaWZpYyBu
ZWVkIGluIFUtQm9vdC4KPiA+PiBEZWxldGluZyB0aGVzZSBwcm9wZXJ0aWVzIGlzbid0IHZlcnkg
aGVscGZ1bCBhcyBpdCBtZWFucyB0aGUgVS1Cb290Cj4gPj4gZGV2aWNlIHRyZWUgY2FuIG5vIGxv
bmdlciBiZSB1c2VkIGJ5IHRoZSBrZXJuZWwuICBJc24ndCBpdCBhIGJldHRlcgo+ID4+IGlkZWEg
dG8gaW1wbGVtZW50IHRoZXNlIGNsb2NrcyBhcyBzdHVicyBpbiB0aGUgdS1ib290IGNsb2NrIGRy
aXZlcj8KPiA+IEkgZGlkIHRyeSB0aGlzIGJlZm9yZSBzb3J0aW5nIG91dCB0aGVzZSBjaGFuZ2Vz
LCBzZWVtcyBsaWtlIGl0Cj4gPiByZXF1aXJlcyBhIGJpdCBtb3JlIHR3ZWFraW5nIHRoZSBjbG9j
ayB3cnQgZGlzcGxheSBjb2RlLiBJIHJlYWxseQo+ID4gZGlkbid0IHNlZSBhbnkgdXNlIGNhc2Ug
YXMgb2Ygbm93IGZvciBqdXN0IHRvIHByaW50IHUtYm9vdCBsb2cgb24KPiA+IGRpc3BsYXkgb3V0
LCBhbmQgbW9yZSBvdmVyIHRoaXMgc3VwcG9ydCBoYXMgYmVlbiBicm9rZW4gc2luY2UgZnJvbQo+
ID4gcmVsZWFzZXMuIHNvIGJ5cGFzc2luZyB0aGVzZSBub2RlcyBjYW4gYmUgYSBzb2x1dGlvbnMg
Zm9yIG5vdy4KPgo+Cj4gSSBhZ3JlZSB3aXRoIE1hcmsgZm9yIG5vdCB0b3VjaCB0aGUgZHRzIGZp
cnN0LiBJIGRvbid0IGtub3cgdGhlIGRldGFpbAo+IG9mIGRpc3BsYXkgZHJpdmVyIGJ1dDoKPgo+
IC0gVGhlIHJrMzM5OSBkcml2ZXIgdXNlIHRvIHdvcmsgd2l0aG91dCB0b3VjaCBkdHMgZnJvbSBr
ZXJuZWw7Cj4KPiAtIHRoZSBjbG9jayBkcml2ZXIgaGF2ZSBhIHJrMzM5OV92b3Bfc2V0X2Nsaygp
IHdoaWNoIGRvZXMgbm90IGRlcGVuZHMgb24KPiBkdHMuCgpUaGUgZXhpc3RpbmcgdmlkZW8gZHJp
dmVycyBhcmUgd3JpdHRlbiBiYXNlZCBvbiB0aGUgcHVtYSBkdHMgYW5kIHRob3NlCmFyZSBub3Qg
aW5saW5lIHRvIExpbnV4IGR0cyBmaWxlcywgaS5lLiB0aGUgcmVhc29uIHRoZSBjb2RlIGlzIHB1
c2hlZApJIHRoaW5rLiBUaGUgcmVzdCBvZiByazMzOTkgZHRzaSBmaWxlcyBhcmUgbm93IGlubGlu
ZSB0byBMaW51eCBhcyBhbmQKZGlzcGxheSBvdXQgb24gdGhlc2UgYXJlIGJyb2tlbiBmcm9tIGxh
c3QgMiByZWxlYXNlcy4gc28gbXkgaWRlYSBpcyB0bwpyZXNvbHZlIHRoZSB0aGluZ3Mgb25lLWFm
dGVyLWFub3RoZXIgbGlrZQoxLiBNYWtlIGV4aXN0aW5nIHZpZGVvIHN0dWZmIHdvcmsgd2l0aCBh
bGwgcmszMzk5ICh0aGlzIHNlcmllcyBhbG9uZwp3aXRoIHRoaXMgcGF0Y2gpCjIuIERyb3AgdGhp
cyBwYXRjaCBjaGFuZ2UgYW5kIG1ha2UgdmlkZW8gZHJpdmVycyB3b3JraW5nIHcvbyBhbnkKZXhw
bGljaXQgY2hhbmdlcyBpbiBkdHMgbGlrZSB0aGlzIHBhdGNoIGRvZXMuCgpTaW5jZSBzdGVwIDIs
IHdvdWxkIHRha2UgdGltZSwgYW5kIHJlcXVpcmUgY2xvc2UgdGVzdGluZyBvZiBhbGwgYm9hcmRz
Ckkgd291bGQgbGlrZSB0byBwaWNrIHRoZSBleGlzdGluZyBzdHVmZiBmb3IgdGhlIHJlbGVhc2Uu
IE1hcmsgbXkgd29yZHMKdG8gZml4IHRoZSB0aGluZ3MgZm9yIHRoZSBuZXh0IHJlbGVhc2UuCgpK
YWdhbi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
