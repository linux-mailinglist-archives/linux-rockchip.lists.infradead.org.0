Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D58AF696D
	for <lists+linux-rockchip@lfdr.de>; Sun, 10 Nov 2019 15:19:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CRG/+UK6Dh+t9euy2RzXFf+Dcn42nlpSmkyDQDvHnJs=; b=kz8lS1Jn5KMHamOIfzJGyY9Dt
	4FYJkYONtJcyoBwGpXflSSaqN0M0sVZzBA0lV2sf2g40hzz4m1DnX8b2V3VQoJWyxvm9WfDQSPDiN
	36d8QuvEtikcqq82deggQ/b0D39MffGGdTsyVNhGHC8aUJcBZV44n2T5oe+hsbR2SuYl/DLvy55ST
	3WAWM2w3jwS8jh/oIBbtN3FfmdXo3Q4BmyHfeeYtfq5pAopolK2pk57okIKnn9+jdxPu0zlEN5fRZ
	clpiwpUG06y39/mPgma2/IRqCUBFzHMIeaGZn+QmM7BrRxqMwK8nskvWuDIjqf0bs2XrjII0sozLZ
	HJzWq4QLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTo3z-0005oe-9L; Sun, 10 Nov 2019 14:19:35 +0000
Received: from regular1.263xmail.com ([211.150.70.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTo3v-0005mW-Pj
 for linux-rockchip@lists.infradead.org; Sun, 10 Nov 2019 14:19:33 +0000
Received: from localhost (unknown [192.168.167.70])
 by regular1.263xmail.com (Postfix) with ESMTP id 051B7B5F;
 Sun, 10 Nov 2019 22:19:29 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.0.8] (unknown [112.49.232.43])
 by smtp.263.net (postfix) whith ESMTP id
 P17626T139913504741120S1573395567307607_; 
 Sun, 10 Nov 2019 22:19:28 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <7883eb53bb5bfd1b91175429f244b767>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: matwey.kornilov@gmail.com
X-SENDER-IP: 112.49.232.43
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v4 6/7] rockchip: Add Single boot image (with binman,
 pad_cat)
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20191023195652.7158-1-jagan@amarulasolutions.com>
 <20191023195652.7158-7-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <2df468d9-b76b-3ad9-ce18-a8c7afb45837@rock-chips.com>
