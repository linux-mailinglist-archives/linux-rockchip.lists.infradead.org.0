Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E663BE01AF
	for <lists+linux-rockchip@lfdr.de>; Tue, 22 Oct 2019 12:10:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oaFfG737zcCHOa1MRXhGLD0iD4jqW/dWWEM1YjUgo6I=; b=SyGF/NsUgqLa6R
	XU2LNGiMtN+wbycZOS+hZtmYc3JTjEqFkN4v43bCucv7iqzfy3iPzKUh2ftHbH7hWgdEVMvPgQ6At
	HAPVBQmTLW3peAzbhe0AwgTCmnrIcnQ2pd4S7OnVFUSCUwstQd34Hm0pkE/KruL4ZrzIAgp++s4F0
	0KccZTPdlKMx+sg0mqfCMb6Pd/PHNRXJqUEWsW613uveHKYv4GGRjUXEE84fDAtgBIWspYss28UBj
	9VZlyxouB2hydXZ+vuWfFLWF9sEWQMbljniRwA5rnEAeU8VeJsIYwyRg8AsEht0Qf9JJ7G/XeT1eS
	CiPKyVnhiadA39FmRplg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMr7e-0001Kp-Jc; Tue, 22 Oct 2019 10:10:38 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMr7a-0001Jm-CM
 for linux-rockchip@lists.infradead.org; Tue, 22 Oct 2019 10:10:36 +0000
Received: by mail-il1-x141.google.com with SMTP id u1so14844114ilq.12
 for <linux-rockchip@lists.infradead.org>; Tue, 22 Oct 2019 03:10:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=bwnve/+630bQaWSyJEqccFG7ntUNyXGx7kaAxs5IceY=;
 b=gICc+5Mhjspw0aS/492XhCsFrKYAuDXZkXee1H00VIIZU9m3L3MsLKN6+A/awZbbOi
 omcWcWVttcJ/n7yB1QfGEDpZ2Ym4ZkBmL9FOZXGwyi9bxcDouLsY1LX7n+sQTqft4bBI
 0+YW4Lxoub8f2H3tFOEBDcM1KfWHffZqlF9C4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=bwnve/+630bQaWSyJEqccFG7ntUNyXGx7kaAxs5IceY=;
 b=okRhLOEEPPYBVxrEPnHSHtZBuhe9kwe20RUvd9thqNCQP/Fn8fDAnqgADGKeuxxp9Z
 OtoVbjX+JxbvpRVOdXYk8gccxBol9u9TYYe6JIpguTGZq+BQjptQs2sFeCI1kfaYhTpH
 /JfVCngzAN6oiN1llHaaAEjjE8wFO4rYtEaDhA89Az5XeGB2voh0Tdsj5Bb5LVei3hYW
 xoZiA8lVpwqdHHxQRRGapiQAhrYLdn8I6in975wUByVKu51970FgSTaw8ME18D0xjSi/
 ePU4mqpiQ4R7YQZXsH6gbVufMAf6A977d7lLH3XPEql/oWmSt8wBOH6wW/jNTsaqA+NV
 zU9Q==
X-Gm-Message-State: APjAAAXdPITXf9s+AbUg06o7IZYa58rPggFhBOKmv7/V90wRuRS04A16
 yTY++zbB/FWQoiH374LzYioicgNncuUzw3xrDaqG5Q==
X-Google-Smtp-Source: APXvYqwjixJbob+0/JSwJ+rKxU0bREZ0J0yP0u7xam4XRme9PmnGGMhRdbNg/QYRVhwjeiHkAkVozEo/tiBYsz/mPvU=
X-Received: by 2002:a92:af07:: with SMTP id n7mr19324433ili.297.1571739033075; 
 Tue, 22 Oct 2019 03:10:33 -0700 (PDT)
MIME-Version: 1.0
References: <20191017190710.29985-1-jagan@amarulasolutions.com>
 <20191017190710.29985-3-jagan@amarulasolutions.com>
 <7e1e42fd-a4e3-4b3c-8d7b-82f3ad7551cd@rock-chips.com>
 <CAMty3ZDZ_P-soW2poo3nJ8PF=3Wxe0RoGzW7B_xDTkZx8UCm8Q@mail.gmail.com>
 <51fabf8ac7d59d16@bloch.sibelius.xs4all.nl>
