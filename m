Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 310B7DE617
	for <lists+linux-rockchip@lfdr.de>; Mon, 21 Oct 2019 10:17:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v2gB7MSnc3IAAHPJ70MDy+4Luxo/OfGgvoeZMZzCYZA=; b=BsutYnA0fjZSAs
	CulwyFGmtTZyTAFq00dZAU/sOXQk+XCT+Pnp3oC7zv7C1EqdYPBHAVEoausx1aIp0d4agPMKVvo9T
	6o5tYrzTS1Ck2vZg7y/q45aRC0R/8BM4ZgMAu7dXP8reHXomZXUQtN5sp+zCINDZVWo+bsjsjllhC
	m/zXimKXi6U5eBJ43APZvNSBTavYWhPzHh2qlEUI0V59/1R4u49hAWEMD6xdblXRzz0IVYIGfLiUh
	Vdn9V0C8Q8R1seTotMTG86xZSVsDhYiggt8T//CYs96iBcsijJ5qg5x8DM32XRDDoyhe2/yBpllTg
	cgdmSRYl4yOt7GLIhGVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMSsC-0007PR-NC; Mon, 21 Oct 2019 08:17:04 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMSs8-0007Oj-Ku
 for linux-rockchip@lists.infradead.org; Mon, 21 Oct 2019 08:17:02 +0000
Received: by mail-io1-xd41.google.com with SMTP id w12so14787843iol.11
 for <linux-rockchip@lists.infradead.org>; Mon, 21 Oct 2019 01:17:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=80eQYrW3/4hxc1l2zfuZUfpy5UHHTSKQdsmKZDW6WGE=;
 b=ESGVn/Sdr2o7iJffRdPPVlVEnDfaA7f4NvH7jID6AE5wcOCLWdr95M8D+74Khk4HzS
 ERV9ID8vBxcHH6SDNq1MsRe4F6FP1dDrgIIJ3IB4eQbVSFrTSa5ztYzDbBcG34ZVwXe6
 kxpEADSlgrcMeoMnJyfeSX1bdDaA8dfXox7/U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=80eQYrW3/4hxc1l2zfuZUfpy5UHHTSKQdsmKZDW6WGE=;
 b=LPVkxTHy//TYhoWw4AxUf3l46mEHig9mc2U1Q8cuewFfoheoti+WXr6KkFeb1kFN37
 wf6u4uxl0TV/XJ7Si/2i4Aqxx9IC3lFKL5msItDQcSlxuR62fVgMAQ4FLbLd0LmIfXnD
 hOJmW+q/6FkfDNseOcz+vVbEYlUR522EVAHv7waPthnARREOUr3o1QkQXgEVe28x/YzJ
 7eJKSRDy7duZkf6SyZhJ/pdaMOnPEm1dLJ8AQPMAV1EGd+GY7lW3lcepGi0HJoOfB62/
 EhFHIlzEcvMOxeLpqoZK6e3gEQE91tzVlTuP1S6VFda7vfu0V2eCllnwcyjjR3sm8uUY
 X6Xw==
X-Gm-Message-State: APjAAAUAirHyRablBAfj5WRcoEbxJnaBxqZZfilsxQlH6JMqxPOK8LjH
 zhtm+RFLHcn3/Aie3D04gAoRAtCw5J4N+wvW3zwZ3g==
X-Google-Smtp-Source: APXvYqy76Fipe173vGCHOR5HdxWNvUP9CW5fUozESU/QeqVChYjKsvWULy0fDEHHAaUCVpl/96x6sRcCznUNYbg3GUk=
X-Received: by 2002:a5e:d917:: with SMTP id n23mr20820906iop.28.1571645819537; 
 Mon, 21 Oct 2019 01:16:59 -0700 (PDT)
MIME-Version: 1.0
References: <20191017190710.29985-1-jagan@amarulasolutions.com>
 <20191017190710.29985-5-jagan@amarulasolutions.com>