Date: Sun, 10 Nov 2019 22:19:28 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191023195652.7158-7-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_061932_320064_69BA54A5 
X-CRM114-Status: GOOD (  17.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.195 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: u-boot@lists.denx.de, "Matwey V . Kornilov" <matwey.kornilov@gmail.com>,
 linux-amarula@amarulasolutions.com, linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvMTAvMjQg5LiK5Y2IMzo1NiwgSmFnYW4gVGVraSB3cm90ZToKPiBBbGwgcm9ja2No
aXAgcGxhdGZvcm1zIHN1cHBvcnQgVFBMIG9yIFNQTC1iYXNlZCBib290bG9hZGVyCj4gaW4gbWFp
bmxpbmUgd2l0aCBVLUJvb3QgcHJvcGVyIGFzIGZpbmFsIHN0YWdlLiBGb3IgZWFjaAo+IHN0YWdl
IHdlIG5lZWQgdG8gYnVybiB0aGUgaW1hZ2Ugb24gdG8gZmxhc2ggd2l0aCByZXNwZWN0aXZlCj4g
b2Zmc2V0cy4KPgo+IFRoaXMgcGF0Y2ggY3JlYXRlcyBhIHNpbmdsZSBib290IGltYWdlIGNvbXBv
bmVudCB1c2luZwo+IC0gYmlubWFuLCBmb3IgYXJtMzIgcm9ja2NoaXAgcGxhdGZvcm1zCj4gLSBw
YWRfY2F0LCBmb3IgYXJtNjQgcm9ja2NoaXAgcGxhdGZvcm1zLgo+Cj4gVGhpcyB3b3VsZCBoZWxw
IHVzZXJzIHRvIGdldCByaWQgb2YgYnVybmluZyBkaWZmZXJlbnQKPiBib290IHN0YWdlIGltYWdl
cy4KPgo+IFRoZSBuZXcgaW1hZ2UgY2FsbGVkICd1LWJvb3Qtcm9ja2NoaXAuYmluJwo+IHdoaWNo
IGNhbiBidXJuIGludG8gZmxhc2ggbGlrZToKPgo+IOKCuSBzdWRvIGRkIGlmPXUtYm9vdC1yb2Nr
Y2hpcC5iaW4gb2Y9L2Rldi9zZGEgc2Vlaz02NAo+Cj4gVGhpcyB3b3VsZCBzdXBwb3J0IGFsbCBy
b2NrY2hpcCBwbGF0Zm9ybXMsIGV4Y2VwdCByazMxMjgKPiBzaW5jZSBpdCBkb2Vzbid0IHN1cHBv
cnQgZm9yIFNQTCB5ZXQuCj4KPiBDYzogS2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBz
LmNvbT4KPiBDYzogTWF0d2V5IFYuIEtvcm5pbG92IDxtYXR3ZXkua29ybmlsb3ZAZ21haWwuY29t
Pgo+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29t
PgoKUmV2aWV3ZWQtYnk6IEtldmVyIFlhbmcgPGtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+CgpU
aGFua3MsCi0gS2V2ZXIKPiAtLS0KPiAgIE1ha2VmaWxlICAgICAgICAgICAgICAgICAgICAgICAg
ICB8IDE4ICsrKysrKysrKysrKysrLS0tLQo+ICAgYXJjaC9hcm0vS2NvbmZpZyAgICAgICAgICAg
ICAgICAgIHwgIDEgKwo+ICAgYXJjaC9hcm0vZHRzL3JrMzAzNi11LWJvb3QuZHRzaSAgIHwgIDIg
KysKPiAgIGFyY2gvYXJtL2R0cy9yazMyODgtdS1ib290LmR0c2kgICB8ICAyICsrCj4gICBhcmNo
L2FybS9kdHMvcm9ja2NoaXAtdS1ib290LmR0c2kgfCAyMSArKysrKysrKysrKysrKysrKysrKysK
PiAgIGluY2x1ZGUvY29uZmlncy9yb2NrY2hpcC1jb21tb24uaCB8ICAyICsrCj4gICA2IGZpbGVz
IGNoYW5nZWQsIDQyIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gICBjcmVhdGUgbW9k
ZSAxMDA2NDQgYXJjaC9hcm0vZHRzL3JvY2tjaGlwLXUtYm9vdC5kdHNpCj4KPiBkaWZmIC0tZ2l0
IGEvTWFrZWZpbGUgYi9NYWtlZmlsZQo+IGluZGV4IGE0Mjc4MTcwZDQuLjZjNzAxMDZjNmUgMTAw
NjQ0Cj4gLS0tIGEvTWFrZWZpbGUKPiArKysgYi9NYWtlZmlsZQo+IEBAIC04ODcsNyArODg3LDcg
QEAgQUxMLXkgKz0gdS1ib290LXdpdGgtZHRiLmJpbgo+ICAgZW5kaWYKPiAgIAo+ICAgaWZlcSAo
JChDT05GSUdfQVJDSF9ST0NLQ0hJUCkkKENPTkZJR19TUEwpLHl5KQo+IC1BTEwteSArPSB1LWJv
b3Qtc3BsLXJvY2tjaGlwLmJpbgo+ICtBTEwteSArPSB1LWJvb3Qtcm9ja2NoaXAuYmluCj4gICBl
bmRpZgo+ICAgCj4gICBMREZMQUdTX3UtYm9vdCArPSAkKExERkxBR1NfRklOQUwpCj4gQEAgLTEz
NDcsMTUgKzEzNDcsMjUgQEAgaWZlcSAoJChDT05GSUdfU1BMKSQoQ09ORklHX1RQTCkseXkpCj4g
ICBNS0lNQUdFRkxBR1NfdS1ib290LXRwbC1yb2NrY2hpcC5iaW4gPSAtbiAkKENPTkZJR19TWVNf
U09DKSAtVCAkKFJPQ0tDSElQX0lNR19UWVBFKQo+ICAgdHBsL3UtYm9vdC10cGwtcm9ja2NoaXAu
YmluOiB0cGwvdS1ib290LXRwbC5iaW4gRk9SQ0UKPiAgIAkkKGNhbGwgaWZfY2hhbmdlZCxta2lt
YWdlKQo+IC11LWJvb3Qtc3BsLXJvY2tjaGlwLmJpbjogdHBsL3UtYm9vdC10cGwtcm9ja2NoaXAu
YmluIHNwbC91LWJvb3Qtc3BsLmJpbiBGT1JDRQo+ICtzcGwvdS1ib290LXNwbC1yb2NrY2hpcC5i
aW46IHRwbC91LWJvb3QtdHBsLXJvY2tjaGlwLmJpbiBzcGwvdS1ib290LXNwbC5iaW4gRk9SQ0UK
PiAgIAkkKGNhbGwgaWZfY2hhbmdlZCxjYXQpCj4gICBlbHNlCj4gICBNS0lNQUdFRkxBR1NfdS1i
b290LXNwbC1yb2NrY2hpcC5iaW4gPSAtbiAkKENPTkZJR19TWVNfU09DKSAtVCAkKFJPQ0tDSElQ
X0lNR19UWVBFKQo+IC11LWJvb3Qtc3BsLXJvY2tjaGlwLmJpbjogc3BsL3UtYm9vdC1zcGwuYmlu
IEZPUkNFCj4gK3NwbC91LWJvb3Qtc3BsLXJvY2tjaGlwLmJpbjogc3BsL3UtYm9vdC1zcGwuYmlu
IEZPUkNFCj4gICAJJChjYWxsIGlmX2NoYW5nZWQsbWtpbWFnZSkKPiAgIGVuZGlmCj4gICAKPiAt
ZW5kaWYKPiAraWZlcSAoJChDT05GSUdfQVJNNjQpLCkKPiArdS1ib290LXJvY2tjaGlwLmJpbjog
c3BsL3UtYm9vdC1zcGwtcm9ja2NoaXAuYmluIHUtYm9vdC5pbWcgRk9SQ0UKPiArCSQoY2FsbCBp
Zl9jaGFuZ2VkLGJpbm1hbikKPiArZWxzZQo+ICtPQkpDT1BZRkxBR1NfdS1ib290LXJvY2tjaGlw
LmJpbiA9IC1JIGJpbmFyeSAtTyBiaW5hcnkgXAo+ICsJLS1wYWQtdG89JChDT05GSUdfU1BMX1BB
RF9UTykgLS1nYXAtZmlsbD0weGZmCj4gK3UtYm9vdC1yb2NrY2hpcC5iaW46IHNwbC91LWJvb3Qt
c3BsLXJvY2tjaGlwLmJpbiB1LWJvb3QuaXRiIEZPUkNFCj4gKwkkKGNhbGwgaWZfY2hhbmdlZCxw
YWRfY2F0KQo+ICtlbmRpZiAjIENPTkZJR19BUk02NAo+ICsKPiArZW5kaWYgIyBDT05GSUdfQVJD
SF9ST0NLQ0hJUAo+ICAgCj4gICBpZmVxICgkKENPTkZJR19BUkNIX0xQQzMyWFgpJChDT05GSUdf
U1BMKSx5eSkKPiAgIE1LSU1BR0VGTEFHU19scGMzMnh4LXNwbC5pbWcgPSAtVCBscGMzMnh4aW1h
Z2UgLWEgJChDT05GSUdfU1BMX1RFWFRfQkFTRSkKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vS2Nv
bmZpZyBiL2FyY2gvYXJtL0tjb25maWcKPiBpbmRleCAxZGYyYWJhM2MyLi44MTA3NDE0NjI2IDEw
MDY0NAo+IC0tLSBhL2FyY2gvYXJtL0tjb25maWcKPiArKysgYi9hcmNoL2FybS9LY29uZmlnCj4g
QEAgLTE1OTQsNiArMTU5NCw3IEBAIGNvbmZpZyBBUkNIX1NUTTMyTVAKPiAgIGNvbmZpZyBBUkNI
X1JPQ0tDSElQCj4gICAJYm9vbCAiU3VwcG9ydCBSb2NrY2hpcCBTb0NzIgo+ICAgCXNlbGVjdCBC
TEsKPiArCXNlbGVjdCBCSU5NQU4gaWYgIUFSTTY0Cj4gICAJc2VsZWN0IERNCj4gICAJc2VsZWN0
IERNX0dQSU8KPiAgIAlzZWxlY3QgRE1fSTJDCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2R0cy9y
azMwMzYtdS1ib290LmR0c2kgYi9hcmNoL2FybS9kdHMvcmszMDM2LXUtYm9vdC5kdHNpCj4gaW5k
ZXggMWU3ZDA3OTMxNS4uNDFhYzA1NGI4MSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9kdHMvcmsz
MDM2LXUtYm9vdC5kdHNpCj4gKysrIGIvYXJjaC9hcm0vZHRzL3JrMzAzNi11LWJvb3QuZHRzaQo+
IEBAIC0yLDMgKzIsNSBAQAo+ICAgLyoKPiAgICAqIENvcHlyaWdodCAoQykgMjAxOSBKYWdhbiBU
ZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KPiAgICAqLwo+ICsKPiArI2luY2x1ZGUg
InJvY2tjaGlwLXUtYm9vdC5kdHNpIgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9kdHMvcmszMjg4
LXUtYm9vdC5kdHNpIGIvYXJjaC9hcm0vZHRzL3JrMzI4OC11LWJvb3QuZHRzaQo+IGluZGV4IDNm
MDBhM2I2ZDMuLjZkMzE3MzUzNjIgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vZHRzL3JrMzI4OC11
LWJvb3QuZHRzaQo+ICsrKyBiL2FyY2gvYXJtL2R0cy9yazMyODgtdS1ib290LmR0c2kKPiBAQCAt
Myw2ICszLDggQEAKPiAgICAqIENvcHlyaWdodCAoQykgMjAxOSBSb2NrY2hpcCBFbGVjdHJvbmlj
cyBDby4sIEx0ZAo+ICAgICovCj4gICAKPiArI2luY2x1ZGUgInJvY2tjaGlwLXUtYm9vdC5kdHNp
Igo+ICsKPiAgIC8gewo+ICAgCWNob3NlbiB7Cj4gICAJCXUtYm9vdCxzcGwtYm9vdC1vcmRlciA9
IFwKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vZHRzL3JvY2tjaGlwLXUtYm9vdC5kdHNpIGIvYXJj
aC9hcm0vZHRzL3JvY2tjaGlwLXUtYm9vdC5kdHNpCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBp
bmRleCAwMDAwMDAwMDAwLi5iYzBiMTQxMmEyCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2FyY2gv
YXJtL2R0cy9yb2NrY2hpcC11LWJvb3QuZHRzaQo+IEBAIC0wLDAgKzEsMjEgQEAKPiArLy8gU1BE
WC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjArCj4gKy8qCj4gKyAqIENvcHlyaWdodCAoQykg
MjAxOSBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KPiArICovCj4gKwo+
ICsjaW5jbHVkZSA8Y29uZmlnLmg+Cj4gKwo+ICsvIHsKPiArCWJpbm1hbiB7Cj4gKwkJZmlsZW5h
bWUgPSAidS1ib290LXJvY2tjaGlwLmJpbiI7Cj4gKwkJcGFkLWJ5dGUgPSA8MHhmZj47Cj4gKwo+
ICsJCWJsb2Igewo+ICsJCQlmaWxlbmFtZSA9ICJzcGwvdS1ib290LXNwbC1yb2NrY2hpcC5iaW4i
Owo+ICsJCX07Cj4gKwo+ICsJCXUtYm9vdC1pbWcgewo+ICsJCQlvZmZzZXQgPSA8Q09ORklHX1NQ
TF9QQURfVE8+Owo+ICsJCX07Cj4gKwl9Owo+ICt9Owo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2Nv
bmZpZ3Mvcm9ja2NoaXAtY29tbW9uLmggYi9pbmNsdWRlL2NvbmZpZ3Mvcm9ja2NoaXAtY29tbW9u
LmgKPiBpbmRleCA2OGUxMTA1YTRiLi5kN2Y1Y2E5ZmE0IDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUv
Y29uZmlncy9yb2NrY2hpcC1jb21tb24uaAo+ICsrKyBiL2luY2x1ZGUvY29uZmlncy9yb2NrY2hp
cC1jb21tb24uaAo+IEBAIC05LDYgKzksOCBAQAo+ICAgCj4gICAjZGVmaW5lIENPTkZJR19TWVNf
TlMxNjU1MF9NRU0zMgo+ICAgCj4gKyNkZWZpbmUgQ09ORklHX1NQTF9QQURfVE8JCTgzNTU4NDAK
PiArCj4gICAjaWZuZGVmIENPTkZJR19TUExfQlVJTEQKPiAgIAo+ICAgLyogRmlyc3QgdHJ5IHRv
IGJvb3QgZnJvbSBTRCAoaW5kZXggMCksIHRoZW4gZU1NQyAoaW5kZXggMSkgKi8KCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
