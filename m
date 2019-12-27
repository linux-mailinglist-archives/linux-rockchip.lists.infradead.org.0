Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE56412B467
	for <lists+linux-rockchip@lfdr.de>; Fri, 27 Dec 2019 13:05:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iFBTUzvh89mQa2cDaq7f4kKJb/P2CZHimrkTDklcpws=; b=NpfxeYluBTmTFn
	zLq9hHIog5/oVl/eT70kV55PE//tp51jsjmZidMJzs04x/8aUXUvxdo8FQ7ohAdnQ2ZJFf48BJGvw
	fHYRTHINHYOsE7nkwwzsfP7x0ubO9wb1XQj07LfuMOfccvrBqVLcSBOdOh9WW5DFmeo4xsxrAJxjb
	Dd4CJ48v7MZhnYbN1hFOz97CHE7Qqp2u0TSDMbeaEkpHlNv9DQNPtGWpyAZvSbtTybrfjMo1KGXsm
	o8ZLum5/GvJzxMAIoikhobauR0IO9mNcMko2zPGzSJblJSsnXFdYxyeIsypaxk7IuPj68ZsRpFBa3
	bxJVByXHUFa2E1rXGG1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikoMk-0006fE-8G; Fri, 27 Dec 2019 12:05:14 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikoMg-0006eb-R3
 for linux-rockchip@lists.infradead.org; Fri, 27 Dec 2019 12:05:12 +0000
Received: by mail-il1-x141.google.com with SMTP id z12so22274795iln.11
 for <linux-rockchip@lists.infradead.org>; Fri, 27 Dec 2019 04:05:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=QWLEDdU87ytmaP42BSUAfm4HZCmbvOA5p5jeRMxXuMI=;
 b=KduesfXD7KXBtw9euOnxb6MPxkkx5+WHE9Do56PZjEZicGc1ReFQH2uxT9BrckHWFL
 FeY7xQyxaEOz06A8ZaCvdVUc004HOzVXyJuE2F4QMBQR/hdVXhHzOPgjbjAgdXluB6UQ
 FkgBTC91irs2d73zCBMTb6AtetEYJ5NBtM4ls=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=QWLEDdU87ytmaP42BSUAfm4HZCmbvOA5p5jeRMxXuMI=;
 b=je8KOyoL7TpUDwtuHC2he0P03cSgep6N8bgs2wQyqxIOen+A0XisDyp8Ew60CJkofF
 v9CKu+Fl29b1neQihEowrVUm0x0Vwa6Nvco4Ip0UXZwHI+3/NEjJzab889hcCsuQ6rNm
 0EVMI4f3KkvKRlISQ6EiOEea0Iflv+Yci8iiDzOcnvvpqKygeWd3/0D26lWSjLqe5CHq
 AnB7Axrvzlvo8wldb/NFo5/J46v19V8Lq3Y3zguyzip0Jaq47gzbGbr/nMOHZY85k+S6
 5e64lg36pgjpfwuzVWiHk7qL6BVZ7GM1qEMp2JwfZ4I58JltYzOvIKHTsFUiUWzMP/Dn
 sW+Q==
X-Gm-Message-State: APjAAAX7mk8AZ8O/Cy5X4trqUmccZpdq/JsnUTNRl6mlGL4pSyEi+H5Y
 DF0tvpACfW6/3dusZ39ZIQRw67gec4jjhG5kpbQ45w==
X-Google-Smtp-Source: APXvYqxVSSRk2vATlxY0dlrGePEKxuSuol+w00LuFhjHHxab3VfrWizLhcbDEV5fYjTsqXgpmWqIO1+FeKAVH9olzJo=
X-Received: by 2002:a92:c647:: with SMTP id 7mr44411297ill.28.1577448309622;
 Fri, 27 Dec 2019 04:05:09 -0800 (PST)
MIME-Version: 1.0
References: <20191221075440.6944-1-jagan@amarulasolutions.com>
 <20191221075440.6944-8-jagan@amarulasolutions.com>
 <87672c9e-5f49-edf9-a97d-2ed83d33d375@rock-chips.com>
 <CAMty3ZDQptk4NJkLfdGiygQMTdLNhSWOxNu57OOf-DpUhFndtA@mail.gmail.com>
 <ee58a8ea-89b1-4b9c-53e3-74c112e66fb4@web.de>
