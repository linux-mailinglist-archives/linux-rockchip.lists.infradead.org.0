Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A74A6A31E
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 09:42:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jmW1LlDUajanCgG0r5mwtUhvs9NU7K8MTFcCq+IZS3Q=; b=hkOMESbfJSu3siRdtY6QGDnfs
	7gD6WgqVPJhtQ3QvQLPDxU53ZOl1QVNH5NZD+LmYP6twvmbehFkoy+AdvzTa/y88whGCwfUNA/Z47
	7kxGAgyHSB1E4KrPeXb90d82u3GNX0jsZAEU3IMqi05We11uqBPktFWNR4fm8h+5PgWLcpa6UHdxL
	FJCeTQjbHnLP2HWWnhmY3eWGrcBy7WwFzrVl2WQV3rEIPb3W17Ny0syue7MZZWkSo3noVD+Jabhso
	mJ/jvc0ft+8uFxWEk0obestHyHSfyJDGOhy01qDY6hn2C2/piZfuU1wq7R6enwfcL1pZTopIzmzYJ
	mN5BKCFDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnI6N-0006yH-JV; Tue, 16 Jul 2019 07:42:19 +0000
Received: from regular1.263xmail.com ([211.150.70.205])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnI6J-0006xm-PY
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 07:42:17 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id 473314ED;
 Tue, 16 Jul 2019 15:42:13 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.9] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P15150T140694066247424S1563262932365827_; 
 Tue, 16 Jul 2019 15:42:13 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <942d963ed6833cb551ed56ceb05f731c>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 10/18] ram: rockchip: Add debug sdram driver
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
 <20190715182856.21688-11-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <ceef388e-0185-53b1-fd4f-846c6c6fb876@rock-chips.com>
