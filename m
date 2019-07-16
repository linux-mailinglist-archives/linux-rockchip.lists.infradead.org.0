Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EADB46A31B
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 09:41:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a5JYEHf6VIxH6O9uFxXLxLLi8xMiVEdO4Tekncjiv3k=; b=NLjhPUBw1+SGU5Z/5j/XpX12A
	kqxkAW3xI7y04Y4AXnZb+kyDsl55+2fhea2A/Tb3FiYnZGovM0dlKpyt1FVO8kuzye3MDlPBTDWRh
	WLNHqxMoJfCAkRwY8u43hD4cdRWCWf9+yliXFnSLR0QyTlnCxPtwnRwuHozSd21odFLo8rXZZYyux
	8DZd0ps1KP8edW77V5fvwoDmueiqdqoDWoQwuBbckDOMYH0VAXg7+ooFvEiEYqqGBD5oEkExorzc4
	YSAhiqqpfCTesZR3d6yh/pQSmanpCSdwYd+jd1y6kg4WKDqDOTnX6R+DnHn+wXjGtHrW8W3eo7Gzw
	nFt1cdeTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnI5G-0006ox-QT; Tue, 16 Jul 2019 07:41:10 +0000
Received: from regular1.263xmail.com ([211.150.70.206])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnI5D-0006ob-8j
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 07:41:08 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.167.224])
 by regular1.263xmail.com (Postfix) with ESMTP id A3C6529E;
 Tue, 16 Jul 2019 15:41:04 +0800 (CST)
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
 P24020T140245089638144S1563262863049326_; 
 Tue, 16 Jul 2019 15:41:04 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <a7e28c7f969d173a7830a01e42909b51>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 08/18] ram: rockchip: Add initial Kconfig
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190715182856.21688-1-jagan@amarulasolutions.com>
 <20190715182856.21688-9-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <989a153c-29cc-5ebb-0355-bbd5f8c90ab1@rock-chips.com>
Date: Tue, 16 Jul 2019 15:41:03 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715182856.21688-9-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_004107_510858_8828BED7 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.206 listed in list.dnswl.org]
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

