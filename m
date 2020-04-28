Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 815F91BC0F3
	for <lists+linux-rockchip@lfdr.de>; Tue, 28 Apr 2020 16:15:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VxYhlBlE+7nHQozQJE2/eW/Lk3TM5RBjU1AsRbyuNcE=; b=BKwNIj5OszxDloF6tIUEmy326
	dgf3GtEwqjkq8BYsdqfU7IIRUTsan4qEoOJOqN1pRWmiFB5BwdsXnumOH8RzmDG42Z5oj7IRMVeYx
	upSx4q9QtIvxDjjxxMk5HB0dar31/LR21xTOsAJzXEROd0zBRMiEbc8ikn97Tv/ddpK9d+K25a2AP
	p4Laux1ol5d5Mu7bW2wEO3oCeFem6ifdOENGMKjIhv/a8SqmbUgpDcjOn4s8+sOcHLnb2t5dTI4tP
	JcSNkG7JbtXYoaQ59IXEFUdZjkWj3bHYQ32A3IIfd2JOAKRpEoTTXumuKMsbsUAP/X6eNJHCXVhrj
	hSusSTR1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTR15-0001Fo-Hr; Tue, 28 Apr 2020 14:15:19 +0000
Received: from regular1.263xmail.com ([211.150.70.204])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTR0z-00082x-Ut
 for linux-rockchip@lists.infradead.org; Tue, 28 Apr 2020 14:15:15 +0000
Received: from localhost (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id 886A125B;
 Tue, 28 Apr 2020 22:15:05 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.0.110] (unknown [112.49.233.123])
 by smtp.263.net (postfix) whith ESMTP id
 P17829T139805975361280S1588083304330651_; 
 Tue, 28 Apr 2020 22:15:05 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <eba81ded4969c0435c0008f71e80e24b>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 112.49.233.123
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v3] rockchip: Enable SF distro bootcmd
To: Jagan Teki <jagan@amarulasolutions.com>, Tom Rini <trini@konsulko.com>,
 Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
