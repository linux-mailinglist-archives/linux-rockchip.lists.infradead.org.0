Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8AA68905
	for <lists+linux-rockchip@lfdr.de>; Mon, 15 Jul 2019 14:39:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZoaCtHac4wHBQ+iua4JMbf9X2K5xEaEh/qI3T1O1IQQ=; b=io3JOy08ZRYS99GTEAGRX9hAr
	BFV1oTJdVsHFS9yd3gx8Cqy0b26PwFzDRs9bk3fVgxbiF1YnanojFL/3o/QKOtcCaQu8meY0WwrqD
	sSfjvO/7SuoNwECF+GmyDzMxXgucL7KY63/MXgfT7OoPT7LiWEZNIoAeXAzORzM651TblPOobKLLQ
	f5UzPDDEMkjeCXP6emchA0HCfJLR5lVpAJX1hTt1a3bhz9XU467b1hWN9tsdhjYhFCNSNhEUzEvee
	Oj77wQNDM2ok5FqBM/z4H4ZQ11m3tmn9/VkThbX/67KNi6oh+x69ffjMDmXXXLVovgSJNwec9DuJm
	6A8QKmQug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0GL-0001kw-Np; Mon, 15 Jul 2019 12:39:25 +0000
Received: from regular1.263xmail.com ([211.150.70.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0GI-0001kI-6W
 for linux-rockchip@lists.infradead.org; Mon, 15 Jul 2019 12:39:23 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.141])
 by regular1.263xmail.com (Postfix) with ESMTP id 1BCEA5F5;
 Mon, 15 Jul 2019 20:39:18 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P24106T140167434192640S1563194347689142_; 
 Mon, 15 Jul 2019 20:39:15 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <f592db89d2eeafb38410df596de5368e>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v2 07/99] ram: rk3399: Move macro after include files
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
 <20190617073252.27810-8-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <7c98d3c5-bec0-e20f-4dbb-51c53008524f@rock-chips.com>
Date: Mon, 15 Jul 2019 20:39:08 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190617073252.27810-8-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_053922_408524_9ABE56A5 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.197 listed in list.dnswl.org]
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

