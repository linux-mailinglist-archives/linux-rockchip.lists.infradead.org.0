Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A9F19C058
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 13:43:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zy6rnpkmb0HB7D34ZTz2M4HQdz7oYZIL3iP+7ZqrEVQ=; b=PTZDBFJBJYZhUX
	3vkj6dBj2E03K5QynaxrG3kB9TeK30jMjuaSgGCGxBUwvLZRpcASHr7dccPa6dujyiuIdz+jikDWT
	Kt6K7BmjqdUgTcBmqDUaSRfscsawPD9W6e/EF2Grdu/8IaITKKEh5B5M46qLMqyrvj6EUSwOBjsGj
	XoyLyVe+fbH/NJ9xHqejSCrGti3SGRPudEafAMNVOGpz+VO9+aM7nuhrJpk88+HKrEZ4ZtWORGqEG
	aPR71iDZneMrY1A4mUq4Rui2+sITKXzr48R98jkb7mcuwX+WC8j1E6Fol+jFn/3rSyOYq8/9TKSNR
	VO6X9yrKsl15pyzPpDYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJyFg-0002ZO-R3; Thu, 02 Apr 2020 11:43:16 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJyFb-0002Yv-Vx
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 11:43:15 +0000
Received: by mail-io1-xd43.google.com with SMTP id o127so3289764iof.0
 for <linux-rockchip@lists.infradead.org>; Thu, 02 Apr 2020 04:43:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ql8xxOMUTQdRoxWoaibTLiZbrZULSraQDAp82VStMfQ=;
 b=jpPYXO7vapcLlEgJ4Cn9BKA84AAOIVFY35W737Y6eLYoCA5KCiIiSsbP/kAK7gtJvq
 rBE9TVUHWKmXQQ/M3IJwkqkXzDKUKWZ5A5BYfe0OnCmyJEtGCOx+Jp6Z2fD4XdkUuNN4
 jx0INuR9T1zNEwVw28bmdaUOTpj1gxM4ovVZw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ql8xxOMUTQdRoxWoaibTLiZbrZULSraQDAp82VStMfQ=;
 b=tPPTwB0uUP55plPNLgOJvn9RUGiGAOOvKCMahleSr5/o2p1sE4gMeHDVJPf6oOnfi8
 510D+n+KbrNE/WfbLoGNDo/AhWrFsELuelUaj9rIV1XfpOjzbWzAppq4SJhyLBQhOqCs
 /jvbIw4oeN5rAZUhlkrNQdGL2sCI2M4uLRUfDLQ+0CWSSPCUoL9Z4BGgw0bISS3SGdmt
 7JF5qyYnesMNBOfCyBp80/y0ykldyam/+9uMqzCYmrDHWS/Fg8M5CNowu9URuDtydc+J
 CEs4o1IF3FFfOwQc5i5W/2lC7N02mWqRFWtHBNHCjv8LciY1uqhtkodwaCWKP8qu08s+
 k91Q==
X-Gm-Message-State: AGi0PuZy9Lc1qxia4f3dUz0z+Koma4oupKIm9qg3rbJ2kBnENi4GGQiL
 VWyxCzXpVew9KsAOaFjQPm6nfkIxarHu7ZWfucgdUPze
X-Google-Smtp-Source: APiQypIkGHkwA/FNrVPNWdoiyeLzbKiD2M5Q09YQCbMUA9GelwmOk3pDkaKu0DGxLP9dGZRp1/U9YHrbI+ERAbVYUd8=
X-Received: by 2002:a05:6638:348:: with SMTP id
 x8mr2785810jap.103.1585827790479; 
 Thu, 02 Apr 2020 04:43:10 -0700 (PDT)
MIME-Version: 1.0
References: <20200330181613.29462-1-jagan@amarulasolutions.com>
 <20200330181613.29462-2-jagan@amarulasolutions.com>
 <016151d6786a0ea4@bloch.sibelius.xs4all.nl>
 <CAMty3ZCHTk5H60cNmUhfq=pNwBJ9Kc1KuGGb=gQFCp2SS3_1gw@mail.gmail.com>
 <103f3c97-e223-6718-bb08-0aa2395145a2@rock-chips.com>
 <CAMty3ZD7ofW1XhAWijmCEv7=Mxu7SzsfWLiLsU0yqLpF9d5wOQ@mail.gmail.com>
 <01615b08caa99d65@bloch.sibelius.xs4all.nl>