References: <20200428100428.19739-1-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <085b994f-7cc3-036b-c3d1-8c908c1a525a@rock-chips.com>
Date: Tue, 28 Apr 2020 22:15:03 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200428100428.19739-1-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_071514_482960_3BCE2982 
X-CRM114-Status: GOOD (  15.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.204 listed in list.dnswl.org]
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, sunil@amarulasolutions.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMjAvNC8yOCDkuIvljYg2OjA0LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEVuYWJsZSBTUEkg
Zmxhc2goU0YpIGRpc3RybyBib290IGNvbW1hbmQgaW4gUm9ja2NoaXAuCj4KPiBUaGlzIGRpc3Ry
byBib290IHdpbGwgcmVhZCB0aGUgYm9vdCBzY3JpcHQgYXQgc3BlY2lmaWMKPiBsb2NhdGlvbiBh
dCB0aGUgZmxhc2ggYW5kIHN0YXJ0IHNvdXJjaW5nIHRoZSBzYW1lLgo+Cj4gSW5jbHVkZWQgdGhl
IFNGIGRldmljZSBhdCB0aGUgbGFzdCBvZiB0aGUgdGFyZ2V0IGRldmljZXMKPiBsaXN0IHNpbmNl
IGFsbCB0aGUgcmVzdCBvZiB0aGUgZGV2aWNlcyBvbiB0aGUgbGlzdCBoYXZlCj4gbW9yZSBwb3Nz
aWJpbGl0eSB0byBib290IHRoZSBkaXN0cmlidXRpb24gZHVlIHRvIHRoZQo+IHNpemUgb2YgdGhl
IFNQSSBmbGFzaCBpcyBjb25jZXJuLgo+Cj4gQ2M6IFRvbSBSaW5pIDx0cmluaUBrb25zdWxrby5j
b20+Cj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5j
b20+CgoKUmV2aWV3ZWQtYnk6IEtldmVyIFlhbmcgPGtldmVyLnlhbmdAcm9jay1jaGlwcy5jb20+
CgpUaGFua3MsCi0gS2V2ZXIKPiAtLS0KPiBDaGFuZ2VzIGZvciB2MzoKPiAtIERvbid0IHVzZSBT
RiBkaXN0cm8gcHgzMAo+Cj4gICBpbmNsdWRlL2NvbmZpZ3MvcmszMzk5X2NvbW1vbi5oICAgfCAg
MSArCj4gICBpbmNsdWRlL2NvbmZpZ3Mvcm9ja2NoaXAtY29tbW9uLmggfCAxNSArKysrKysrKysr
KysrKysKPiAgIDIgZmlsZXMgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdp
dCBhL2luY2x1ZGUvY29uZmlncy9yazMzOTlfY29tbW9uLmggYi9pbmNsdWRlL2NvbmZpZ3Mvcmsz
Mzk5X2NvbW1vbi5oCj4gaW5kZXggMDFhOTE3NGJkMi4uZjBhZTZlNjdhNyAxMDA2NDQKPiAtLS0g
YS9pbmNsdWRlL2NvbmZpZ3MvcmszMzk5X2NvbW1vbi5oCj4gKysrIGIvaW5jbHVkZS9jb25maWdz
L3JrMzM5OV9jb21tb24uaAo+IEBAIC02MCw2ICs2MCw3IEBACj4gICAjZW5kaWYKPiAgIAo+ICAg
I2luY2x1ZGUgPGNvbmZpZ19kaXN0cm9fYm9vdGNtZC5oPgo+ICsjaW5jbHVkZSA8ZW52aXJvbm1l
bnQvZGlzdHJvL3NmLmg+Cj4gICAjZGVmaW5lIENPTkZJR19FWFRSQV9FTlZfU0VUVElOR1MgXAo+
ICAgCUVOVl9NRU1fTEFZT1VUX1NFVFRJTkdTIFwKPiAgIAkiZmR0ZmlsZT0iIENPTkZJR19ERUZB
VUxUX0ZEVF9GSUxFICJcMCIgXAo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2NvbmZpZ3Mvcm9ja2No
aXAtY29tbW9uLmggYi9pbmNsdWRlL2NvbmZpZ3Mvcm9ja2NoaXAtY29tbW9uLmgKPiBpbmRleCBi
NTVlMDlhOWNhLi4yZDVkMjk4NDlkIDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvY29uZmlncy9yb2Nr
Y2hpcC1jb21tb24uaAo+ICsrKyBiL2luY2x1ZGUvY29uZmlncy9yb2NrY2hpcC1jb21tb24uaAo+
IEBAIC00MSwxMSArNDEsMjYgQEAKPiAgIAkjZGVmaW5lIEJPT1RfVEFSR0VUX0RIQ1AoZnVuYykK
PiAgICNlbmRpZgo+ICAgCj4gKyNpZiBDT05GSUdfSVNfRU5BQkxFRChDTURfU0YpCj4gKwkjZGVm
aW5lIEJPT1RfVEFSR0VUX1NGKGZ1bmMpCWZ1bmMoU0YsIHNmLCAwKQo+ICsjZWxzZQo+ICsJI2Rl
ZmluZSBCT09UX1RBUkdFVF9TRihmdW5jKQo+ICsjZW5kaWYKPiArCj4gKyNpZm5kZWYgQ09ORklH
X1JPQ0tDSElQX1BYMzAKPiArI2RlZmluZSBCT09UX1RBUkdFVF9ERVZJQ0VTKGZ1bmMpIFwKPiAr
CUJPT1RfVEFSR0VUX01NQyhmdW5jKSBcCj4gKwlCT09UX1RBUkdFVF9VU0IoZnVuYykgXAo+ICsJ
Qk9PVF9UQVJHRVRfUFhFKGZ1bmMpIFwKPiArCUJPT1RfVEFSR0VUX0RIQ1AoZnVuYykgXAo+ICsJ
Qk9PVF9UQVJHRVRfU0YoZnVuYykKPiArI2Vsc2UKPiAgICNkZWZpbmUgQk9PVF9UQVJHRVRfREVW
SUNFUyhmdW5jKSBcCj4gICAJQk9PVF9UQVJHRVRfTU1DKGZ1bmMpIFwKPiAgIAlCT09UX1RBUkdF
VF9VU0IoZnVuYykgXAo+ICAgCUJPT1RfVEFSR0VUX1BYRShmdW5jKSBcCj4gICAJQk9PVF9UQVJH
RVRfREhDUChmdW5jKQo+ICsjZW5kaWYKPiAgIAo+ICAgI2lmZGVmIENPTkZJR19BUk02NAo+ICAg
I2RlZmluZSBST09UX1VVSUQgIkI5MjFCMDQ1LTFERjAtNDFDMy1BRjQ0LTRDNkYyODBEM0ZBRTtc
MCIKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
