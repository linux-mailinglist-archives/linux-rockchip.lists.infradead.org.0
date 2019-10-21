Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A52ADE3B6
	for <lists+linux-rockchip@lfdr.de>; Mon, 21 Oct 2019 07:26:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V3Dq9f+/gnL5llU33MDPN6wUvSceX/LXWXBxgDGCikU=; b=dlaxpulQgL+W2V
	oTwga70I3uH5JppTsr2k2VLKqjWGgKthCRHKR8+BK4sCLpWVygkHeD8Pw64BQAQGvDPk7AfNDyDv1
	ctNO5JuVhnZDH5rua0oNPibCnOQQuyT8HJrwv2EPescMxXIBfebRI2iCyN5uij0dUPJ69Ubuc6Hmn
	ZGogtZvCedJGZHvnVmLSGhN7JC+PcrEOpF3bqaEOk/96mT5i+hvawJwR1mTwk8BkreC716NA4GQhW
	qMtYyIA6lJkuofVvLHd0y1SXfVo6MRxaFuoKnPHTX3lSZXTmai+DqsK5jJyktXjVCVlYA93EV1I7A
	HwVbbvmdRWzLZHO+67gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMQDY-0000Ng-PS; Mon, 21 Oct 2019 05:26:56 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMQDV-0000NB-67
 for linux-rockchip@lists.infradead.org; Mon, 21 Oct 2019 05:26:55 +0000
Received: by mail-ot1-x343.google.com with SMTP id e11so9913465otl.5
 for <linux-rockchip@lists.infradead.org>; Sun, 20 Oct 2019 22:26:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=pk2Q/V/dvrDB71ct93OqNcWg3kzdkyOjDHxvAnmvMJY=;
 b=Jw6RxT7IGnemnL5+rZCTwX+D7WD16NjsgP2OftFg1pGTbMExOjcrAbb0+lBUU/lTl4
 gp2Z2syjN4nxPoX4u8YHwpj5QSN6w4rvhH2cINsyOJUTr9Hvv0DVU9vlVvphftfnqn4L
 G9nNUyNd0IBylAfGslKKxWkJGgSUgT3St4PZk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=pk2Q/V/dvrDB71ct93OqNcWg3kzdkyOjDHxvAnmvMJY=;
 b=IAvIpiqq047LV9oZlUqRQT9w7vJFaMg6PtvobdQCoI/ghjGW6dYsDhzwJyfzGLiXtO
 cfyGCI/Ha6ZHl9Im/Cu/5CEZQMrhqBwglTqRiSlKqOcJ7rvWHOeyJRTq+sMOFZCC++38
 odD4pSmgHfQ/T1zgRAs55tOBgherzBQhgDmsP+KRHQD0nRyzMjDhZ50DdgDNFJoGhErD
 PGn2Xfno+dTymVcFjPrtxCNmWIXobe/hfrTl6dmIdRmeF0ThHamj15zdR9Oa1PG3j4Fd
 /Sh8MAQ8oOjh5MNjyr3H5SeqWpujNOsJE+1aGB3cbclSsp7hupWWvbvZE2sXVpLpWoba
 VK/g==
X-Gm-Message-State: APjAAAWuuWrMiPQpSL5+rxy3QbKbRV47k+6BQlRwFQ1lf7D43zpwQR4F
 ETGywYgUr0WGe92gmQu408VK0kIwz2RLWUx/FnAHeg==
X-Google-Smtp-Source: APXvYqwmEnYQzDJBcCFJIHZgQBQ+w5POdI1/3ACTFu1mt1JrkO8tM6NC/qK9zpdrEkaHHR3W017JpcRw0BgSI4pNHig=
X-Received: by 2002:a9d:4e02:: with SMTP id p2mr8889665otf.21.1571635611449;
 Sun, 20 Oct 2019 22:26:51 -0700 (PDT)
MIME-Version: 1.0
References: <20191017190710.29985-1-jagan@amarulasolutions.com>
 <20191017190710.29985-3-jagan@amarulasolutions.com>
 <7e1e42fd-a4e3-4b3c-8d7b-82f3ad7551cd@rock-chips.com>
In-Reply-To: <7e1e42fd-a4e3-4b3c-8d7b-82f3ad7551cd@rock-chips.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Mon, 21 Oct 2019 10:56:39 +0530
Message-ID: <CAMty3ZDZ_P-soW2poo3nJ8PF=3Wxe0RoGzW7B_xDTkZx8UCm8Q@mail.gmail.com>
Subject: Re: [PATCH v3 2/5] Makefile: Rename idbloader.img with
 u-boot-spl-rockchip.bin