In-Reply-To: <51fabf8ac7d59d16@bloch.sibelius.xs4all.nl>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 22 Oct 2019 15:40:21 +0530
Message-ID: <CAMty3ZCrcExQ+KmvWR_0Rus6hLAXySMu2hoGpUHLEBAZaO4kEw@mail.gmail.com>
Subject: Re: [U-Boot] [PATCH v3 2/5] Makefile: Rename idbloader.img with
 u-boot-spl-rockchip.bin
To: Mark Kettenis <mark.kettenis@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_031035_059675_EF9F87D1 
X-CRM114-Status: GOOD (  18.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Tom Rini <trini@konsulko.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "Matwey V . Kornilov" <matwey.kornilov@gmail.com>,
 Kever Yang <kever.yang@rock-chips.com>, U-Boot-Denx <u-boot@lists.denx.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gTW9uLCBPY3QgMjEsIDIwMTkgYXQgMTo0MyBQTSBNYXJrIEtldHRlbmlzIDxtYXJrLmtldHRl
bmlzQHhzNGFsbC5ubD4gd3JvdGU6Cj4KPiA+IEZyb206IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1
bGFzb2x1dGlvbnMuY29tPgo+ID4gRGF0ZTogTW9uLCAyMSBPY3QgMjAxOSAxMDo1NjozOSArMDUz
MAo+ID4KPiA+IEhpIEtldmVyLAo+ID4KPiA+IE9uIEZyaSwgT2N0IDE4LCAyMDE5IGF0IDQ6MjYg
UE0gS2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4gPiA+Cj4g
PiA+IEphZ2FuLAo+ID4gPgo+ID4gPgo+ID4gPiBPbiAyMDE5LzEwLzE4IOS4iuWNiDM6MDcsIEph
Z2FuIFRla2kgd3JvdGU6Cj4gPiA+ID4gaWRibG9hZGVyLmltZyBuYW1lIGlzIHNwZWNpZmljIHRv
IHJvY2tjaGlwLAo+ID4gPgo+ID4gPiBUaGlzIGlzIHNwZWNpZmljIGZvciByb2NrY2hpcCwgbGlr
ZSBya3NkLCBya3NwaSB0eXBlIGluIG1raW1hZ2UsIHNpbmNlCj4gPiA+IGl0J3MgY2xlYXIgZm9y
IHdoYXQgaXQgc3RhbmRzIGZvciwKPiA+ID4KPiA+ID4gSSB0aGluayBpdCBjYW4gYWxzbyB1c2Vk
IGluIFUtQm9vdC4KPiA+ID4KPiA+ID4gPiB3aGVyZSBpdCB1c3VhbGx5Cj4gPiA+ID4gY3JlYXRl
ZCB1c2luZyByb2NrY2hpcCB0b29scy4KPiA+ID4KPiA+ID4KPiA+ID4gTm8sIGlkYmxvYWRlciBz
dGFuZHMgZm9yIHRoZSBpbWFnZSB3aXRoIGlkYiBoZWFkZXIgcGFja2FnZWQgd2l0aCB0d28KPiA+
ID4gc3RhZ2UgbG9hZGVyLCBlZy4gVFBMK1NQTAo+ID4gPgo+ID4gPiBvciBkZHIuYmluK21pbmls
b2FkZXIuYmluLCBhbmQgbWF5YmUgZGRyLmJpbiArIFNQTO+8jCBUUEwrbWluaWxvYWRlci5iaW4s
Cj4gPiA+Cj4gPiA+IG5vdCByZWxhdGVkIHRvIHJvY2tjaGlwIHRvb2xzLCBpdCBjYW4gYWxzbyBi
ZSBjcmVhdGVkIHdpdGggVS1Cb290Cj4gPiA+IG1raW1hZ2UgdG9vbC4KPiA+Cj4gPiBJIHVuZGVy
c3RhbmQgd2hhdCBpZGJsb2FkZXIgY29udGFpbnMsIGl0IGlzIGxpa2Ugcm9ja2NoaXAgU1BMLiBi
dXQgdGhlCj4gPiBtYWluIGNvbmNlcm4gaGVyZSBpcyB0aGUgbmFtaW5nIGNvbnZlbnRpb24gdXNl
ZCBpbiBVLUJvb3QuIEl0IHdvdWxkIGJlCj4gPiBhIHN0YW5kYXJkIHdheSBvZiB1c2luZyBuYW1p
bmcgY29udmVudGlvbnMgd2hlcmUgdGhlIGZpbmFsIG91dHB1dAo+ID4gbmFtaW5nIGNvbnZlbnRp
b25zIHNob3VsZCBoYXZlIHUtYm9vdCBzdXBwb3J0IHN0YWdlcyhUUEwsIFNQTCwgVS1Cb290KQo+
ID4gYW5kIHBsYXRmb3JtIHNwZWNpZmljIG5hbWUuIFRoaXMgd2F5IGl0IGlzIGxlc3MgY29uZnVz
ZWQgd2hhdCBleGFjdGx5Cj4gPiBpdCBjb250YWlucy4KPiA+Cj4gPiBNb3Jlb3ZlciBtb3N0IG9m
IHRoZSBwbGF0Zm9ybSBzcGVjaWZpYyBiaW4gZW5kZWQgdXAgdXNpbmcgdGhpcyB0eXBlIG9mCj4g
PiBjb252ZW50aW9ucy4KPiA+Cj4gPiAtIHUtYm9vdC1zcGwtbXRrLmJpbiAtIE1lZGlhdGVrIFNQ
TCBiaW4KPiA+IC0gdS1ib290LW10ay5iaW4gLSBNZWRpYXRlayBVLUJvb3QgYmluICh3b3VsZCBi
ZSBmaW5hbCBpbWFnZSkKPiA+IC0gdS1ib290LXN1bnhpLXdpdGgtc3BsLmJpbiAtIEFsbHdpbm5l
ciBVLUJvb3Qgd2l0aCBTUEwKPiA+IC0gdS1ib290LXg4Ni1zdGFydDE2LXRwbC5iaW4KPgo+IE5v
IHJlYWwgY29uc2lzdGVuY3kgdGhlcmUgdGhvdWdoLi4uCgpOb3Qgc3VyZSB3aGF0IHlvdSBwb2lu
dGVkIGhlcmUsIGVhY2ggYmluIGxpc3RlZCBhYm92ZSBzaG93cyB0aGUKcGxhdGZvcm0gYW5kIHUt
Ym9vdCBzdGFnZSBhbmQgcHJlZml4IHdpdGggdS1ib290LSBhcyB3ZWxsLiBvZiBjb3Vyc2UKYWxs
IGNhbid0IG1haW50YWluIHRoZSBzYW1lIGJ1dCBoYXMgbWVudGlvbmVkIGRldGFpbHMuCgo+Cj4g
PiBTaW1pbGFyIG5hbWluZyBjb252ZW50aW9ucyB1c2VkIGZvciB0ZWdyYSwgeDg2IGV0Yy4KPiA+
Cj4gPiBJJ20gY29tcGxldGVseSBhd2FyZSBvZiB3aGF0IHlvdSdyZSB0cnlpbmcgdG8gYWJicmV2
aWF0ZQo+ID4gaWRibG9hZGVyLmltZywgYnV0IGhhdmluZyB1LWJvb3Qtc3BsLXJvY2tjaGlwLmJp
biBpcyBtb3JlIHJlYWRhYmxlIGFuZAo+ID4gdW5kZXJzdGFuZCB0aGFuIGlkYmxvYWRlci4KPgo+
IEFzIHdhcyBkaXNjdXNzZWQgYmVmb3JlLCBpZGJsb2FkZXIuaW1nIGlzIHRoZSBuYW1lIHVzZWQg
aW4gZXh0ZXJuYWwKPiBkb2N1bWVudGF0aW9uLgoKWWVzLCB1c2VkIGluIGV4dGVybmFsIGRvY3Vt
ZW50YXRpb24uIHdoZW4gaXQgY29tZXMgdG8gdXBzdHJlYW0gaXQKd291bGQgZm9sbG93IGFzIHBl
ciBleGlzdGluZyBwbGF0Zm9ybXMgZG9lcyBhdGxlYXN0LgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