In-Reply-To: <ee58a8ea-89b1-4b9c-53e3-74c112e66fb4@web.de>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Fri, 27 Dec 2019 17:34:57 +0530
Message-ID: <CAMty3ZC-jKKfnpnb4p6CmPBGLoDTac=NwGqtAvdtcM-B2N466w@mail.gmail.com>
Subject: Re: [PATCH 07/11] env: Enable SPI flash env for rockchip
To: Soeren Moch <smoch@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_040511_303609_8B4B6E73 
X-CRM114-Status: GOOD (  19.64  )
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gRnJpLCBEZWMgMjcsIDIwMTkgYXQgNDowMCBQTSBTb2VyZW4gTW9jaCA8c21vY2hAd2ViLmRl
PiB3cm90ZToKPgo+IEhpIQo+Cj4gT24gMjcuMTIuMTkgMDc6NTAsIEphZ2FuIFRla2kgd3JvdGU6
Cj4gPiBIaSBLZXZlciwKPiA+Cj4gPiBPbiBNb24sIERlYyAyMywgMjAxOSBhdCA4OjA0IEFNIEtl
dmVyIFlhbmcgPGtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+IHdyb3RlOgo+ID4+Cj4gPj4gSmFn
YW4sCj4gPj4KPiA+Pgo+ID4+IE9uIDIwMTkvMTIvMjEg5LiL5Y2IMzo1NCwgSmFnYW4gVGVraSB3
cm90ZToKPiA+Pj4gTW9zdCBvZiB0aGUgU1BJIGZsYXNoIGRldmljZXMgaW4gcm9ja2NoaXAgYXJl
IDE2TWlCIHNpemUuCj4gPj4+Cj4gPj4+IFNvLCBrZWVwaW5nIFUtQm9vdCBwcm9wZXIgb2Zmc2V0
IHN0YXJ0IGZyb20gMTI4TWlCIHdpdGggMU1pQgo+ID4+PiBzaXplIGFuZCB0aGVuIHN0YXJ0IGVu
diBvZiA4S2lCIHdvdWxkIGJlIGEgY29tcGF0aWJsZSBsb2NhdGlvbgo+ID4+PiBiZXR3ZWVuIGFs
bCB2YXJpYW50cyBvZiBmbGFzaCBzaXplcy4KPiA+Pj4KPiA+Pj4gVGhpcyBwYXRjaCBhZGQgZW52
IHN0YXJ0IGZyb20gMHgxNDAwMCB3aXRoIGEgc2l6ZSBvZiA4S2lCLgo+ID4+Cj4gPj4gV2hhdCdz
IHRoZSBzcGFjZSBtYXAgaW4gU1BJIGZsYXNoIHN1cHBvc2UgdG8gYmU/IEluY2x1ZGluZwo+ID4+
IHRwbC9zcGwvdS1ib290Lml0Ygo+ID4+Cj4gPj4gSSB3b3VsZCBwcmVmZXIgdG8gdXNlIDEyOEtp
Qi04S2lCIGFzIHRoZSBlbnYgc3RhcnQgYWRkcmVzcywgd2UnZCBiZXR0ZXIKPiA+PiB0byBhdm9p
ZCB0aGUKPiA+Pgo+ID4+IHJpc2sgb2Ygb3ZlcmxhcCBiZXR3ZWVuIHRoZSBlbnYgc3BhY2UgYW5k
IHRoZSBmaXJtd2FyZSBzcGFjZS4KPiA+Cj4gPiBIZXJlIGlzIHRoZSAxNk1pQiBmbGFzaCBsYXlv
dXQsIEkgaGF2ZSB1c2VkLiBJIGNhbiBzZWUgdGhlIGxvYWRlcjEKPiA+ICh0cGwvc3BsKSBjYW4g
YmUgcG9zc2libGUgdG8gbG9hZCBhdCAweDAgb3IgMHgzMksgc28gSSBoYXZlIGdpdmVuIHRoZQo+
ID4gc3BhY2UgZm9yIGl0LiBhbmQgOEsgZW52IGFmdGVyIGxvYWRlcjIodS1ib290KS4gbGV0IG1l
IGtub3cgeW91cgo+ID4gdGhvdWdodHM/Cj4KPiBXaHkgd2UgY2Fubm90IHVzZSB0aGUgc2FtZSBs
YXlvdXQgYXMgd2hhdCBpcyBkZWZpbmVkIGZvciBTRC9lTU1DOgo+IGh0dHA6Ly9vcGVuc291cmNl
LnJvY2stY2hpcHMuY29tL3dpa2lfUGFydGl0aW9ucwo+Cj4KPgo+ID4KPiA+ICAgICAgICAgICAw
eDAgLSAweDgwMDAsICAgICAgIDMySyAgPT4gIHJlc2VydmVkL2xvYWRlcjEKPiA+ICAgICAweDgw
MDAgLSAweDQwMDAwLCAgICAyMjRLID0+ICBsb2FkZXIxCj4gPiAgIDB4NDAwMDAgLSAweDE0MDAw
MCwgICAgMU0gID0+ICBsb2FkZXIyCj4gPiAweDE0MDAwMCAtIDB4MTQyMDAwLCAgICA4SyAgPT4g
ICBlbnYKPiA+IDB4MTQyMDAwIC0gMHg4NDIwMDAsICAgIDdNICA9PiAga2VybmVsCj4gPiAweDg0
MjAwMCAtIDB4ODUzODAwLCAgMTAwSyA9PiAgZHRiCj4gPiAweDg1MzgwMCAtICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICA9PiAgcm9vdAo+Cj4gVGhlc2Ugc21hbGwgbG9hZGVyMS9sb2FkZXIy
IHBhcnRpdGlvbnMgbWF5IGJ5dGUgdXMgbGF0ZXIgd2hlbiBuZXdlcgo+IHUtYm9vdCB2ZXJzaW9u
cyBvbmx5IHdpbGwgZml0IGZvciBTRCBhbmQgbm90IGZvciBTUEkgYW55bW9yZS4KClllcywgdGhl
IGluaXRpYWwgaWRlYSBpcyB0byByZXVzZSB0aGUgZXhpc3RpbmcgU0QgbGF5b3V0IGJ1dCB0aGUg
U1BJCmZsYXNoIGlzIGxpbWl0ZWQgaW4gc2l6ZSwgYW5kIGl0IGlzIGZ1cnRoZXIgbGltaXRlZCBp
biByazMzOTkgYm9hcmRzCihyb2NrcHJvNjQsIHJvYy1yazMzOTktcGMuLikuIHdoaWNoIGlzIDE2
TWlCLiBTbyByZXVzaW5nIGhhbGYgb2YgdGhlCmZsYXNoIHNpemUgd2lsbCBvY2N1cHkgZm9yIHRp
bGwgbG9hZGVyMiBpbiBTRCBzY2hlbWUuCgo+Cj4gVGhlIHJlc2VydmVkIHNwYWNlIGZvciBrZXJu
ZWwgaXMgYWxyZWFkeSB0b28gc21hbGwgZm9yIG5vcm1hbCBrZXJuZWwKPiBidWlsZHMgdG9kYXks
IG5vdCB0byBtZW50aW9uIGEgcm9vdCBmaWxlc3lzdGVtLgo+Cj4gQXJlIHRoZXJlIGFueSB1c2Ug
Y2FzZXMgd2hlcmUgc29tZWJvZHkgbmVlZHMgdG8gcGxhY2UgYm9vdCBhbmQgcm9vdAo+IHBhcnRp
dGlvbnMgb24gU1BJIGZsYXNoPwoKU28sIGV4cGxhaW5lZCBhYm92ZSBkdWUgdG8gc2l6ZSBsaW1p
dGF0aW9uIHRoZSByZXNwZWN0aXZlIGJsb2NrcyBsaWtlCmtlcm5lbCwgcm9vdCAod2UgY2FuIHNh
eSBpbml0cmQpIGFyZSBpbmRlZWQgbGVzcy1zaXplZCBwYXJ0aXRpb25zLgpNb3Jlb3ZlciBTUEkg
Zmxhc2ggaXMgbm90IGEgc3VpdGFibGUgc3RvcmFnZSBmb3Igcm9vdGZzIGluIHJvY2tjaGlwLApz
aW5jZSB0aGUgYm9vdCBvcmRlciBzdGFydCBmcm9tIFNQSSBmbGFzaCB1c3VhbGx5IGJvYXJkIHdv
dWxkIGJvb3QKZnJvbSBmbGFzaCBhbmQgdGhlbiBsb29rIGZvciBTRCwgZU1NQywgUENJZSBOVk0g
Zm9yIGxvYWRpbmcgYmlnIGNodW5rCnJvb3Rmcy4KCk1vcmUgb3IgbGVzcyB0aGUgaWRlYSBvZiBh
Ym92ZSBmbGFzaCBsYXlvdXQgaXMgdG8gZml0IHByb3Blcmx5CndpdGgtaW4tdGhlIHNpemUgYm91
bmRhcmllcyBhbmQgaW5kZWVkIGZvciBzbWFsbCBpbml0cmFtZnMgc3lzdGVtcy4KCkphZ2FuLgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