In-Reply-To: <01615b08caa99d65@bloch.sibelius.xs4all.nl>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Thu, 2 Apr 2020 17:12:59 +0530
Message-ID: <CAMty3ZCYbPfesTxEjmpD2M9fT3pOfK1R3L-v0esVMFhe8PHsAA@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] arm64: dts: rk3399-u-boot: Delete vop
 assigned-clocks/rates
To: Mark Kettenis <mark.kettenis@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_044312_031047_526C1BB7 
X-CRM114-Status: GOOD (  28.18  )
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
Cc: Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>,
 U-Boot-Denx <u-boot@lists.denx.de>, Suniel Mahesh <sunil@amarulasolutions.com>,
 Anatolij Gustschin <agust@denx.de>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gVGh1LCBBcHIgMiwgMjAyMCBhdCAzOjQ4IFBNIE1hcmsgS2V0dGVuaXMgPG1hcmsua2V0dGVu
aXNAeHM0YWxsLm5sPiB3cm90ZToKPgo+ID4gRnJvbTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVs
YXNvbHV0aW9ucy5jb20+Cj4gPiBEYXRlOiBUaHUsIDIgQXByIDIwMjAgMTU6MDc6MDEgKzA1MzAK
PiA+Cj4gPiBIaSBLZXZlciwKPiA+Cj4gPiBPbiBUaHUsIEFwciAyLCAyMDIwIGF0IDI6NDggUE0g
S2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4gPiA+Cj4gPiA+
IEhpIEphZ2FuLAo+ID4gPgo+ID4gPiBPbiAyMDIwLzMvMzEg5LiL5Y2IMTo1OSwgSmFnYW4gVGVr
aSB3cm90ZToKPiA+ID4gPiBPbiBUdWUsIE1hciAzMSwgMjAyMCBhdCAxOjA2IEFNIE1hcmsgS2V0
dGVuaXMgPG1hcmsua2V0dGVuaXNAeHM0YWxsLm5sPiB3cm90ZToKPiA+ID4gPj4+IEZyb206IEph
Z2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+ID4gPiA+Pj4gQ2M6IHN1bmls
QGFtYXJ1bGFzb2x1dGlvbnMuY29tLCB1LWJvb3RAbGlzdHMuZGVueC5kZSwKPiA+ID4gPj4+ICAg
ICAgICAgIGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcsIGxpbnV4LWFtYXJ1bGFA
YW1hcnVsYXNvbHV0aW9ucy5jb20sCj4gPiA+ID4+PiAgICAgICAgICBKYWdhbiBUZWtpIDxqYWdh
bkBhbWFydWxhc29sdXRpb25zLmNvbT4KPiA+ID4gPj4+IERhdGU6IE1vbiwgMzAgTWFyIDIwMjAg
MjM6NDY6MTAgKzA1MzAKPiA+ID4gPj4+IENvbnRlbnQtVHlwZTogdGV4dC9wbGFpbjsgY2hhcnNl
dD1VVEYtOAo+ID4gPiA+Pj4KPiA+ID4gPj4+IExpbnV4IHN1cHBvcnRpbmcgYXNzaWduZWQtY2xv
Y2tzIGZvciBWT1Agb24gcmszMzk5IGJ5IGFzc3VtaW5nCj4gPiA+ID4+PiBVLUJvb3Qgbm90IGlu
aXRpYWxpemluZyBpdCBvbiB0aGlzIGxpbnV4IGNvbW1pdDoKPiA+ID4gPj4+Cj4gPiA+ID4+PiBj
b21taXQgPDYxN2Y0NDcyYmRkMz4gKCJhcm02NDogZHRzOiByb2NrY2hpcDogaW5pdCByazMzOTkg
dm9wIGNsb2NrIHJhdGVzIikKPiA+ID4gPj4+Cj4gPiA+ID4+PiBUaGVyZSBpcyBubyBzcGVjaWZp
YyBuZWVkIHRvIGluaXRpYWxpemUgdGhlc2UgYXNzaWduZWQgY2xvY2sKPiA+ID4gPj4+IGluIFUt
Qm9vdCBhcyB2aWRlbyBkcml2ZXJzIHN0aWxsIHdvcmsgd2l0aCBkZWZhdWx0IGFjbGsgYW5kCj4g
PiA+ID4+PiBoY2xrIHZhbHVlcy4gU28sIHRoZXNlIGNsb2NrcyBhcmUgc2ltcGx5IG5vdCBzdXBw
b3J0ZWQgYnkgcmszMzk5Cj4gPiA+ID4+PiBjbG9jayBkcml2ZXIuCj4gPiA+ID4+Pgo+ID4gPiA+
Pj4gQnV0LCBkdXJpbmcgc3RkaW8gcHJvYmUgb2YgdmlkY29uc29sZSwgdGhlIGRldmljZSBwcm9i
ZQo+ID4gPiA+Pj4gd2lsbCB0cnkgdG8gY2hlY2sgd2hldGhlciB0aGUgYXNzaWduZWQgY2xvY2tz
IG9uIHRoYXQgdmlkZW8KPiA+ID4gPj4+IGNvbnNvbGUgbm9kZSBpcyBpbml0aWFsaXplZCBvciBu
b3Q/IGFuZCByZXR1cm4gZXJyb3IgaWYgbm90Lgo+ID4gPiA+Pj4KPiA+ID4gPj4+IFNvLCBkZWxl
dGUgdGhlc2UgcHJvcGVydHkgdmlhIC11LWJvb3QgZHRzaSBhcyB0aGVyZSBpcwo+ID4gPiA+Pj4g
bm8gc3BlY2lmaWMgbmVlZCBpbiBVLUJvb3QuCj4gPiA+ID4+IERlbGV0aW5nIHRoZXNlIHByb3Bl
cnRpZXMgaXNuJ3QgdmVyeSBoZWxwZnVsIGFzIGl0IG1lYW5zIHRoZSBVLUJvb3QKPiA+ID4gPj4g
ZGV2aWNlIHRyZWUgY2FuIG5vIGxvbmdlciBiZSB1c2VkIGJ5IHRoZSBrZXJuZWwuICBJc24ndCBp
dCBhIGJldHRlcgo+ID4gPiA+PiBpZGVhIHRvIGltcGxlbWVudCB0aGVzZSBjbG9ja3MgYXMgc3R1
YnMgaW4gdGhlIHUtYm9vdCBjbG9jayBkcml2ZXI/Cj4gPiA+ID4gSSBkaWQgdHJ5IHRoaXMgYmVm
b3JlIHNvcnRpbmcgb3V0IHRoZXNlIGNoYW5nZXMsIHNlZW1zIGxpa2UgaXQKPiA+ID4gPiByZXF1
aXJlcyBhIGJpdCBtb3JlIHR3ZWFraW5nIHRoZSBjbG9jayB3cnQgZGlzcGxheSBjb2RlLiBJIHJl
YWxseQo+ID4gPiA+IGRpZG4ndCBzZWUgYW55IHVzZSBjYXNlIGFzIG9mIG5vdyBmb3IganVzdCB0
byBwcmludCB1LWJvb3QgbG9nIG9uCj4gPiA+ID4gZGlzcGxheSBvdXQsIGFuZCBtb3JlIG92ZXIg
dGhpcyBzdXBwb3J0IGhhcyBiZWVuIGJyb2tlbiBzaW5jZSBmcm9tCj4gPiA+ID4gcmVsZWFzZXMu
IHNvIGJ5cGFzc2luZyB0aGVzZSBub2RlcyBjYW4gYmUgYSBzb2x1dGlvbnMgZm9yIG5vdy4KPiA+
ID4KPiA+ID4KPiA+ID4gSSBhZ3JlZSB3aXRoIE1hcmsgZm9yIG5vdCB0b3VjaCB0aGUgZHRzIGZp
cnN0LiBJIGRvbid0IGtub3cgdGhlIGRldGFpbAo+ID4gPiBvZiBkaXNwbGF5IGRyaXZlciBidXQ6
Cj4gPiA+Cj4gPiA+IC0gVGhlIHJrMzM5OSBkcml2ZXIgdXNlIHRvIHdvcmsgd2l0aG91dCB0b3Vj
aCBkdHMgZnJvbSBrZXJuZWw7Cj4gPiA+Cj4gPiA+IC0gdGhlIGNsb2NrIGRyaXZlciBoYXZlIGEg
cmszMzk5X3ZvcF9zZXRfY2xrKCkgd2hpY2ggZG9lcyBub3QgZGVwZW5kcyBvbgo+ID4gPiBkdHMu
Cj4gPgo+ID4gVGhlIGV4aXN0aW5nIHZpZGVvIGRyaXZlcnMgYXJlIHdyaXR0ZW4gYmFzZWQgb24g
dGhlIHB1bWEgZHRzIGFuZCB0aG9zZQo+ID4gYXJlIG5vdCBpbmxpbmUgdG8gTGludXggZHRzIGZp
bGVzLCBpLmUuIHRoZSByZWFzb24gdGhlIGNvZGUgaXMgcHVzaGVkCj4gPiBJIHRoaW5rLiBUaGUg
cmVzdCBvZiByazMzOTkgZHRzaSBmaWxlcyBhcmUgbm93IGlubGluZSB0byBMaW51eCBhcyBhbmQK
PiA+IGRpc3BsYXkgb3V0IG9uIHRoZXNlIGFyZSBicm9rZW4gZnJvbSBsYXN0IDIgcmVsZWFzZXMu
IHNvIG15IGlkZWEgaXMgdG8KPiA+IHJlc29sdmUgdGhlIHRoaW5ncyBvbmUtYWZ0ZXItYW5vdGhl
ciBsaWtlCj4gPiAxLiBNYWtlIGV4aXN0aW5nIHZpZGVvIHN0dWZmIHdvcmsgd2l0aCBhbGwgcmsz
Mzk5ICh0aGlzIHNlcmllcyBhbG9uZwo+ID4gd2l0aCB0aGlzIHBhdGNoKQo+ID4gMi4gRHJvcCB0
aGlzIHBhdGNoIGNoYW5nZSBhbmQgbWFrZSB2aWRlbyBkcml2ZXJzIHdvcmtpbmcgdy9vIGFueQo+
ID4gZXhwbGljaXQgY2hhbmdlcyBpbiBkdHMgbGlrZSB0aGlzIHBhdGNoIGRvZXMuCj4gPgo+ID4g
U2luY2Ugc3RlcCAyLCB3b3VsZCB0YWtlIHRpbWUsIGFuZCByZXF1aXJlIGNsb3NlIHRlc3Rpbmcg
b2YgYWxsIGJvYXJkcwo+ID4gSSB3b3VsZCBsaWtlIHRvIHBpY2sgdGhlIGV4aXN0aW5nIHN0dWZm
IGZvciB0aGUgcmVsZWFzZS4gTWFyayBteSB3b3Jkcwo+ID4gdG8gZml4IHRoZSB0aGluZ3MgZm9y
IHRoZSBuZXh0IHJlbGVhc2UuCj4KPiBGYWlyIGVub3VnaC4gIEkgZG9uJ3QgdGhpbmsgZml4aW5n
IHRoZSBpc3N1ZSBpcyB0b28gZGlmZmljdWx0LCBidXQgaXQKPiBpcyBiZXR0ZXIgdG8gZG8gdGhl
c2UgdGhpbmdzIGluIHNtYWxsIHN0ZXBzIGFueXdheS4KCkkgaGF2ZSBtYW5hZ2VkIHRvIGZpeCB0
aGlzIHZpYSBjbG9jayBkcml2ZXIod2hpY2ggc2VlbXMgbW9yZQpyZWFzb25hYmxlIGFzIHBlciBL
ZXZlciksIHNvIHRoaXMgaXMgZHJvcHBlZCBpbiB2My4gdGhhbmtzIGZvcgpub3RpY2luZy4KCkph
Z2FuLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
