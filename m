Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9BBF6A91A
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 15:03:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8pzeM37M44fHB8UIZkYduODdw27tIShsbu0Ad9FU0EA=; b=QY721SiPMoSJYlmGjVovtZMK3
	zIZdbWwvxVVTkKiCZuZMsMRxvI5KJaPlXcLvv3wgGLK+szaRdwLwagsIF2jgYdKkJfCyvkJcb0Rmt
	bWPIEkcEErKfkIG7bNJEoQ0+WK5vGN7DhH7BomLEyPbSTjz3QDatnUTTAzwmceY7JUYjwirFrHes7
	+I7rOY/pheTjDYKNPq9w1PCgMPwdD4AvDOCRJl4kJmschVF+P3T95PLG61gKAH63m4JMZsdGNN2dj
	9gLMxjZQhX1VBOgm0JAEnAxKQ0Dt3hGLjQSFV+CB//SQBajWGBT/5GdUwiIOMZhvzfRz5Fn5cu67A
	NZtrSaTVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnN7X-0006Vn-Sp; Tue, 16 Jul 2019 13:03:51 +0000
Received: from regular1.263xmail.com ([211.150.70.202])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnN7V-0006VG-8e
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 13:03:50 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.252])
 by regular1.263xmail.com (Postfix) with ESMTP id CCDBC281;
 Tue, 16 Jul 2019 21:03:45 +0800 (CST)
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
 P29801T140087641753344S1563282214766641_; 
 Tue, 16 Jul 2019 21:03:43 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <24c3d8c36f8d1a909a06cd3185a5e5ed>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-amarula@amarulasolutions.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v3 11/57] ram: rk3399: Add bw enc macro
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 YouMin Chen <cym@rock-chips.com>, u-boot@lists.denx.de
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
 <20190716115745.12585-12-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <9a9f1c76-0b3d-9073-9b2b-23938350a7ba@rock-chips.com>
Date: Tue, 16 Jul 2019 21:03:35 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716115745.12585-12-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_060349_515773_FCFB58B6 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.150.70.202 listed in list.dnswl.org]
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

Ck9uIDIwMTkvNy8xNiDkuIvljYg3OjU2LCBKYWdhbiBUZWtpIHdyb3RlOgo+IEFkZCBzaW1wbGlm
aWVkIGFuZCBtZWFuaW5nZnVsIG1hY3JvIGZvciBidy4KPgo+IFNpZ25lZC1vZmYtYnk6IEphZ2Fu
IFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlvbnMuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFlvdU1p
biBDaGVuIDxjeW1Acm9jay1jaGlwcy5jb20+CgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8S2V2
ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKIMKgLSBLZXZlcgo+IC0tLQo+ICAgYXJj
aC9hcm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJhbV9jb21tb24uaCB8IDEgKwo+ICAg
ZHJpdmVycy9yYW0vcm9ja2NoaXAvc2RyYW1fcmszMzk5LmMgICAgICAgICAgICAgICB8IDMgKy0t
Cj4gICAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+
IGRpZmYgLS1naXQgYS9hcmNoL2FybS9pbmNsdWRlL2FzbS9hcmNoLXJvY2tjaGlwL3NkcmFtX2Nv
bW1vbi5oIGIvYXJjaC9hcm0vaW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJhbV9jb21tb24u
aAo+IGluZGV4IDU3OGRiOTAyNDEuLjQ3NDkyMzMyMjYgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0v
aW5jbHVkZS9hc20vYXJjaC1yb2NrY2hpcC9zZHJhbV9jb21tb24uaAo+ICsrKyBiL2FyY2gvYXJt
L2luY2x1ZGUvYXNtL2FyY2gtcm9ja2NoaXAvc2RyYW1fY29tbW9uLmgKPiBAQCAtOTgsNiArOTgs
NyBAQCBzdHJ1Y3Qgc2RyYW1fYmFzZV9wYXJhbXMgewo+ICAgCQkJCQlTWVNfUkVHX0NTMV9ST1df
U0hJRlQoY2gpKQo+ICAgI2RlZmluZSBTWVNfUkVHX0JXX1NISUZUKGNoKQkJKDIgKyAoY2gpICog
MTYpCj4gICAjZGVmaW5lIFNZU19SRUdfQldfTUFTSwkJCTMKPiArI2RlZmluZSBTWVNfUkVHX0VO
Q19CVyhuLCBjaCkJCSgoMiA+PiAobikpIDw8IFNZU19SRUdfQldfU0hJRlQoY2gpKQo+ICAgI2Rl
ZmluZSBTWVNfUkVHX0RCV19TSElGVChjaCkJCSgoY2gpICogMTYpCj4gICAjZGVmaW5lIFNZU19S
RUdfREJXX01BU0sJCTMKPiAgICNkZWZpbmUgU1lTX1JFR19FTkNfREJXKG4sIGNoKQkJKCgyID4+
IChuKSkgPDwgU1lTX1JFR19EQldfU0hJRlQoY2gpKQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3Jh
bS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYyBiL2RyaXZlcnMvcmFtL3JvY2tjaGlwL3NkcmFtX3Jr
MzM5OS5jCj4gaW5kZXggYTgzNzA5ZjI3MS4uMmQzZjBmNjkwMiAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL3JhbS9yb2NrY2hpcC9zZHJhbV9yazMzOTkuYwo+ICsrKyBiL2RyaXZlcnMvcmFtL3JvY2tj
aGlwL3NkcmFtX3JrMzM5OS5jCj4gQEAgLTEwOTYsOCArMTA5Niw3IEBAIHN0YXRpYyB2b2lkIGRy
YW1fYWxsX2NvbmZpZyhzdHJ1Y3QgZHJhbV9pbmZvICpkcmFtLAo+ICAgCQlzeXNfcmVnIHw9IFNZ
U19SRUdfRU5DX0JLKGluZm8tPmNhcF9pbmZvLmJrLCBjaGFubmVsKTsKPiAgIAkJc3lzX3JlZyB8
PSBTWVNfUkVHX0VOQ19DUzBfUk9XKGluZm8tPmNhcF9pbmZvLmNzMF9yb3csIGNoYW5uZWwpOwo+
ICAgCQlzeXNfcmVnIHw9IFNZU19SRUdfRU5DX0NTMV9ST1coaW5mby0+Y2FwX2luZm8uY3MxX3Jv
dywgY2hhbm5lbCk7Cj4gLQkJc3lzX3JlZyB8PSAoMiA+PiBpbmZvLT5jYXBfaW5mby5idykgPDwK
PiAtCQkJICAgU1lTX1JFR19CV19TSElGVChjaGFubmVsKTsKPiArCQlzeXNfcmVnIHw9IFNZU19S
RUdfRU5DX0JXKGluZm8tPmNhcF9pbmZvLmJ3LCBjaGFubmVsKTsKPiAgIAkJc3lzX3JlZyB8PSBT
WVNfUkVHX0VOQ19EQlcoaW5mby0+Y2FwX2luZm8uZGJ3LCBjaGFubmVsKTsKPiAgIAo+ICAgCQlk
ZHJfbXNjaF9yZWdzID0gZHJhbS0+Y2hhbltjaGFubmVsXS5tc2NoOwoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