SmFnYW4sCgpPbiAyMDE5LzYvMTcg5LiL5Y2IMzozMSwgSmFnYW4gVGVraSB3cm90ZToKPiBNb3Zl
IHRoZSBtYWNybyBkZWZpbml0aW9ucyBhZnRlciBpbmNsdWRlIGZpbGVzIGZvciBiZXR0ZXIKPiBj
b2RlIHJlYWRhYmlsaXR5IGFuZCB0byBzYXRpc2Z5IGNvZGluZyBzdHlsZS4KPgo+IFNpZ25lZC1v
ZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgoKCk1heWJlIGFs
bCB0aGUgcGF0Y2hlcyBmb3IgY2xlYW4gdXAgb25seSBmb3Igc2RyYW1fcmszMzk5LmMsIHdpdGgg
b3V0IApjb2RlIGxvZ2ljCgpjaGFuZ2UsIGNhbiBzcXVhc2ggaW50byBvbmXCoCBjb21taXQ/CgoK
VGhhbmtzLAoKLSBLZXZlcgoKPiAtLS0KPiAgIGRyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3Jr
MzM5OS5jIHwgMjYgKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2Vk
LCAxMyBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYyBiL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3Nk
cmFtX3JrMzM5OS5jCj4gaW5kZXggZTZmNTJjOWY1OS4uMjBhM2U4OWMxNyAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+ICsrKyBiL2RyaXZlcnMvcmFt
L3JvY2tjaGlwL3NkcmFtX3JrMzM5OS5jCj4gQEAgLTIyLDYgKzIyLDE5IEBACj4gICAjaW5jbHVk
ZSA8bGludXgvZXJyLmg+Cj4gICAjaW5jbHVkZSA8dGltZS5oPgo+ICAgCj4gKyNkZWZpbmUgUFJF
U0VUX1NHUkZfSE9MRChuKQkoKDB4MSA8PCAoNiArIDE2KSkgfCAoKG4pIDw8IDYpKQo+ICsjZGVm
aW5lIFBSRVNFVF9HUElPMF9IT0xEKG4pCSgoMHgxIDw8ICg3ICsgMTYpKSB8ICgobikgPDwgNykp
Cj4gKyNkZWZpbmUgUFJFU0VUX0dQSU8xX0hPTEQobikJKCgweDEgPDwgKDggKyAxNikpIHwgKChu
KSA8PCA4KSkKPiArCj4gKyNkZWZpbmUgUEhZX0RSVl9PRFRfSElfWgkweDAKPiArI2RlZmluZSBQ
SFlfRFJWX09EVF8yNDAJCTB4MQo+ICsjZGVmaW5lIFBIWV9EUlZfT0RUXzEyMAkJMHg4Cj4gKyNk
ZWZpbmUgUEhZX0RSVl9PRFRfODAJCTB4OQo+ICsjZGVmaW5lIFBIWV9EUlZfT0RUXzYwCQkweGMK
PiArI2RlZmluZSBQSFlfRFJWX09EVF80OAkJMHhkCj4gKyNkZWZpbmUgUEhZX0RSVl9PRFRfNDAJ
CTB4ZQo+ICsjZGVmaW5lIFBIWV9EUlZfT0RUXzM0XzMJMHhmCj4gKwo+ICAgc3RydWN0IGNoYW5f
aW5mbyB7Cj4gICAJc3RydWN0IHJrMzM5OV9kZHJfcGN0bF9yZWdzICpwY3RsOwo+ICAgCXN0cnVj
dCByazMzOTlfZGRyX3BpX3JlZ3MgKnBpOwo+IEBAIC00MywxOSArNTYsNiBAQCBzdHJ1Y3QgZHJh
bV9pbmZvIHsKPiAgIAlzdHJ1Y3QgcmszMzk5X3BtdWdyZl9yZWdzICpwbXVncmY7Cj4gICB9Owo+
ICAgCj4gLSNkZWZpbmUgUFJFU0VUX1NHUkZfSE9MRChuKQkoKDB4MSA8PCAoNiArIDE2KSkgfCAo
KG4pIDw8IDYpKQo+IC0jZGVmaW5lIFBSRVNFVF9HUElPMF9IT0xEKG4pCSgoMHgxIDw8ICg3ICsg
MTYpKSB8ICgobikgPDwgNykpCj4gLSNkZWZpbmUgUFJFU0VUX0dQSU8xX0hPTEQobikJKCgweDEg
PDwgKDggKyAxNikpIHwgKChuKSA8PCA4KSkKPiAtCj4gLSNkZWZpbmUgUEhZX0RSVl9PRFRfSElf
WgkweDAKPiAtI2RlZmluZSBQSFlfRFJWX09EVF8yNDAJCTB4MQo+IC0jZGVmaW5lIFBIWV9EUlZf
T0RUXzEyMAkJMHg4Cj4gLSNkZWZpbmUgUEhZX0RSVl9PRFRfODAJCTB4OQo+IC0jZGVmaW5lIFBI
WV9EUlZfT0RUXzYwCQkweGMKPiAtI2RlZmluZSBQSFlfRFJWX09EVF80OAkJMHhkCj4gLSNkZWZp
bmUgUEhZX0RSVl9PRFRfNDAJCTB4ZQo+IC0jZGVmaW5lIFBIWV9EUlZfT0RUXzM0XzMJMHhmCj4g
LQo+ICAgI2lmIGRlZmluZWQoQ09ORklHX1RQTF9CVUlMRCkgfHwgXAo+ICAgCSghZGVmaW5lZChD
T05GSUdfVFBMKSAmJiBkZWZpbmVkKENPTkZJR19TUExfQlVJTEQpKQo+ICAgCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
