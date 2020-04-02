Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 383C019C163
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 14:47:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=APs8A/6MCxLHPMDUZXB4maJ66esQ0hrp6V1Wgn8eUdk=; b=sYx2Rwb3++W881fzpyqf2evdY
	W1Auv1Odt4UJrMJodtoYPPlwQdzu4/E6lHqIqHZQIDSwPlova9yrJaPQOM0pHRwyLdKak59vDIpRT
	v5gPrYYquLSESpFIcd//eHuZQb0AEWQ9xj6JUPWNMf9fRPCqHTMGKgK6Y4hO3XALzzSbvQ7b66rVx
	+ETubBsDsblOC1l5brLIPALxZHtHThX/0wR0yTW8psbF82E4NycEZqLHuxoYQb7R+z8xjjeBWluq3
	9j5+H1KHsxO8BHaeLdP4cmeM//WSQ8n9DQ7QSX1cv83N5GaNjEsHUzcOwrHpEA6s/TDgY2n2vpu90
	2IJTuwGdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJzG0-0001Qz-CB; Thu, 02 Apr 2020 12:47:40 +0000
Received: from regular1.263xmail.com ([211.150.70.206])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJzFx-0001QO-29
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 12:47:38 +0000
Received: from localhost (unknown [192.168.167.16])
 by regular1.263xmail.com (Postfix) with ESMTP id 350AF229;
 Thu,  2 Apr 2020 20:47:30 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED: 0
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.0.111] (unknown [112.49.233.3])
 by smtp.263.net (postfix) whith ESMTP id
 P28156T139775579215616S1585831650101203_; 
 Thu, 02 Apr 2020 20:47:31 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <d41bd1f3fb38ace99ead31309d78fa16>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 112.49.233.3
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v3 2/5] video: rockchip: Fix vop modes for rk3399
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Anatolij Gustschin <agust@denx.de>
References: <20200402114125.2501-1-jagan@amarulasolutions.com>
 <20200402114125.2501-3-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <0e56cdfe-078d-ed45-5420-58b6ecd5c6f8@rock-chips.com>
Date: Thu, 2 Apr 2020 20:47:29 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200402114125.2501-3-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_054737_500978_F0664D6F 
X-CRM114-Status: GOOD (  16.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.206 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.150.70.206 listed in wl.mailspike.net]
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 sunil@amarulasolutions.com, linux-amarula@amarulasolutions.com,
 Mark Kettenis <mark.kettenis@xs4all.nl>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvNC8yIOS4i+WNiDc6NDEsIEphZ2FuIFRla2kgd3JvdGU6Cj4gVk9QIGRpc3BsYXkg