In-Reply-To: <20191017190710.29985-5-jagan@amarulasolutions.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Mon, 21 Oct 2019 13:46:48 +0530
Message-ID: <CAMty3ZBDYf4qDd+mBwiqJsy3VKnC1GsvjyizKuSDm4i0Fx6NwQ@mail.gmail.com>
Subject: Re: [PATCH v3 4/5] rockchip: Add Binman support
To: Simon Glass <sjg@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_011700_830103_59BD99EB 
X-CRM114-Status: GOOD (  17.61  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 U-Boot-Denx <u-boot@lists.denx.de>,
 "Matwey V . Kornilov" <matwey.kornilov@gmail.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

SGkgU2ltb24sCgpPbiBGcmksIE9jdCAxOCwgMjAxOSBhdCAxMjozOCBBTSBKYWdhbiBUZWtpIDxq
YWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4gd3JvdGU6Cj4KPiBUUEwtYmFzZWQgcm9ja2NoaXAg
cGxhdGZvcm0gbGlrZSByazMyODgsIHJrMzMyOCwgcmszMzY4Cj4gYW5kIHJrMzM5OSBoYXMgdGhy
ZWUgc3RhZ2UgYm9vdCBsb2FkZXJzIGxpa2UgVFBMLCBTUEwgYW5kCj4gVS1Cb290IHByb3Blci4g
Rm9yIGVhY2ggc3RhZ2Ugd2UgbmVlZCB0byBidXJuIHRoZSBpbWFnZQo+IG9uIHRvIGZsYXNoIHdp
dGggcmVzcGVjdGl2ZSBvZmZzZXRzLgo+Cj4gVGhpcyBwYXRjaCBjcmVhdGUgYSBzaW5nbGUgaW1h
Z2UgdXNpbmcgYmlubWFuLCBzbyB0aGF0Cj4gdXNlciBjYW4gZ2V0IHJpZCBvZiBidXJuaW5nIGRp
ZmZlcmVudCBzdGFnZSBib290IGltYWdlcy4KPgo+IFRoZSBuZXcgaW1hZ2UgY2FsbGVkICd1LWJv
b3Qtcm9ja2NoaXAtd2l0aC10cGwtc3BsLmJpbicKPiB3aGljaCBjYW4gYnVybiBpbnRvIGZsYXNo
IGxpa2U6Cj4KPiDigrkgc3VkbyBkZCBpZj11LWJvb3Qtcm9ja2NoaXAtd2l0aC10cGwtc3BsLmJp
biBvZj0vZGV2L3NkYSBzZWVrPTY0Cj4KPiBUaGlzIHdvdWxkIGVhc2lseSBleHRlbmQgaWYgb3Ro
ZXIgcm9ja2NoaXAgZmFtaWx5IFNvQydzIHdvdWxkCj4gbWFrZSB1c2Ugb2Ygc2luZ2xlIGltYWdl
IGNyZWF0aW9uLgo+Cj4gQ2M6IEtldmVyIFlhbmcgPGtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+
Cj4gQ2M6IE1hdHdleSBWLiBLb3JuaWxvdiA8bWF0d2V5Lmtvcm5pbG92QGdtYWlsLmNvbT4KPiBT
aWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KPiAt
LS0KPiAgTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMTAgKysrKysrKysrKwo+
ICBhcmNoL2FybS9LY29uZmlnICAgICAgICAgICAgICAgICAgfCAgMSArCj4gIGFyY2gvYXJtL2R0
cy9yazMyODgtdS1ib290LmR0c2kgICB8ICAyICsrCj4gIGFyY2gvYXJtL2R0cy9yazMzMjgtdS1i
b290LmR0c2kgICB8ICAyICsrCj4gIGFyY2gvYXJtL2R0cy9yazMzNjgtdS1ib290LmR0c2kgICB8
ICAyICsrCj4gIGFyY2gvYXJtL2R0cy9yazMzOTktdS1ib290LmR0c2kgICB8ICAyICsrCj4gIGFy
Y2gvYXJtL2R0cy9yb2NrY2hpcC11LWJvb3QuZHRzaSB8IDIxICsrKysrKysrKysrKysrKysrKysr
Kwo+ICBpbmNsdWRlL2NvbmZpZ3Mvcm9ja2NoaXAtY29tbW9uLmggfCAgMiArKwo+ICA4IGZpbGVz
IGNoYW5nZWQsIDQyIGluc2VydGlvbnMoKykKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJt
L2R0cy9yb2NrY2hpcC11LWJvb3QuZHRzaQo+Cj4gZGlmZiAtLWdpdCBhL01ha2VmaWxlIGIvTWFr
ZWZpbGUKPiBpbmRleCA5MThiNWQ1M2UwLi4wNDk3ODFlMGJhIDEwMDY0NAo+IC0tLSBhL01ha2Vm
aWxlCj4gKysrIGIvTWFrZWZpbGUKPiBAQCAtODg4LDYgKzg4OCw3IEBAIGVuZGlmCj4KPiAgaWZl
cSAoJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkkKENPTkZJR19TUEwpJChDT05GSUdfVFBMKSx5eXkp
Cj4gIEFMTC15ICs9IHNwbC91LWJvb3Qtc3BsLXJvY2tjaGlwLmJpbgo+ICtBTEwteSArPSB1LWJv
b3Qtcm9ja2NoaXAtd2l0aC10cGwtc3BsLmJpbgo+ICBlbmRpZgo+Cj4gIExERkxBR1NfdS1ib290
ICs9ICQoTERGTEFHU19GSU5BTCkKPiBAQCAtMTM0Niw2ICsxMzQ3LDE1IEBAIHRwbC91LWJvb3Qt
dHBsLmltZzogdHBsL3UtYm9vdC10cGwuYmluIEZPUkNFCj4gICAgICAgICAkKGNhbGwgaWZfY2hh
bmdlZCxta2ltYWdlKQo+ICBzcGwvdS1ib290LXNwbC1yb2NrY2hpcC5iaW46IHRwbC91LWJvb3Qt
dHBsLmltZyBzcGwvdS1ib290LXNwbC5iaW4gRk9SQ0UKPiAgICAgICAgICQoY2FsbCBpZl9jaGFu
Z2VkLGNhdCkKPiArCj4gK2lmZGVmIENPTkZJR19TUExfTE9BRF9GSVQKPiArUk9DS0NISVBfVUJP
T1RfSU1HIDo9IHUtYm9vdC5pdGIKPiArZWxzZQo+ICtST0NLQ0hJUF9VQk9PVF9JTUcgOj0gdS1i
b290LmltZwo+ICtlbmRpZgo+ICsKPiArdS1ib290LXJvY2tjaGlwLXdpdGgtdHBsLXNwbC5iaW46
IHNwbC91LWJvb3Qtc3BsLXJvY2tjaGlwLmJpbiAkKFJPQ0tDSElQX1VCT09UX0lNRykgRk9SQ0UK
PiArICAgICAgICQoY2FsbCBpZl9jaGFuZ2VkLGJpbm1hbikKPiAgZW5kaWYKPgo+ICBpZmVxICgk
KENPTkZJR19BUkNIX0xQQzMyWFgpJChDT05GSUdfU1BMKSx5eSkKPiBkaWZmIC0tZ2l0IGEvYXJj
aC9hcm0vS2NvbmZpZyBiL2FyY2gvYXJtL0tjb25maWcKPiBpbmRleCAxZGYyYWJhM2MyLi44N2Zh
MWY0M2Y0IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtL0tjb25maWcKPiArKysgYi9hcmNoL2FybS9L
Y29uZmlnCj4gQEAgLTE1OTQsNiArMTU5NCw3IEBAIGNvbmZpZyBBUkNIX1NUTTMyTVAKPiAgY29u
ZmlnIEFSQ0hfUk9DS0NISVAKPiAgICAgICAgIGJvb2wgIlN1cHBvcnQgUm9ja2NoaXAgU29DcyIK
PiAgICAgICAgIHNlbGVjdCBCTEsKPiArICAgICAgIHNlbGVjdCBCSU5NQU4gaWYgVFBMICYmIFNQ
TAo+ICAgICAgICAgc2VsZWN0IERNCj4gICAgICAgICBzZWxlY3QgRE1fR1BJTwo+ICAgICAgICAg
c2VsZWN0IERNX0kyQwo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9kdHMvcmszMjg4LXUtYm9vdC5k
dHNpIGIvYXJjaC9hcm0vZHRzL3JrMzI4OC11LWJvb3QuZHRzaQo+IGluZGV4IDNmMDBhM2I2ZDMu
LjZkMzE3MzUzNjIgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vZHRzL3JrMzI4OC11LWJvb3QuZHRz
aQo+ICsrKyBiL2FyY2gvYXJtL2R0cy9yazMyODgtdS1ib290LmR0c2kKPiBAQCAtMyw2ICszLDgg
QEAKPiAgICogQ29weXJpZ2h0IChDKSAyMDE5IFJvY2tjaGlwIEVsZWN0cm9uaWNzIENvLiwgTHRk
Cj4gICAqLwo+Cj4gKyNpbmNsdWRlICJyb2NrY2hpcC11LWJvb3QuZHRzaSIKPiArCj4gIC8gewo+
ICAgICAgICAgY2hvc2VuIHsKPiAgICAgICAgICAgICAgICAgdS1ib290LHNwbC1ib290LW9yZGVy
ID0gXAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9kdHMvcmszMzI4LXUtYm9vdC5kdHNpIGIvYXJj
aC9hcm0vZHRzL3JrMzMyOC11LWJvb3QuZHRzaQo+IGluZGV4IGZmYmQ2NTdlMzEuLjBjNTFhOGRi
ZmIgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vZHRzL3JrMzMyOC11LWJvb3QuZHRzaQo+ICsrKyBi
L2FyY2gvYXJtL2R0cy9yazMzMjgtdS1ib290LmR0c2kKPiBAQCAtMyw2ICszLDggQEAKPiAgICog
KEMpIENvcHlyaWdodCAyMDE5IFJvY2tjaGlwIEVsZWN0cm9uaWNzIENvLiwgTHRkCj4gICAqLwo+
Cj4gKyNpbmNsdWRlICJyb2NrY2hpcC11LWJvb3QuZHRzaSIKPiArCj4gIC8gewo+ICAgICAgICAg
YWxpYXNlcyB7Cj4gICAgICAgICAgICAgICAgIG1tYzAgPSAmZW1tYzsKPiBkaWZmIC0tZ2l0IGEv
YXJjaC9hcm0vZHRzL3JrMzM2OC11LWJvb3QuZHRzaSBiL2FyY2gvYXJtL2R0cy9yazMzNjgtdS1i
b290LmR0c2kKPiBpbmRleCAxZTdkMDc5MzE1Li40MWFjMDU0YjgxIDEwMDY0NAo+IC0tLSBhL2Fy
Y2gvYXJtL2R0cy9yazMzNjgtdS1ib290LmR0c2kKPiArKysgYi9hcmNoL2FybS9kdHMvcmszMzY4
LXUtYm9vdC5kdHNpCj4gQEAgLTIsMyArMiw1IEBACj4gIC8qCj4gICAqIENvcHlyaWdodCAoQykg
MjAxOSBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KPiAgICovCj4gKwo+
ICsjaW5jbHVkZSAicm9ja2NoaXAtdS1ib290LmR0c2kiCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJt
L2R0cy9yazMzOTktdS1ib290LmR0c2kgYi9hcmNoL2FybS9kdHMvcmszMzk5LXUtYm9vdC5kdHNp
Cj4gaW5kZXggMjczOGEzODg5ZS4uZmU4YTczZDY1MyAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9k
dHMvcmszMzk5LXUtYm9vdC5kdHNpCj4gKysrIGIvYXJjaC9hcm0vZHRzL3JrMzM5OS11LWJvb3Qu
ZHRzaQo+IEBAIC0zLDYgKzMsOCBAQAo+ICAgKiBDb3B5cmlnaHQgKEMpIDIwMTkgSmFnYW4gVGVr
aSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4gICAqLwo+Cj4gKyNpbmNsdWRlICJyb2Nr
Y2hpcC11LWJvb3QuZHRzaSIKPiArCj4gICZwbXUgewo+ICAgICAgICAgdS1ib290LGRtLXByZS1y
ZWxvYzsKPiAgfTsKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vZHRzL3JvY2tjaGlwLXUtYm9vdC5k
dHNpIGIvYXJjaC9hcm0vZHRzL3JvY2tjaGlwLXUtYm9vdC5kdHNpCj4gbmV3IGZpbGUgbW9kZSAx
MDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwLi5jNDk2MTA3MTE5Cj4gLS0tIC9kZXYvbnVsbAo+ICsr
KyBiL2FyY2gvYXJtL2R0cy9yb2NrY2hpcC11LWJvb3QuZHRzaQo+IEBAIC0wLDAgKzEsMjEgQEAK
PiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjArCj4gKy8qCj4gKyAqIENvcHly
aWdodCAoQykgMjAxOSBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KPiAr
ICovCj4gKwo+ICsjaW5jbHVkZSA8Y29uZmlnLmg+Cj4gKwo+ICsvIHsKPiArICAgICAgIGJpbm1h
biB7Cj4gKyAgICAgICAgICAgICAgIGZpbGVuYW1lID0gInUtYm9vdC1yb2NrY2hpcC13aXRoLXRw
bC1zcGwuYmluIjsKPiArICAgICAgICAgICAgICAgcGFkLWJ5dGUgPSA8MHhmZj47Cj4gKwo+ICsg
ICAgICAgICAgICAgICBibG9iIHsKPiArICAgICAgICAgICAgICAgICAgICAgICBmaWxlbmFtZSA9
ICJzcGwvdS1ib290LXNwbC1yb2NrY2hpcC5iaW4iOwo+ICsgICAgICAgICAgICAgICB9Owo+ICsK
PiArICAgICAgICAgICAgICAgdS1ib290LWltZyB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAg
b2Zmc2V0ID0gPENPTkZJR19TUExfUEFEX1RPPjsKPiArICAgICAgICAgICAgICAgfTsKCnUtYm9v
dC1pbWcgc2VlbXMgdG8gYmUgY29tcGF0aWJsZSBvciB3b3JraW5nIHdpdGggdS1ib290Lml0YiBi
dXQKaW5kZWVkIExpbnV4IGZhaWxlZCB0byBib290IHdpdGggJ1N0YXJ0aW5nIGtlcm5lbCAuLi4n
IGRvZXMgYmlubWFuCnJlYWxseSBrbm93IHRoYXQgdGhpcyBpcyBpdGI/IG9yIHNvbWUgb3Zlcmxh
cCBvbiBteSBpbWFnZSBvZmZzZXQsIG5vdApzdXJlLiBhbnkgaGVscD8KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
