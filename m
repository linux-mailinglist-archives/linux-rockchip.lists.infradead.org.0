Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C35426A942
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:12:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lmVcFfHH3FLxIIH/wfHyrUULXwfdEXUSPtsOmRdxXtQ=; b=rrOqztRGulBi0nCcgDd+214qi
	+2Nmq6DYzY6MuYU8W5P2He4sw8DoDNMDzcX0b1tbrRFxLCSy/jswYuq5pW+PupjJ/tI9vrA4D7ZG+
	gFv2eU+CwkWQnGFGrF92Q5xPSpxI0Ws5aBylMYOIHp6QO/m+vIKr8ka8nLXjUiNaKaBZVQ83bUdnE
	DYMNF7iH+JWjWtUALRPGejZq9DYMHzVsFnuEi2PGaVeQCLvF/fC4pKPFLO9XtxI4NBxlv9nOPIk2f
	NGWtXtN7ToklLbrahQMuV0+bu8Rrw0fzDzXS7ijfDoOOJlvZIG3TgxbMko0FMNyRBhDsb7usuRYFB
	jkw9M+HOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnNFO-00015e-4s; Tue, 16 Jul 2019 13:11:58 +0000
Received: from regular1.263xmail.com ([211.150.70.200])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnNFK-00014d-Sc
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:11:56 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.173])
 by regular1.263xmail.com (Postfix) with ESMTP id 1E44A382;
 Tue, 16 Jul 2019 21:11:53 +0800 (CST)
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
 P25752T140261906368256S1563282710286532_; 
 Tue, 16 Jul 2019 21:11:52 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <df9bdf3d311119d55d67d0f5cc28f005>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 22/57] ram: rk3399: Add lpddr4 rank mask for wdql
 training
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-23-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <6043b64c-b4d1-8a2d-f3dc-7e683ef75aed@rock-chips.com>
Date: Tue, 16 Jul 2019 21:11:49 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-23-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_061155_156506_9F118211 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.200 listed in list.dnswl.org]
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU3LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCByYW5rX21h
c2sgYmFzZWQgb24gdGhlIHJhbmsgbnVtYmVyIGZvciBscGRkcjQuCj4KPiBUaGlzIHdvdWxkIGtl
ZXAgdGhlIHdkcWwgZGF0YSB0cmFpbmluZyBsb29wIGJhc2VkIG9uIHRoZQo+IGRlc2lyZWQgcmFu
ayBtYXNrIHZhbHVlIGluc3RlYWQgb2YgbG9vcGluZyBmb3IgYWxsIHZhbHVlcy4KPgo+IFNpZ25l
ZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+IFNpZ25l
ZC1vZmYtYnk6IFlvdU1pbiBDaGVuIDxjeW1Acm9jay1jaGlwcy5jb20+CgpSZXZpZXdlZC1ieTog
S2V2ZXIgWWFuZyA8S2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKIMKgLSBLZXZl
cgo+IC0tLQo+ICAgZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMgfCA1ICsrKyst
Cj4gICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMgYi9kcml2ZXJz
L3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+IGluZGV4IDhlY2MzYTFiNzQuLjcxMTQ3NzE4
OGUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMKPiAr
KysgYi9kcml2ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+IEBAIC05MjUsNyArOTI1
LDEwIEBAIHN0YXRpYyBpbnQgZGF0YV90cmFpbmluZ193ZHFsKGNvbnN0IHN0cnVjdCBjaGFuX2lu
Zm8gKmNoYW4sIHUzMiBjaGFubmVsLAo+ICAgCS8qIGNsZWFyIGludGVycnVwdCxQSV8xNzUgUElf
SU5UX0FDSzpXUjowOjE3ICovCj4gICAJd3JpdGVsKDB4MDAwMDNmN2MsICgmZGVuYWxpX3BpWzE3
NV0pKTsKPiAgIAo+IC0JcmFua19tYXNrID0gKHJhbmsgPT0gMSkgPyAweDEgOiAweDM7Cj4gKwlp
ZiAocGFyYW1zLT5iYXNlLmRyYW10eXBlID09IExQRERSNCkKPiArCQlyYW5rX21hc2sgPSAocmFu
ayA9PSAxKSA/IDB4NSA6IDB4ZjsKPiArCWVsc2UKPiArCQlyYW5rX21hc2sgPSAocmFuayA9PSAx
KSA/IDB4MSA6IDB4MzsKPiAgIAo+ICAgCWZvciAoaSA9IDA7IGkgPCA0OyBpKyspIHsKPiAgIAkJ
aWYgKCEocmFua19tYXNrICYgKDEgPDwgaSkpKQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