Ck9uIDIwMTkvNy8xNiDkuIrljYgyOjI4LCBKYWdhbiBUZWtpIHdyb3RlOgo+IFJpZ2h0IG5vdyBz
ZHJhbSBkcml2ZXJzIGluIHJvY2tjaGlwIFNvQyBhcmUgYnVpbHQgYmFzZWQKPiBvbiB0aGUgU29D
IGNvbmZpZ3Mgd2hpY2ggbWF5IG5vdCBiZSBhbiBhZGVxdWF0ZSBzb2x1dGlvbnMKPiB3aGlsZSBh
ZGRpbmcgY29tbW9uIG9yIGRlYnVnIGRyaXZlci4KPgo+IFNvLCBhZGQgbWVhbmluZ2Z1bCBLY29u
ZmlnIG9wdGlvbnMgc3RhcnQgd2l0aCByazMzOTkuCj4KPiBTaWduZWQtb2ZmLWJ5OiBKYWdhbiBU
ZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KClJldmlld2VkLWJ5OiBLZXZlciBZYW5n
IDxLZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLAogwqAtIEtldmVyCj4gLS0tCj4g
ICBkcml2ZXJzL3JhbS9LY29uZmlnICAgICAgICAgICB8ICAxICsKPiAgIGRyaXZlcnMvcmFtL3Jv
Y2tjaGlwL0tjb25maWcgIHwgMTcgKysrKysrKysrKysrKysrKysKPiAgIGRyaXZlcnMvcmFtL3Jv
Y2tjaGlwL01ha2VmaWxlIHwgIDIgKy0KPiAgIDMgZmlsZXMgY2hhbmdlZCwgMTkgaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvcmFtL3Jv
Y2tjaGlwL0tjb25maWcKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3JhbS9LY29uZmlnIGIvZHJp
dmVycy9yYW0vS2NvbmZpZwo+IGluZGV4IGZiZjdkN2IyMGYuLjU2OGQ4ZjJjNmEgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9yYW0vS2NvbmZpZwo+ICsrKyBiL2RyaXZlcnMvcmFtL0tjb25maWcKPiBA
QCAtNTQsNCArNTQsNSBAQCBjb25maWcgSzNfQU02NTRfRERSU1MKPiAgIAkgIGNvbmZpZyBhZGQg
c3VwcG9ydCBmb3IgdGhlIGluaXRpYWxpemF0aW9uIG9mIHRoZSBleHRlcm5hbAo+ICAgCSAgU0RS
QU0gZGV2aWNlcyBjb25uZWN0ZWQgdG8gRERSIHN1YnN5c3RlbS4KPiAgIAo+ICtzb3VyY2UgImRy
aXZlcnMvcmFtL3JvY2tjaGlwL0tjb25maWciCj4gICBzb3VyY2UgImRyaXZlcnMvcmFtL3N0bTMy
bXAxL0tjb25maWciCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcmFtL3JvY2tjaGlwL0tjb25maWcg
Yi9kcml2ZXJzL3JhbS9yb2NrY2hpcC9LY29uZmlnCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBp
bmRleCAwMDAwMDAwMDAwLi45OTVjYjQ4N2I4Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZl
cnMvcmFtL3JvY2tjaGlwL0tjb25maWcKPiBAQCAtMCwwICsxLDE3IEBACj4gK2NvbmZpZyBSQU1f
Uk9DS0NISVAKPiArCWJvb2wgIlJhbSBkcml2ZXJzIHN1cHBvcnQgZm9yIFJvY2tjaGlwIFNvQ3Mi
Cj4gKwlkZXBlbmRzIG9uIFJBTSAmJiBBUkNIX1JPQ0tDSElQCj4gKwlkZWZhdWx0IHkKPiArCWhl
bHAKPiArCSAgVGhpcyBlbmFibGVzIHN1cHBvcnQgZm9yIHJhbSBkcml2ZXJzIFJvY2tjaGlwIFNv
Q3MuCj4gKwo+ICtpZiBSQU1fUk9DS0NISVAKPiArCj4gK2NvbmZpZyBSQU1fUkszMzk5Cj4gKwli
b29sICJSYW0gZHJpdmVyIGZvciBSb2NrY2hpcCBSSzMzOTkiCj4gKwlkZWZhdWx0IFJPQ0tDSElQ
X1JLMzM5OQo+ICsJaGVscAo+ICsJICBUaGlzIGVuYWJsZXMgcmFtIGRyaXZlcnMgc3VwcG9ydCBm
b3IgdGhlIHBsYXRmb3JtcyBiYXNlZCBvbgo+ICsJICBSb2NrY2hpcCBSSzMzOTkgU29DLgo+ICsK
PiArZW5kaWYgIyBSQU1fUk9DS0NISVAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9yYW0vcm9ja2No
aXAvTWFrZWZpbGUgYi9kcml2ZXJzL3JhbS9yb2NrY2hpcC9NYWtlZmlsZQo+IGluZGV4IDVkZjE5
NjA2NmQuLjA3ZDRiNjJhOWQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9yYW0vcm9ja2NoaXAvTWFr
ZWZpbGUKPiArKysgYi9kcml2ZXJzL3JhbS9yb2NrY2hpcC9NYWtlZmlsZQo+IEBAIC05LDQgKzks
NCBAQCBvYmotJChDT05GSUdfUk9DS0NISVBfUkszMTg4KSA9IHNkcmFtX3JrMzE4OC5vCj4gICBv
YmotJChDT05GSUdfUk9DS0NISVBfUkszMjJYKSA9IHNkcmFtX3JrMzIyeC5vCj4gICBvYmotJChD
T05GSUdfUk9DS0NISVBfUkszMjg4KSA9IHNkcmFtX3JrMzI4OC5vCj4gICBvYmotJChDT05GSUdf
Uk9DS0NISVBfUkszMzI4KSA9IHNkcmFtX3JrMzMyOC5vCj4gLW9iai0kKENPTkZJR19ST0NLQ0hJ
UF9SSzMzOTkpID0gc2RyYW1fcmszMzk5Lm8KPiArb2JqLSQoQ09ORklHX1JBTV9SSzMzOTkpICs9
IHNkcmFtX3JrMzM5OS5vCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
