Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAAF71D43CC
	for <lists+linux-rockchip@lfdr.de>; Fri, 15 May 2020 04:54:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O6HMV0rR50cwrWZqKIUHgKrEhYhJILnxXqB/f8ojb4E=; b=lpLv0rDUqkNKyNvfQvKKCT1S3
	uCXu3BALJf3wPkSpTrV2Z3F9LaEZ9d99F7hSPsBJkMxggL3fZDgDAsDTS6s1xFZXb+dBxw8E29EZT
	10SAVaoiVDtMz0nwAY3VOhVUxAF32QoRs1a0wuVBCMZ4r13yr0JLrGHFpaj1mRvj74b4e3PtVVgwr
	X5USNHXVUchYAp6g0lA3zS+VoaZDuOMXekJjEss7t4pc0StRLOAV6wMEqyVKZDxSM2nzhkfKT3rGK
	rmQUUhWEbVL5GYl25yxMU3rw5aRmbCU49MPuP0fnDawF32oeuhDs6orWB4a8xnGea9+endMqMHxOY
	uD08/6X6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZQUY-0003kW-4J; Fri, 15 May 2020 02:54:30 +0000
Received: from regular1.263xmail.com ([211.150.70.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZQUT-0003jN-Ao
 for linux-rockchip@lists.infradead.org; Fri, 15 May 2020 02:54:28 +0000
Received: from localhost (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id 515A02AF;
 Fri, 15 May 2020 10:54:23 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P7435T140153009956608S1589511254786957_; 
 Fri, 15 May 2020 10:54:23 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <4929534cb3f84c80ce26b72c20d54b41>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: tom@radxa.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v3 6/6] rockchip: Enable PCIe/M.2 on rock960 board
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20200509165624.20791-1-jagan@amarulasolutions.com>
 <20200509165624.20791-7-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <10d8fb00-4e90-71c0-9020-d2b72e38fd07@rock-chips.com>
Date: Fri, 15 May 2020 10:54:13 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200509165624.20791-7-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_195425_871968_2641D3F8 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.198 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [211.150.70.198 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: patrick@blueri.se, u-boot@lists.denx.de, Tom Cubie <tom@radxa.com>,
 shawn.lin@rock-chips.com, linux-rockchip@lists.infradead.org,
 sunil@amarulasolutions.com, linux-amarula@amarulasolutions.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvNS8xMCDkuIrljYgxMjo1NiwgSmFnYW4gVGVraSB3cm90ZToKPiBEdWUgdG8gYm9h
cmQgbGltaXRhdGlvbiBzb21lIFNTRCdzIHdvdWxkIHdvcmsKPiBvbiByb2NrOTYwIFBDSWUgTS4y
IG9ubHkgd2l0aCAxLjhWIElPIGRvbWFpbi4KPgo+IFNvLCB0aGlzIHBhdGNoIGVuYWJsZXMgZ3Jm
IGlvX3NlbCBleHBsaWNpdGx5IHRvCj4gbWFrZSBQQ0llL00uMiB0byB3b3JrLgo+Cj4gQ2M6IFRv
bSBDdWJpZSA8dG9tQHJhZHhhLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKYWdhbiBUZWtpIDxqYWdh
bkBhbWFydWxhc29sdXRpb25zLmNvbT4KPiBBY2tlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFt
IDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4KClJldmlld2VkLWJ5OiBLZXZlciBZ
YW5nIDxrZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgoKVGhhbmtzLAotIEtldmVyCj4gLS0tCj4g
Q2hhbmdlcyBmb3IgdjM6Cj4gLSBjb2xsZWN0IG1hbmkgYS1iCj4gLSBhZGQgY29tbWVudHMKPgo+
ICAgYm9hcmQvdmFtcnMvcm9jazk2MF9yazMzOTkvcm9jazk2MC1yazMzOTkuYyB8IDIzICsrKysr
KysrKysrKysrKysrKysrKwo+ICAgY29uZmlncy9yb2NrOTYwLXJrMzM5OV9kZWZjb25maWcgICAg
ICAgICAgICB8ICA1ICsrKysrCj4gICAyIGZpbGVzIGNoYW5nZWQsIDI4IGluc2VydGlvbnMoKykK
Pgo+IGRpZmYgLS1naXQgYS9ib2FyZC92YW1ycy9yb2NrOTYwX3JrMzM5OS9yb2NrOTYwLXJrMzM5
OS5jIGIvYm9hcmQvdmFtcnMvcm9jazk2MF9yazMzOTkvcm9jazk2MC1yazMzOTkuYwo+IGluZGV4
IDY4YTEyN2I5YWMuLmVmMWViMmQwYjcgMTAwNjQ0Cj4gLS0tIGEvYm9hcmQvdmFtcnMvcm9jazk2
MF9yazMzOTkvcm9jazk2MC1yazMzOTkuYwo+ICsrKyBiL2JvYXJkL3ZhbXJzL3JvY2s5NjBfcmsz
Mzk5L3JvY2s5NjAtcmszMzk5LmMKPiBAQCAtMiwzICsyLDI2IEBACj4gICAvKgo+ICAgICogQ29w
eXJpZ2h0IChDKSAyMDE4IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNp
dmFtQGxpbmFyby5vcmc+Cj4gICAgKi8KPiArCj4gKyNpbmNsdWRlIDxjb21tb24uaD4KPiArI2lu
Y2x1ZGUgPHN5c2Nvbi5oPgo+ICsjaW5jbHVkZSA8YXNtL2lvLmg+Cj4gKyNpbmNsdWRlIDxhc20v
YXJjaC1yb2NrY2hpcC9jbG9jay5oPgo+ICsjaW5jbHVkZSA8YXNtL2FyY2gtcm9ja2NoaXAvZ3Jm
X3JrMzM5OS5oPgo+ICsjaW5jbHVkZSA8YXNtL2FyY2gtcm9ja2NoaXAvaGFyZHdhcmUuaD4KPiAr
Cj4gKyNpZmRlZiBDT05GSUdfTUlTQ19JTklUX1IKPiAraW50IG1pc2NfaW5pdF9yKHZvaWQpCj4g
K3sKPiArCXN0cnVjdCByazMzOTlfZ3JmX3JlZ3MgKmdyZiA9Cj4gKwkgICAgc3lzY29uX2dldF9m
aXJzdF9yYW5nZShST0NLQ0hJUF9TWVNDT05fR1JGKTsKPiArCj4gKwkvKioKPiArCSAqIFNvbWUg
U1NEJ3MgdG8gd29yayBvbiByb2NrOTYwIHdvdWxkIHJlcXVpcmUgZXhwbGljaXQKPiArCSAqIGRv
bWFpbiB2b2x0YWdlIGNoYW5nZSwgc28gQlQ1NjUgaXMgaW4gMS44diBkb21haW4KPiArCSAqLwo+
ICsJcmtfc2V0cmVnKCZncmYtPmlvX3ZzZWwsIEJJVCgwKSk7Cj4gKwo+ICsJcmV0dXJuIDA7Cj4g
K30KPiArI2VuZGlmCj4gZGlmZiAtLWdpdCBhL2NvbmZpZ3Mvcm9jazk2MC1yazMzOTlfZGVmY29u
ZmlnIGIvY29uZmlncy9yb2NrOTYwLXJrMzM5OV9kZWZjb25maWcKPiBpbmRleCAwNDVkOTg5YTE5
Li42NDUxN2Y5NjIzIDEwMDY0NAo+IC0tLSBhL2NvbmZpZ3Mvcm9jazk2MC1yazMzOTlfZGVmY29u
ZmlnCj4gKysrIGIvY29uZmlncy9yb2NrOTYwLXJrMzM5OV9kZWZjb25maWcKPiBAQCAtOSw2ICs5
LDcgQEAgQ09ORklHX0RFQlVHX1VBUlRfQkFTRT0weEZGMUEwMDAwCj4gICBDT05GSUdfREVCVUdf
VUFSVF9DTE9DSz0yNDAwMDAwMAo+ICAgQ09ORklHX0RFQlVHX1VBUlQ9eQo+ICAgQ09ORklHX0RF
RkFVTFRfRkRUX0ZJTEU9InJvY2tjaGlwL3JrMzM5OS1yb2NrOTYwLmR0YiIKPiArQ09ORklHX01J
U0NfSU5JVF9SPXkKPiAgIENPTkZJR19ESVNQTEFZX0JPQVJESU5GT19MQVRFPXkKPiAgICMgQ09O
RklHX1NQTF9SQVdfSU1BR0VfU1VQUE9SVCBpcyBub3Qgc2V0Cj4gICBDT05GSUdfU1BMX1NUQUNL
X1I9eQo+IEBAIC0xOSw2ICsyMCw3IEBAIENPTkZJR19DTURfQk9PVFo9eQo+ICAgQ09ORklHX0NN
RF9HUFQ9eQo+ICAgQ09ORklHX0NNRF9NTUM9eQo+ICAgQ09ORklHX0NNRF9VU0I9eQo+ICtDT05G
SUdfQ01EX1BDST15Cj4gICAjIENPTkZJR19DTURfU0VURVhQUiBpcyBub3Qgc2V0Cj4gICBDT05G
SUdfQ01EX1RJTUU9eQo+ICAgQ09ORklHX0NNRF9QTUlDPXkKPiBAQCAtMzYsMTAgKzM4LDEzIEBA
IENPTkZJR19NTUNfU0RIQ0k9eQo+ICAgQ09ORklHX01NQ19TREhDSV9TRE1BPXkKPiAgIENPTkZJ
R19NTUNfU0RIQ0lfUk9DS0NISVA9eQo+ICAgQ09ORklHX0RNX0VUSD15Cj4gK0NPTkZJR19OVk1F
PXkKPiArQ09ORklHX1BDST15Cj4gICBDT05GSUdfUE1JQ19SSzhYWD15Cj4gICBDT05GSUdfUkVH
VUxBVE9SX1BXTT15Cj4gICBDT05GSUdfUkVHVUxBVE9SX1JLOFhYPXkKPiAgIENPTkZJR19QV01f
Uk9DS0NISVA9eQo+ICtDT05GSUdfRE1fUkVTRVQ9eQo+ICAgQ09ORklHX0JBVURSQVRFPTE1MDAw
MDAKPiAgIENPTkZJR19ERUJVR19VQVJUX1NISUZUPTIKPiAgIENPTkZJR19TWVNSRVNFVD15CgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