To: Kever Yang <kever.yang@rock-chips.com>, Tom Rini <trini@konsulko.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_222653_654683_7DEE68D8 
X-CRM114-Status: GOOD (  22.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "Matwey V . Kornilov" <matwey.kornilov@gmail.com>,
 U-Boot-Denx <u-boot@lists.denx.de>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgS2V2ZXIsCgpPbiBGcmksIE9jdCAxOCwgMjAxOSBhdCA0OjI2IFBNIEtldmVyIFlhbmcgPGtl
dmVyLnlhbmdAcm9jay1jaGlwcy5jb20+IHdyb3RlOgo+Cj4gSmFnYW4sCj4KPgo+IE9uIDIwMTkv
MTAvMTgg5LiK5Y2IMzowNywgSmFnYW4gVGVraSB3cm90ZToKPiA+IGlkYmxvYWRlci5pbWcgbmFt
ZSBpcyBzcGVjaWZpYyB0byByb2NrY2hpcCwKPgo+IFRoaXMgaXMgc3BlY2lmaWMgZm9yIHJvY2tj
aGlwLCBsaWtlIHJrc2QsIHJrc3BpIHR5cGUgaW4gbWtpbWFnZSwgc2luY2UKPiBpdCdzIGNsZWFy
IGZvciB3aGF0IGl0IHN0YW5kcyBmb3IsCj4KPiBJIHRoaW5rIGl0IGNhbiBhbHNvIHVzZWQgaW4g
VS1Cb290Lgo+Cj4gPiB3aGVyZSBpdCB1c3VhbGx5Cj4gPiBjcmVhdGVkIHVzaW5nIHJvY2tjaGlw
IHRvb2xzLgo+Cj4KPiBObywgaWRibG9hZGVyIHN0YW5kcyBmb3IgdGhlIGltYWdlIHdpdGggaWRi
IGhlYWRlciBwYWNrYWdlZCB3aXRoIHR3bwo+IHN0YWdlIGxvYWRlciwgZWcuIFRQTCtTUEwKPgo+
IG9yIGRkci5iaW4rbWluaWxvYWRlci5iaW4sIGFuZCBtYXliZSBkZHIuYmluICsgU1BM77yMIFRQ
TCttaW5pbG9hZGVyLmJpbiwKPgo+IG5vdCByZWxhdGVkIHRvIHJvY2tjaGlwIHRvb2xzLCBpdCBj
YW4gYWxzbyBiZSBjcmVhdGVkIHdpdGggVS1Cb290Cj4gbWtpbWFnZSB0b29sLgoKSSB1bmRlcnN0
YW5kIHdoYXQgaWRibG9hZGVyIGNvbnRhaW5zLCBpdCBpcyBsaWtlIHJvY2tjaGlwIFNQTC4gYnV0
IHRoZQptYWluIGNvbmNlcm4gaGVyZSBpcyB0aGUgbmFtaW5nIGNvbnZlbnRpb24gdXNlZCBpbiBV
LUJvb3QuIEl0IHdvdWxkIGJlCmEgc3RhbmRhcmQgd2F5IG9mIHVzaW5nIG5hbWluZyBjb252ZW50
aW9ucyB3aGVyZSB0aGUgZmluYWwgb3V0cHV0Cm5hbWluZyBjb252ZW50aW9ucyBzaG91bGQgaGF2
ZSB1LWJvb3Qgc3VwcG9ydCBzdGFnZXMoVFBMLCBTUEwsIFUtQm9vdCkKYW5kIHBsYXRmb3JtIHNw
ZWNpZmljIG5hbWUuIFRoaXMgd2F5IGl0IGlzIGxlc3MgY29uZnVzZWQgd2hhdCBleGFjdGx5Cml0
IGNvbnRhaW5zLgoKTW9yZW92ZXIgbW9zdCBvZiB0aGUgcGxhdGZvcm0gc3BlY2lmaWMgYmluIGVu
ZGVkIHVwIHVzaW5nIHRoaXMgdHlwZSBvZgpjb252ZW50aW9ucy4KCi0gdS1ib290LXNwbC1tdGsu
YmluIC0gTWVkaWF0ZWsgU1BMIGJpbgotIHUtYm9vdC1tdGsuYmluIC0gTWVkaWF0ZWsgVS1Cb290
IGJpbiAod291bGQgYmUgZmluYWwgaW1hZ2UpCi0gdS1ib290LXN1bnhpLXdpdGgtc3BsLmJpbiAt
IEFsbHdpbm5lciBVLUJvb3Qgd2l0aCBTUEwKLSB1LWJvb3QteDg2LXN0YXJ0MTYtdHBsLmJpbgoK
U2ltaWxhciBuYW1pbmcgY29udmVudGlvbnMgdXNlZCBmb3IgdGVncmEsIHg4NiBldGMuCgpJJ20g
Y29tcGxldGVseSBhd2FyZSBvZiB3aGF0IHlvdSdyZSB0cnlpbmcgdG8gYWJicmV2aWF0ZQppZGJs
b2FkZXIuaW1nLCBidXQgaGF2aW5nIHUtYm9vdC1zcGwtcm9ja2NoaXAuYmluIGlzIG1vcmUgcmVh
ZGFibGUgYW5kCnVuZGVyc3RhbmQgdGhhbiBpZGJsb2FkZXIuCgo+Cj4gPiBTaW5jZSB0aGUgaW1h
Z2UgaXMgY3JlYXRlZCBhcwo+ID4gcGVyIFUtQm9vdCBnZW5lcmljIGJ1aWxkcyBsaWtlIFNQTCwg
YmV0dGVyIHRvIGZvbGxvdyB0aGUKPiA+IGdlbmVyaWMgVS1Cb290IG5hbWluZyBub3RhdGlvbiBs
aWtlIG90aGVyIFNvQydzIGZvbGxvd2luZy4KPiA+Cj4gPiBFbmFibGUgaWRibG9hZGVyLmltZyB3
aXRoIHUtYm9vdC1zcGwtcm9ja2NoaXAuYmluIGFuZCBjcmVhdGUKPiA+IHRoZSBzYW1lIGluIHNw
bCBkaXJlY3Rvcnkgc2luY2UgaXQgaXMgU1BMIGZpbGUgYW5kIE1ha2VmaWxlLnNwbAo+ID4gd2ls
bCBjbGVhbiBpdCBieSBkZWZhdWx0Lgo+ID4KPiA+IENjOiBLZXZlciBZYW5nIDxrZXZlci55YW5n
QHJvY2stY2hpcHMuY29tPgo+ID4gQ2M6IE1hdHdleSBWLiBLb3JuaWxvdiA8bWF0d2V5Lmtvcm5p
bG92QGdtYWlsLmNvbT4KPiA+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1
bGFzb2x1dGlvbnMuY29tPgo+ID4gLS0tCj4gPiAgIE1ha2VmaWxlIHwgNCArKy0tCj4gPiAgIDEg
ZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlm
ZiAtLWdpdCBhL01ha2VmaWxlIGIvTWFrZWZpbGUKPiA+IGluZGV4IGVjNTVlMGY2YTQuLjkxOGI1
ZDUzZTAgMTAwNjQ0Cj4gPiAtLS0gYS9NYWtlZmlsZQo+ID4gKysrIGIvTWFrZWZpbGUKPiA+IEBA
IC04ODcsNyArODg3LDcgQEAgQUxMLXkgKz0gdS1ib290LXdpdGgtZHRiLmJpbgo+ID4gICBlbmRp
Zgo+ID4KPiA+ICAgaWZlcSAoJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkkKENPTkZJR19TUEwpJChD
T05GSUdfVFBMKSx5eXkpCj4gPiAtQUxMLXkgKz0gaWRibG9hZGVyLmltZwo+ID4gK0FMTC15ICs9
IHNwbC91LWJvb3Qtc3BsLXJvY2tjaGlwLmJpbgo+Cj4KPiBUaGlzIGlkYmxvYWRlciBpbmNsdWRp
bmcgSURCIGhlYWRlciwgVFBMLCBhbmQgU1BMLCBJIGRvbid0IHRoaW5rIG5hbWUgaXQKPiBhcyBz
cGwgYW5kCj4KPiBwdXQgaXQgaW4gc3BsIGRpcmVjdG9yeSBtYWtlIGFueSBzZW5zZS4KPgo+IEkg
dGhvdWdoIHRoZSBvcmlnaW4gb3V0cHV0IGZpbGUgdXNlIHBvc3RmaXggJy5iaW4nIGFuZCB0aG9z
ZSBpbWFnZSBhZnRlcgo+IHBhY2sgYW5kIGNhbiAgYmUKPgo+IGRkIHRvIHN0b3JhZ2UgZGlyZWN0
bHkgYmV0dGVyIHRvIHVzZSBwb3N0Zml4ICcuaW1nJy4KPgo+IEFib3V0IHRoZSBjbGVhbiwgaXQg
d2lsbCBiZSBiZXR0ZXIgdG8gYmUgY2xlYW4gbGlrZSBvdGhlciAnLmltZycgZmlsZSBpbgo+IHRo
ZSBNYWtlZmlsZS4KClRoaXMgbWFrZSBzZW5zZSwgSSBoYXZlIG5leHQgdmVyc2lvbiBzZXQgd2hl
cmUgaXQgdXNlZCBoYW5kbGUgdGhlc2Ugc28KY2FyZWZ1bGx5LgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
