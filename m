Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE6FFA735
	for <lists+linux-rockchip@lfdr.de>; Wed, 13 Nov 2019 04:22:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZjPbilwq5nWV5DDx3GfFT+ZAFLpfs4hni/PGMWeMrZc=; b=C4lfX3vM0neku3
	JCWXbF6PtqqlLZ+pZkxRXUlRCJaSm1IpYae4IGh71gBu4E9aCEEONd+ycdO1GfoziMH7+yojqUvKv
	EklzIPPzX5svHnGIWmApw7gqiM/h+IPMWK+hGkKGIVIAir0IxpiAXRyzCE99RBVIW1s0wZczfM1B2
	YDHAOMyNWLUftSfmY4DyOMYCJs9t2Mg4JNZARphZpvwNkgVJH9kIIjp8NGWHsQbzbSzlhmA8zaR8A
	Z0xg5QhJWc799d+9GQlTm/9bcr/3DNtUM0YBv6ZTTmBsapZ0e3SJ+CoU31/Zi1+CK1/P2ne8n00Gf
	iPA90LhGY5E9plQqwV2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUjEW-0005i1-FW; Wed, 13 Nov 2019 03:22:16 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUjE6-0005Mp-Fi
 for linux-rockchip@lists.infradead.org; Wed, 13 Nov 2019 03:21:52 +0000
Received: by mail-pg1-x541.google.com with SMTP id k13so433401pgh.3
 for <linux-rockchip@lists.infradead.org>; Tue, 12 Nov 2019 19:21:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=Xh+7KfDEebguVponzVADQ5ThctCVNju/ZJ+WScN9xeg=;
 b=Yq6TmwlcvtCDW5xGFvdKBjI3po7t2FcN6NDfBj6I/LGeoYJ7/VwyM32gb+2sLqWXVj
 Fun17i/K9DxOMJhHaBvGo49xV4HmPOukm0ud07FDScJBuCtFj/uIX6afsfQRh5Qr45Vv
 /1qgZsnM1ZHRx1zlU01qEoJu3hx/Fv4GA7XhZbDwvEpl/Jh+rT4LGnr2mdC0LVN1ZHoL
 hHus+qjwamgwXRNIECtPM4R0tuD2j7T4dAhX1Jo6IKTAjgIMrI8KGKWbZ7zuKQ2vAn8Z
 6Kmhl7ByhPiXKXLD0VoJSHBfxQIOkXKz1WoIQZoOqhLjEpB9ffWl/v9f20PVY4NTsgIQ
 EWOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=Xh+7KfDEebguVponzVADQ5ThctCVNju/ZJ+WScN9xeg=;
 b=O61o7neHR0pFfXCUsJtFhgB9GmtODmjFSNjdq0alGgi7OvtxgLMA3xNQZ8uS39FCLz
 Howrg+uyEmrdnuHLtg1ym0bldfCkPM1/ZuArrS79DFPa/JSwRv8dIug7RGftGz/Wi97J
 Kmd+2Fqt2FpUY3gpalAib8zLQNgz99AmXiv2bJgL63HDRMoAqWK7I1K093zNgE94LQ1H
 r6+UcPx4zk4stCasP5yZKdamIXLl7PyTzlCHKpKJzcg3814hlJH6lKq9VXsSRiVd361q
 eRSB2Lsx2Wcdbyl5Fo4XCVq4QwxgqEUjCPPMDV7f6viKj+JreCsHC6zhJIMloibQPMKT
 66XA==
X-Gm-Message-State: APjAAAUSyxzCWJpLAbAWhIcI/cMPbf/JrwBLpOZ1uD/K501OgdmmAfm2
 nabZsgYnukba3zgIrSBwlJ26
X-Google-Smtp-Source: APXvYqxb2tsNSW+6NmKeUfJB7q5vWYKaQHqkuMP/WE/jr8h0+qMnFPvtBuYdgUTxCHAGsRDnFMxQZA==
X-Received: by 2002:a63:1b5c:: with SMTP id b28mr1066372pgm.69.1573615309606; 
 Tue, 12 Nov 2019 19:21:49 -0800 (PST)
Received: from Mani-XPS-13-9360 ([2405:204:71cb:37b6:9dd7:8b8c:35ea:81b7])
 by smtp.gmail.com with ESMTPSA id j4sm568352pjf.25.2019.11.12.19.21.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 12 Nov 2019 19:21:49 -0800 (PST)