ZW5kcG9pbnQgcGlwZWxpbmUgY29uZmlndXJhdGlvbiBpcyBkaWZmZXJzCj4gYmV0d2VlbiByazMy
ODggdnMgcmszMzk5Lgo+Cj4gVGhlc2UgVk9QIHBpcGVsaW5lIGNvbmZpZ3VyYXRpb24gZGVwZW5k
cyBvbiBob3cgdGhlCj4gZGlmZmVyZW50IGRpc3BsYXkgaW50ZXJmYWNlcyBjb25uZWN0ZWQgaW4g
c2VxdWVuY2UgdG8KPiBJTiBhbmQgT1VUIHBvcnRzIGxpa2UgZm9yLAo+Cj4gUkszMjg4Ogo+Cj4g
dm9wYl9vdXQ6IHBvcnQgewo+IAkjYWRkcmVzcy1jZWxscyA9IDwxPjsKPiAJI3NpemUtY2VsbHMg
PSA8MD47Cj4gCXZvcGJfb3V0X2VkcDogZW5kcG9pbnRAMCB7Cj4gCQlyZWcgPSA8MD47Cj4gCQly
ZW1vdGUtZW5kcG9pbnQgPSA8JmVkcF9pbl92b3BiPjsKPiAJfTsKPiAJdm9wYl9vdXRfaGRtaTog
ZW5kcG9pbnRAMSB7Cj4gCQlyZWcgPSA8MT47Cj4gICAgICAgICAgICAgICAgICByZW1vdGUtZW5k
cG9pbnQgPSA8JmhkbWlfaW5fdm9wYj47Cj4gICAgICAgICAgfTsKPiAgICAgICAgICB2b3BiX291
dF9sdmRzOiBlbmRwb2ludEAyIHsKPiAgICAgICAgICAgICAgICAgIHJlZyA9IDwyPjsKPiAgICAg
ICAgICAgICAgICAgIHJlbW90ZS1lbmRwb2ludCA9IDwmbHZkc19pbl92b3BiPjsKPiAgICAgICAg
ICB9Owo+ICAgICAgICAgIHZvcGJfb3V0X21pcGk6IGVuZHBvaW50QDMgewo+ICAgICAgICAgICAg
ICAgICAgcmVnID0gPDM+Owo+ICAgICAgICAgICAgICAgICAgcmVtb3RlLWVuZHBvaW50ID0gPCZt
aXBpX2luX3ZvcGI+Owo+ICAgICAgICAgIH07Cj4gfTsKPgo+IFJLMzM5OToKPgo+IHZvcGJfb3V0
OiBwb3J0IHsKPiAgICAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gICAgICAgICAgICNz
aXplLWNlbGxzID0gPDA+Owo+ICAgICAgICAgICB2b3BiX291dF9lZHA6IGVuZHBvaW50QDAgewo+
ICAgICAgICAgICAgICAgICAgcmVnID0gPDA+Owo+ICAgICAgICAgICAgICAgICAgcmVtb3RlLWVu
ZHBvaW50ID0gPCZlZHBfaW5fdm9wYj47Cj4gICAgICAgICAgIH07Cj4gICAgICAgICAgIHZvcGJf
b3V0X21pcGk6IGVuZHBvaW50QDEgewo+ICAgICAgICAgICAgICAgICAgcmVnID0gPDE+Owo+ICAg
ICAgICAgICAgICAgICAgcmVtb3RlLWVuZHBvaW50ID0gPCZtaXBpX2luX3ZvcGI+Owo+ICAgICAg
ICAgICB9Owo+ICAgICAgICAgICB2b3BiX291dF9oZG1pOiBlbmRwb2ludEAyIHsKPiAgICAgICAg
ICAgICAgICAgIHJlZyA9IDwyPjsKPiAgICAgICAgICAgICAgICAgIHJlbW90ZS1lbmRwb2ludCA9
IDwmaGRtaV9pbl92b3BiPjsKPiAgICAgICAgICAgfTsKPiAgICAgICAgICAgdm9wYl9vdXRfbWlw
aTE6IGVuZHBvaW50QDMgewo+ICAgICAgICAgICAgICAgICAgcmVnID0gPDM+Owo+ICAgICAgICAg
ICAgICAgICAgcmVtb3RlLWVuZHBvaW50ID0gPCZtaXBpMV9pbl92b3BiPjsKPiAgICAgICAgICAg
fTsKPiAgICAgICAgICAgdm9wYl9vdXRfZHA6IGVuZHBvaW50QDQgewo+ICAgICAgICAgICAgICAg
ICAgcmVnID0gPDQ+Owo+ICAgICAgICAgICAgICAgICAgcmVtb3RlLWVuZHBvaW50ID0gPCZkcF9p
bl92b3BiPjsKPiAgICAgICAgICAgfTsKPiB9Owo+Cj4gaGVyZSwgSERNSSBpbnRlcmZhY2UgaGFz
IGVuZHBvaW50IDEgaW4gcmszMjg4IGFuZCAyIGluIHJrMzM5OS4KPgo+IFRoZSByb2NrY2hpcCB2
b3AgZHJpdmVyIG9mdGVuIGRlcGVuZHMgb24gdGhpcyBkZXRlcm1pbmVkIGVuZHBvaW50Cj4gbnVt
YmVyIGFuZCBzdG9yZWQgaW4gdm9wX21vZGUuIFNvIGJhc2VkIG9uIHRoaXMgdm9wX21vZGUgdGhl
IGJwcAo+IGFuZCBwaW4gcG9sYXJpdHkgd291bGQgY29uZmlndXJlIG9uIGRldGVjdGVkIGRpc3Bs
YXkgaW50ZXJmYWNlLgo+Cj4gU2luY2UsIHRoZSBleGlzdGluZyBkcml2ZXIgdXNpbmcgcmszMjg4
IHZvcCBtb2RlIHNldHRpbmdzIGVuYWJsaW5nCj4gdGhlIHNhbWUgd2lsbCByZXN1bHQgd3Jvbmcg
ZGlzcGxheSBpbnRlcmZhY2UgY29uZmlndXJhdGlvbiBmb3IgcmszMzk5Lgo+Cj4gQWRkIHRoZSBw
YXRjaCBmb3IgZml4aW5nIHRoZXNlIHZvcCBtb2RlcyBmb3IgcmszMzk5Lgo+Cj4gU2lnbmVkLW9m
Zi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+CgoKClJldmlld2Vk
LWJ5OiBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLAotIEtl
dmVyCj4gLS0tCj4gICBhcmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3ZvcF9yazMy
ODguaCB8IDExICsrKysrKysrKysrCj4gICBkcml2ZXJzL3ZpZGVvL3JvY2tjaGlwL3JrMzM5OV92
b3AuYyAgICAgICAgICAgICB8ICAyIC0tCj4gICBkcml2ZXJzL3ZpZGVvL3JvY2tjaGlwL3JrX3Zv
cC5jICAgICAgICAgICAgICAgICB8ICA0ICsrKysKPiAgIDMgZmlsZXMgY2hhbmdlZCwgMTUgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9pbmNs
dWRlL2FzbS9hcmNoLXJvY2tjaGlwL3ZvcF9yazMyODguaCBiL2FyY2gvYXJtL2luY2x1ZGUvYXNt
L2FyY2gtcm9ja2NoaXAvdm9wX3JrMzI4OC5oCj4gaW5kZXggODM5ODI0OTUwOS4uODcyYTE1OGI3
MSAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3ZvcF9y
azMyODguaAo+ICsrKyBiL2FyY2gvYXJtL2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvdm9wX3Jr
MzI4OC5oCj4gQEAgLTg1LDYgKzg1LDE2IEBAIGVudW0gewo+ICAgCUxCX1JHQl8xMjgwWDggPSAw
eDUKPiAgIH07Cj4gICAKPiArI2lmIGRlZmluZWQoQ09ORklHX1JPQ0tDSElQX1JLMzM5OSkKPiAr
ZW51bSB2b3BfbW9kZXMgewo+ICsJVk9QX01PREVfRURQID0gMCwKPiArCVZPUF9NT0RFX01JUEks
Cj4gKwlWT1BfTU9ERV9IRE1JLAo+ICsJVk9QX01PREVfTUlQSTEsCj4gKwlWT1BfTU9ERV9EUCwK
PiArCVZPUF9NT0RFX05PTkUsCj4gK307Cj4gKyNlbHNlCj4gICBlbnVtIHZvcF9tb2RlcyB7Cj4g
ICAJVk9QX01PREVfRURQID0gMCwKPiAgIAlWT1BfTU9ERV9IRE1JLAo+IEBAIC05NCw2ICsxMDQs
NyBAQCBlbnVtIHZvcF9tb2RlcyB7Cj4gICAJVk9QX01PREVfQVVUT19ERVRFQ1QsCj4gICAJVk9Q
X01PREVfVU5LTk9XTiwKPiAgIH07Cj4gKyNlbmRpZgo+ICAgCj4gICAvKiBWT1BfVkVSU0lPTl9J
TkZPICovCj4gICAjZGVmaW5lIE1fRlBHQV9WRVJTSU9OICgweGZmZmYgPDwgMTYpCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvdmlkZW8vcm9ja2NoaXAvcmszMzk5X3ZvcC5jIGIvZHJpdmVycy92aWRl
by9yb2NrY2hpcC9yazMzOTlfdm9wLmMKPiBpbmRleCA4MWMxMjJkN2E5Li4xZDViMzkzMWE2IDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvdmlkZW8vcm9ja2NoaXAvcmszMzk5X3ZvcC5jCj4gKysrIGIv
ZHJpdmVycy92aWRlby9yb2NrY2hpcC9yazMzOTlfdm9wLmMKPiBAQCAtNDUsOCArNDUsNiBAQCBz
dGF0aWMgdm9pZCByazMzOTlfc2V0X3Bpbl9wb2xhcml0eShzdHJ1Y3QgdWRldmljZSAqZGV2LAo+
ICAgCQkJCVZfUkszMzk5X0RTUF9NSVBJX1BPTChwb2xhcml0eSkpOwo+ICAgCQlicmVhazsKPiAg
IAo+IC0JY2FzZSBWT1BfTU9ERV9MVkRTOgo+IC0JCS8qIFRoZSBSSzMzOTkgaGFzIG5laXRoZXIg
cGFyYWxsZWwgUkdCIG5vciBMVkRTIG91dHB1dC4gKi8KPiAgIAlkZWZhdWx0Ogo+ICAgCQlkZWJ1
ZygiJXM6IHVuc3VwcG9ydGVkIG91dHB1dCBtb2RlICV4XG4iLCBfX2Z1bmNfXywgbW9kZSk7Cj4g
ICAJfQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3ZpZGVvL3JvY2tjaGlwL3JrX3ZvcC5jIGIvZHJp
dmVycy92aWRlby9yb2NrY2hpcC9ya192b3AuYwo+IGluZGV4IGU5MWQ0ZGZhN2YuLmUxYmQ2NTZi
ZWUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy92aWRlby9yb2NrY2hpcC9ya192b3AuYwo+ICsrKyBi
L2RyaXZlcnMvdmlkZW8vcm9ja2NoaXAvcmtfdm9wLmMKPiBAQCAtMTE4LDEwICsxMTgsMTIgQEAg
c3RhdGljIHZvaWQgcmt2b3BfZW5hYmxlX291dHB1dChzdHJ1Y3QgdWRldmljZSAqZGV2LCBlbnVt
IHZvcF9tb2RlcyBtb2RlKQo+ICAgCQkJCVZfRURQX09VVF9FTigxKSk7Cj4gICAJCWJyZWFrOwo+
ICAgCj4gKyNpZiBkZWZpbmVkKENPTkZJR19ST0NLQ0hJUF9SSzMyODgpCj4gICAJY2FzZSBWT1Bf
TU9ERV9MVkRTOgo+ICAgCQljbHJzZXRiaXRzX2xlMzIoJnJlZ3MtPnN5c19jdHJsLCBNX0FMTF9P
VVRfRU4sCj4gICAJCQkJVl9SR0JfT1VUX0VOKDEpKTsKPiAgIAkJYnJlYWs7Cj4gKyNlbmRpZgo+
ICAgCj4gICAJY2FzZSBWT1BfTU9ERV9NSVBJOgo+ICAgCQljbHJzZXRiaXRzX2xlMzIoJnJlZ3Mt
PnN5c19jdHJsLCBNX0FMTF9PVVRfRU4sCj4gQEAgLTMxMyw3ICszMTUsOSBAQCBzdGF0aWMgaW50
IHJrX2Rpc3BsYXlfaW5pdChzdHJ1Y3QgdWRldmljZSAqZGV2LCB1bG9uZyBmYmJhc2UsIG9mbm9k
ZSBlcF9ub2RlKQo+ICAgCS8qIFNldCBiaXR3aWR0aCBmb3Igdm9wIGRpc3BsYXkgYWNjb3JkaW5n
IHRvIHZvcCBtb2RlICovCj4gICAJc3dpdGNoICh2b3BfaWQpIHsKPiAgIAljYXNlIFZPUF9NT0RF
X0VEUDoKPiArI2lmIGRlZmluZWQoQ09ORklHX1JPQ0tDSElQX1JLMzI4OCkKPiAgIAljYXNlIFZP
UF9NT0RFX0xWRFM6Cj4gKyNlbmRpZgo+ICAgCQlsMmJwcCA9IFZJREVPX0JQUDE2Owo+ICAgCQli
cmVhazsKPiAgIAljYXNlIFZPUF9NT0RFX0hETUk6CgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