Date: Tue, 16 Jul 2019 15:42:12 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715182856.21688-11-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_004216_185425_C9557627 
X-CRM114-Status: GOOD (  17.44  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.205 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvNy8xNiDkuIrljYgyOjI4LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCBzZHJhbSBk
cml2ZXIgdG8gaGFuZGxlIGRlYnVnIGFjcm9zcyByb2NrY2hpcCBTb0NzLgo+Cj4gVGhpcyB3b3Vs
ZCBoZWxwIHRvIGltcHJvdmUgY29kZSBkZWJ1Z2dpbmcgZmVhdHVyZSBmb3IKPiBzZHJhbSBkcml2
ZXJzIGluIHJvY2tjaGlwIGZhbWlseSwgd2hvZXZlciB3YW50cyB0bwo+IGRlYnVnIHRoZSBkcml2
ZXIgc2hvdWxkIGNhbGwgdGhlc2UgY29yZSBkZWJ1ZyBjb2RlIG9uCj4gdGhlaXIgcmVzcGVjdGl2
ZSBwbGF0Zm9ybSBzZHJhbSBkcml2ZXJzLgo+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8
amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4gU2lnbmVkLW9mZi1ieTogWW91TWluIENoZW4g
PGN5bUByb2NrLWNoaXBzLmNvbT4KClJldmlld2VkLWJ5OiBLZXZlciBZYW5nIDxLZXZlci55YW5n
QHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLAogwqAtIEtldmVyCj4gLS0tCj4gICAuLi4vaW5jbHVk
ZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJhbV9jb21tb24uaCAgfCAgOSArKysrKwo+ICAgZHJpdmVy
cy9yYW0vcm9ja2NoaXAvS2NvbmZpZyAgICAgICAgICAgICAgICAgIHwgIDkgKysrKysKPiAgIGRy
aXZlcnMvcmFtL3JvY2tjaGlwL01ha2VmaWxlICAgICAgICAgICAgICAgICB8ICAxICsKPiAgIGRy
aXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX2RlYnVnLmMgICAgICAgICAgICB8IDM0ICsrKysrKysr
KysrKysrKysrKysKPiAgIDQgZmlsZXMgY2hhbmdlZCwgNTMgaW5zZXJ0aW9ucygrKQo+ICAgY3Jl
YXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX2RlYnVnLmMKPgo+IGRp
ZmYgLS1naXQgYS9hcmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3NkcmFtX2NvbW1v
bi5oIGIvYXJjaC9hcm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJhbV9jb21tb24uaAo+
IGluZGV4IDdhYzI1YWYzMjcuLjE3MWIyMzNmOTUgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vaW5j
bHVkZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJhbV9jb21tb24uaAo+ICsrKyBiL2FyY2gvYXJtL2lu
Y2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvc2RyYW1fY29tbW9uLmgKPiBAQCAtOTIsNCArOTIsMTMg
QEAgc2l6ZV90IHJvY2tjaGlwX3NkcmFtX3NpemUocGh5c19hZGRyX3QgcmVnKTsKPiAgIAo+ICAg
LyogQ2FsbGVkIGJ5IFUtQm9vdCBib2FyZF9pbml0X3IgZm9yIFJvY2tjaGlwIFNvQ3MgKi8KPiAg
IGludCBkcmFtX2luaXQodm9pZCk7Cj4gKwo+ICsjaWYgIWRlZmluZWQoQ09ORklHX1JBTV9ST0NL
Q0hJUF9ERUJVRykKPiAraW5saW5lIHZvaWQgc2RyYW1fcHJpbnRfZHJhbV90eXBlKHVuc2lnbmVk
IGNoYXIgZHJhbXR5cGUpCj4gK3sKPiArfQo+ICsjZWxzZQo+ICt2b2lkIHNkcmFtX3ByaW50X2Ry
YW1fdHlwZSh1bnNpZ25lZCBjaGFyIGRyYW10eXBlKTsKPiArI2VuZGlmIC8qIENPTkZJR19SQU1f
Uk9DS0NISVBfREVCVUcgKi8KPiArCj4gICAjZW5kaWYKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9y
YW0vcm9ja2NoaXAvS2NvbmZpZyBiL2RyaXZlcnMvcmFtL3JvY2tjaGlwL0tjb25maWcKPiBpbmRl
eCA5OTVjYjQ4N2I4Li4xNTFmZmI2ODRkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcmFtL3JvY2tj
aGlwL0tjb25maWcKPiArKysgYi9kcml2ZXJzL3JhbS9yb2NrY2hpcC9LY29uZmlnCj4gQEAgLTcs
NiArNywxNSBAQCBjb25maWcgUkFNX1JPQ0tDSElQCj4gICAKPiAgIGlmIFJBTV9ST0NLQ0hJUAo+
ICAgCj4gK2NvbmZpZyBSQU1fUk9DS0NISVBfREVCVUcKPiArCWJvb2wgIlJvY2tjaGlwIHJhbSBk
cml2ZXJzIGRlYnVnZ2luZyIKPiArCWhlbHAKPiArCSAgVGhpcyBlbmFibGVzIGRlYnVnZ2luZyBy
YW0gZHJpdmVyIEFQSSdzIGZvciB0aGUgcGxhdGZvcm1zCj4gKwkgIGJhc2VkIG9uIFJvY2tjaGlw
IFNvQ3MuCj4gKwo+ICsJICBUaGlzIGlzIGFuIG9wdGlvbiBmb3IgZGV2ZWxvcGVycyB0byB1bmRl
cnN0YW5kIHRoZSByYW0gZHJpdmVycwo+ICsJICBpbml0aWFsaXphdGlvbiwgY29uZmlndXJhdGlv
bnMgYW5kIGV0Yy4KPiArCj4gICBjb25maWcgUkFNX1JLMzM5OQo+ICAgCWJvb2wgIlJhbSBkcml2
ZXIgZm9yIFJvY2tjaGlwIFJLMzM5OSIKPiAgIAlkZWZhdWx0IFJPQ0tDSElQX1JLMzM5OQo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL3JhbS9yb2NrY2hpcC9NYWtlZmlsZSBiL2RyaXZlcnMvcmFtL3Jv
Y2tjaGlwL01ha2VmaWxlCj4gaW5kZXggMDdkNGI2MmE5ZC4uZmViMWY4MmQwMCAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL3JhbS9yb2NrY2hpcC9NYWtlZmlsZQo+ICsrKyBiL2RyaXZlcnMvcmFtL3Jv
Y2tjaGlwL01ha2VmaWxlCj4gQEAgLTMsNiArMyw3IEBACj4gICAjIENvcHlyaWdodCAoYykgMjAx
NyBUaGVvYnJvbWEgU3lzdGVtcyBEZXNpZ24gdW5kIENvbnN1bHRpbmcgR21iSAo+ICAgIwo+ICAg
Cj4gK29iai0kKENPTkZJR19SQU1fUk9DS0NISVBfREVCVUcpICs9IHNkcmFtX2RlYnVnLm8KPiAg
IG9iai0kKENPTkZJR19ST0NLQ0hJUF9SSzMzNjgpID0gZG1jLXJrMzM2OC5vCj4gICBvYmotJChD
T05GSUdfUk9DS0NISVBfUkszMTI4KSA9IHNkcmFtX3JrMzEyOC5vCj4gICBvYmotJChDT05GSUdf
Uk9DS0NISVBfUkszMTg4KSA9IHNkcmFtX3JrMzE4OC5vCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
cmFtL3JvY2tjaGlwL3NkcmFtX2RlYnVnLmMgYi9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9k
ZWJ1Zy5jCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwLi5jMTNlMTQw
ZmE1Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX2Rl
YnVnLmMKPiBAQCAtMCwwICsxLDM0IEBACj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAo
R1BMLTIuMCsgT1IgTUlUKQo+ICsvKgo+ICsgKiAoQykgQ29weXJpZ2h0IDIwMTkgUm9ja2NoaXAg
RWxlY3Ryb25pY3MgQ28uLCBMdGQKPiArICogKEMpIENvcHlyaWdodCAyMDE5IEFtYXJ1bGEgU29s
dXRpb25zLgo+ICsgKiBBdXRob3I6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMu
Y29tPgo+ICsgKi8KPiArCj4gKyNpbmNsdWRlIDxjb21tb24uaD4KPiArI2luY2x1ZGUgPGRlYnVn
X3VhcnQuaD4KPiArI2luY2x1ZGUgPGFzbS9hcmNoLXJvY2tjaGlwL3NkcmFtX2NvbW1vbi5oPgo+
ICsKPiArdm9pZCBzZHJhbV9wcmludF9kcmFtX3R5cGUodW5zaWduZWQgY2hhciBkcmFtdHlwZSkK
PiArewo+ICsJc3dpdGNoIChkcmFtdHlwZSkgewo+ICsJY2FzZSBERFIzOgo+ICsJCXByaW50YXNj
aWkoIkREUjMiKTsKPiArCQlicmVhazsKPiArCWNhc2UgRERSNDoKPiArCQlwcmludGFzY2lpKCJE
RFI0Iik7Cj4gKwkJYnJlYWs7Cj4gKwljYXNlIExQRERSMjoKPiArCQlwcmludGFzY2lpKCJMUERE
UjIiKTsKPiArCQlicmVhazsKPiArCWNhc2UgTFBERFIzOgo+ICsJCXByaW50YXNjaWkoIkxQRERS
MyIpOwo+ICsJCWJyZWFrOwo+ICsJY2FzZSBMUEREUjQ6Cj4gKwkJcHJpbnRhc2NpaSgiTFBERFI0
Iik7Cj4gKwkJYnJlYWs7Cj4gKwlkZWZhdWx0Ogo+ICsJCXByaW50YXNjaWkoIlVua25vd24gRGV2
aWNlIik7Cj4gKwkJYnJlYWs7Cj4gKwl9Cj4gK30KCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