Date: Wed, 13 Nov 2019 08:51:41 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH 2/3] arm64: dts: rk3399-rock960: add vdd_log
Message-ID: <20191113032141.GB3377@Mani-XPS-13-9360>
References: <20191111005158.25070-1-kever.yang@rock-chips.com>
 <20191111005158.25070-2-kever.yang@rock-chips.com>
 <20191111052232.GA2842@Mani-XPS-13-9360>
 <3d129826-7705-819e-e68b-cc9080eb6c95@rock-chips.com>
 <20191112171726.GA18622@Mani-XPS-13-9360>
 <885996a6-e314-52c8-fec4-f66526dd1397@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <885996a6-e314-52c8-fec4-f66526dd1397@rock-chips.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_192150_561330_BFB920AB 
X-CRM114-Status: GOOD (  23.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 heiko@sntech.de, daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 Akash Gajjar <akash@openedev.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgS2V2ZXIsCgpPbiBXZWQsIE5vdiAxMywgMjAxOSBhdCAxMDo0NDowMkFNICswODAwLCBLZXZl
ciBZYW5nIHdyb3RlOgo+IEhpIE1hbml2YW5uYW4sCj4gCj4gT24gMjAxOS8xMS8xMyDkuIrljYgx
OjE3LCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gPiBPbiBUdWUsIE5vdiAxMiwgMjAx
OSBhdCAwNDoxMDoxN1BNICswODAwLCBLZXZlciBZYW5nIHdyb3RlOgo+ID4gPiBPbiAyMDE5LzEx
LzExIOS4i+WNiDE6MjIsIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToKPiA+ID4gPiBIaSBL
ZXZlciwKPiA+ID4gPiAKPiA+ID4gPiBPbiBNb24sIE5vdiAxMSwgMjAxOSBhdCAwODo1MTo1N0FN
ICswODAwLCBLZXZlciBZYW5nIHdyb3RlOgo+ID4gPiA+ID4gQWRkIHZkZF9sb2cgbm9kZSBhY2Nv
cmRpbmcgdG8gcm9jazk2MCBzY2hlbWF0aWMgVjEzLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiBTaWdu
ZWQtb2ZmLWJ5OiBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgo+ID4gPiA+
ID4gLS0tCj4gPiA+ID4gPiAKPiA+ID4gPiA+ICAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszMzk5LXJvY2s5NjAuZHRzaSB8IDEyICsrKysrKysrKysrKwo+ID4gPiA+ID4gICAgMSBm
aWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKykKPiA+ID4gPiA+IAo+ID4gPiA+ID4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2s5NjAuZHRzaSBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2s5NjAuZHRzaQo+ID4gPiA+
ID4gaW5kZXggYzdkNDhkNDFlMTg0Li43M2FmZWUyNTcxMTUgMTAwNjQ0Cj4gPiA+ID4gPiAtLS0g
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrOTYwLmR0c2kKPiA+ID4g
PiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2s5NjAuZHRz
aQo+ID4gPiA+ID4gQEAgLTc2LDYgKzc2LDE4IEBACj4gPiA+ID4gPiAgICAJCXJlZ3VsYXRvci1h
bHdheXMtb247Cj4gPiA+ID4gPiAgICAJCXZpbi1zdXBwbHkgPSA8JnZjYzV2MF9zeXM+Owo+ID4g
PiA+ID4gICAgCX07Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiArCXZkZF9sb2c6IHZkZC1sb2cgewo+
ID4gPiA+ID4gKwkJY29tcGF0aWJsZSA9ICJwd20tcmVndWxhdG9yIjsKPiA+ID4gPiA+ICsJCXB3
bXMgPSA8JnB3bTIgMCAyNTAwMCAxPjsKPiA+ID4gPiA+ICsJCXJlZ3VsYXRvci1uYW1lID0gInZk
ZF9sb2ciOwo+ID4gPiA+ID4gKwkJcmVndWxhdG9yLWFsd2F5cy1vbjsKPiA+ID4gPiA+ICsJCXJl
Z3VsYXRvci1ib290LW9uOwo+ID4gPiA+ID4gKwkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8
ODAwMDAwPjsKPiA+ID4gPiA+ICsJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDE0MDAwMDA+
Owo+ID4gPiA+ID4gKwkJcmVndWxhdG9yLWluaXQtbWljcm92b2x0ID0gPDk1MDAwMD47Cj4gPiA+
ID4gVGhlIGRlZmF1bHQgdmFsdWUgc2VlbXMgdG8gYmUgMC45diBhcyBwZXIgYm90aCBSb2NrOTYw
IGFuZCBGaWN1cyBzY2hlbWF0aWNzLgo+ID4gPiAKPiA+ID4gVGhlIGRlZmF1bHQgdmFsdWUgaXMg
MC45ViB3aGVuIHB3bS1yZWd1bGF0b3IgaXMgbm90IGVuYWJsZWQsIGFuZCB0aGlzCj4gPiA+ICdp
bml0LW1pY3Jvdm9sdCcgc3VwcG9zZSB0byBzZXQgdGhlCj4gPiA+IAo+ID4gPiBpbml0IHZhbHVl
IHdoZW4gcHdtLXJlZ3VsYXRvciBpcyBlbmFibGVkLiBJIHNldCB0aGlzIHRvIDk1MG1WIGJlY2F1
c2UgUGV0ZXIKPiA+ID4gcmVwb3J0IHRoYXQgaGUgZXhwZXJpZW5jZQo+ID4gPiAKPiA+ID4gdGhl
IHN5c3RlbSBoYW5nIGR1cmluZyBGZWRvcmEgYm9vdMKgIHVwLCBhbmQgdXBkYXRlIHRoZSB2ZGRf
bG9nIHRvIDk1MG1WIGNhbgo+ID4gPiBmaXggdGhlIGlzc3VlIGR1ZSB0bwo+ID4gPiAKPiA+ID4g
ZW5naW5lZXIgbWVhc3VyZSBvbiBhbm90aGVyIHJrMzM5OSBib2FyZCBwdW1hLVE3Lgo+ID4gPiAK
PiA+IG9rYXkuIFByZXZpb3VzbHkgd2UgaGFkIHBvc3QtYm9vdCBoYW5nIGlzc3VlIG9uIFJvY2s5
NjAgTW9kZWwgQSBib2FyZHMgd2hlbiB0aGUKPiA+IHBlcmZvcm1hbmNlIGdvdmVybm9yIHdhcyBz
ZXQgYXMgZGVmYXVsdC4gU28gdGhlIHZkZF9sb2cgbm9kZSB3YXMgcmVtb3ZlZCBmcm9tCj4gPiB0
aGUgZGV2aWNldHJlZS4gSGF2ZSB5b3UgdGVzdGVkIHRoYXQgY2FzZSBhbHNvPwo+ID4gCj4gPiBI
ZXJlIGlzIHRoZSBjb21taXQ6Cj4gPiAxMzY4MmU1MjQxNjcgKCJhcm02NDogZHRzOiByb2NrY2hp
cDogcmVtb3ZlIHZkZF9sb2cgZnJvbSByb2NrOTYwIHRvIGZpeCBhIHN0YWJpbGl0eSBpc3N1ZXMi
KQo+IAo+IAo+IEZvciByazMzOTksIHRoZSBrZXJuZWwgZG9lcyBub3QgdG91Y2ggdGhpcyByZWd1
bGF0b3IsIGl0IHNob3VsZCBiZSB0YWtlIGNhcmUKPiBieSBib290bG9hZGVyLgo+IAo+IFNvIEkg
dGhpbmsgd2UgbmVlZCB0byB1cGRhdGUgYm90aCBVLUJvb3QgYW5kIGtlcm5lbC4KPiAKCkhtbSwg
b2theS4gSSB3aWxsIHRyeSB0byB0ZXN0IHRoZXNlIHBhdGNoZXMgc29vbiBhbmQgc2hhcmUgdGhl
IG9ic2VydmF0aW9uIGhlcmUuCgpUaGFua3MsCk1hbmkKCj4gCj4gVGhhbmtzLAo+IAo+IC0gS2V2
ZXIKPiAKPiA+IAo+ID4gdGhhbmtzLAo+ID4gTWFuaQo+ID4gPiBUaGFua3MsCj4gPiA+IAo+ID4g
PiAtIEtldmVyCj4gPiA+IAo+ID4gPiA+IE90aGVyIHRoYW4gdGhhdCwKPiA+ID4gPiBBY2tlZC1i
eTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9y
Zz4KPiA+ID4gPiAKPiA+ID4gPiBUaGFua3MsCj4gPiA+ID4gTWFuaQo+ID4gPiA+IAo+ID4gPiA+
ID4gKwkJdmluLXN1cHBseSA9IDwmdmNjX3N5cz47Cj4gPiA+ID4gPiArCX07Cj4gPiA+ID4gPiAg
ICB9Owo+ID4gPiA+ID4gICAgJmNwdV9sMCB7Cj4gPiA+ID4gPiAtLSAKPiA+ID4gPiA+IDIuMTcu
MQo+ID4gPiA+ID4gCj4gPiA+IAo+IAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
